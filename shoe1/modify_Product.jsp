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
            String size=request.getParameter("size");
            String intro=request.getParameter("intro");
            String price=request.getParameter("price");
            String quantity=request.getParameter("quantity");
            String picture=request.getParameter("picture");

            sql="SELECT * FROM `product` WHERE `pname`='"+pname+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            if(rs.next()){
                sql="UPDATE `product` SET `pname`='"+pname+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `product` SET `picture`='"+picture+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `product` SET `describe`='"+intro+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `product` SET `quantity`='"+quantity+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `product` SET `price`='"+price+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `product` SET `color`='"+color+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `product` SET `size2`='"+size+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `product` SET `category`='"+category+"' WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);

                
                con.close();
                out.println("<script language='javascript'>");
                out.println("alert('修改商品成功 ! !');");
                out.println("window.location.href='administrator.jsp'");
                out.println("</script>");
            }
            else{
                con.close();
                out.println("<script language='javascript'>");
                out.println("alert('沒有這項商品 ! !');");
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