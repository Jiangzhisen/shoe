<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "config.jsp" %>
<%
    if(con.isClosed()){
        out.println("連線建立失敗");
    }
    else{
        if(session.getAttribute("acct") != null){
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String product_id=request.getParameter("shoeid");
            sql="SELECT * FROM `product` WHERE `pid`='"+product_id+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            rs.next();
            String stracct=String.valueOf(session.getAttribute("acct"));
            String strname=rs.getString(2);
            String strpicture=rs.getString(3);
            String strcolor=rs.getString(7);
            String strqua=request.getParameter("buyqua");
            String strprice=rs.getString(6);


            sql="SELECT `pname`, `quantity` FROM `shoppingcart` WHERE `account`='"+stracct+"' AND `pname`='"+strname+"'";
            ResultSet cartrs=con.createStatement().executeQuery(sql);
            if(cartrs.next()){
                int cartqua=Integer.parseInt(cartrs.getString(2));
                int qua=Integer.parseInt(strqua);
                int tolqua=cartqua+qua;
                sql="UPDATE `shoppingcart` SET `quantity`='"+tolqua+"' WHERE `account`='"+stracct+"' AND `pname`='"+strname+"'";
                con.createStatement().execute(sql);
                con.close();
                response.sendRedirect("shoppingcar.jsp");
            }
            else{
                sql="INSERT shoppingcart (`account`, `pname`, `picture`, `color`, `quantity`, `price`, `size`, `total`) ";
                sql+="VALUES ('"+stracct+"', ";
                sql+="'"+strname+"', ";
                sql+="'"+strpicture+"', ";
                sql+="'"+strcolor+"', ";
                sql+="'"+strqua+"', ";
                sql+="'"+strprice+"', ";
                sql+="'26', ";
                sql+="'0')";

                con.createStatement().execute(sql);
                con.close();
                out.println("<script language='javascript'>");
                out.println("alert('商品加入購物車成功 ! !');");
                out.println("window.location.href='model.jsp'");
                out.println("</script>");
            }
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