<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
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
            java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

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

                sql="INSERT order_record (`account`, `name`, `pname`, `tolqua`, `tolpri`, `address`, `method`, `remark`, `Putdate`)";
                sql+="VALUES ('"+cart_acct+"', ";
                sql+="'"+name+"', ";
                sql+="'"+prodname+"', ";
                sql+="'"+qua+"', ";
                sql+="'"+tolpri+"', ";
                sql+="'"+address+"', ";
                sql+="'"+method+"', ";
                sql+="'"+remark+"', ";
                sql+="'"+new_date+"')";
                con.createStatement().execute(sql);
            }


            sql="DELETE FROM `shoppingcart` WHERE `account`='"+cart_acct+"'";
            con.createStatement().execute(sql);

            con.close();
            out.println("<h1>送出訂單成功，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }
        else{
            con.close();
            out.println("<h1>您尚未登入，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }
    }



%>