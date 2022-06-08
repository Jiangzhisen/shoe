<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@page import= "java.io.*,java.util.*" %>
<%@page import= "javax.servlet.*,java.text.*" %>
<%@include file = "config.jsp" %>
<%
    if(con.isClosed()){
        out.println("建立連線失敗");
    }
    else{
        if(session.getAttribute("acct") != null){
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String cart_acct=String.valueOf(session.getAttribute("acct"));
            String address=request.getParameter("address");
            String method=request.getParameter("method");
            String remark=request.getParameter("remark");
            SimpleDateFormat setDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            String new_date = setDateFormat.format(Calendar.getInstance().getTime());

            sql="SELECT * FROM `member` WHERE `account`='"+cart_acct+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            rs.next();
            String name=rs.getString(3);

            sql="SELECT *, (`quantity` * `price`) FROM `shoppingcart` WHERE `account`='"+cart_acct+"'";
            ResultSet cartrs=con.createStatement().executeQuery(sql);
            
            
            while(cartrs.next()){
                String prodname=cartrs.getString(2);
                String qua=cartrs.getString(5);
                String tolpri=cartrs.getString(9);
                String size=cartrs.getString(7);
                String color=cartrs.getString(4);
                String picture=cartrs.getString(3);

                sql="INSERT order_record (`account`, `name`, `pname`, `picture`, `color`, `size`, `tolqua`, `tolpri`, `address`, `method`, `remark`, `Putdate`)";
                sql+="VALUES ('"+cart_acct+"', ";
                sql+="'"+name+"', ";
                sql+="'"+prodname+"', ";
                sql+="'"+picture+"', ";
                sql+="'"+color+"', ";
                sql+="'"+size+"', ";
                sql+="'"+qua+"', ";
                sql+="'"+tolpri+"', ";
                sql+="'"+address+"', ";
                sql+="'"+method+"', ";
                sql+="'"+remark+"', ";
                sql+="'"+new_date+"')";
                con.createStatement().execute(sql);

                sql="SELECT * FROM `product` WHERE `pname`='"+prodname+"'";
                ResultSet origrs=con.createStatement().executeQuery(sql);
                origrs.next();
                String origqua=origrs.getString(5);
                int originalqua=Integer.parseInt(origqua);
                int buyqua=Integer.parseInt(qua);
                int nowqua=originalqua-buyqua;

                sql="UPDATE `product` SET `quantity`='"+nowqua+"' WHERE `pname`='"+prodname+"'";
                con.createStatement().execute(sql);
            }


            sql="DELETE FROM `shoppingcart` WHERE `account`='"+cart_acct+"'";
            con.createStatement().execute(sql);

            con.close();
            out.println("<script language='javascript'>");
            out.println("alert('送出訂單成功 ! !');");
            out.println("window.location.href='index.jsp'");
            out.println("</script>");
        }
        else{
            con.close();
            out.println("<script language='javascript'>");
            out.println("alert('您尚未登入 ! !');");
            out.println("window.location.href='index.jsp'");
            out.println("</script>");
        }
    }



%>