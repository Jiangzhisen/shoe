<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "config.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");
    String status=request.getParameter("status");
    String pid=request.getParameter("pid");

    sql="UPDATE `product` SET `status`='"+status+"中' WHERE `pid`='"+pid+"'";
    con.createStatement().execute(sql);

    out.println("<script language='javascript'>");
    out.println("alert('更新商品狀態成功 ! !');");
    out.println("window.location.href='product_manage.jsp'");
    out.println("</script>");


%>