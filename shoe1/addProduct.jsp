<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "config.jsp" %>
<%
    if(con.isClosed()){
        out.println("建立連線失敗");
    }
    else{
        request.setCharacterEncoding("UTF-8");
        if(session.getAttribute("acct") != null){
            String pname=request.getParameter("pname");
            String color=request.getParameter("color");
            String category=request.getParameter("category");
            String size1=request.getParameter("size1");
            String size2=request.getParameter("size2");
            String size3=request.getParameter("size3");
            String size4=request.getParameter("size4");
            String intro=request.getParameter("intro");
            String price=request.getParameter("price");
            String quantity=request.getParameter("quantity");
            String picture=request.getParameter("picture");

            sql="SELECT * FROM `product` WHERE `pname`='"+pname+"'";
            ResultSet productrs=con.createStatement().executeQuery(sql);

            if(productrs.next()){
                con.close();
                out.println("<script language='javascript'>");
                out.println("alert('此商品已經存在 ! !');");
                out.println("window.location.href='administrator.jsp'");
                out.println("</script>");
            }
            else{
                sql="INSERT product (`pname`, `picture`, `describe`, `quantity`, `price`, `color`, `size1`, `size2`, `size3`, `size4`, `category`, `status`)";
                sql+="VALUES ('"+pname+"', ";
                sql+="'./asset/image/"+picture+".jpg', ";
                sql+="'"+intro+"', ";
                sql+="'"+quantity+"', ";
                sql+="'"+price+"', ";
                sql+="'"+color+"', ";
                sql+="'"+size1+"', ";
                sql+="'"+size2+"', ";
                sql+="'"+size3+"', ";
                sql+="'"+size4+"', ";
                sql+="'"+category+"', ";
                sql+="'上架中')";
                con.createStatement().execute(sql);

                con.close();
                out.println("<script language='javascript'>");
                out.println("alert('新增商品成功 ! !');");
                out.println("window.location.href='administrator.jsp'");
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