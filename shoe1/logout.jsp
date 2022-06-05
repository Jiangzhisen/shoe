<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        session.removeAttribute("acct");
        out.println("<script language='javascript'>");
        out.println("alert('您已成功登出 ! !');");
        out.println("window.location.href='index.jsp'");
        out.println("</script>");
    %>
</body>
</html>