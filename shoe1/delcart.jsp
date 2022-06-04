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
            String pname=request.getParameter("prodname");
            sql="DELETE FROM `shoppingcart` WHERE `account`='"+cart_acct+"' AND `pname`='"+pname+"'";

            
            con.createStatement().execute(sql);
            con.close();
            response.sendRedirect("shoppingcar.jsp");
        }
        else{
            con.close();
            out.println("<h1>您尚未登入，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }

    }



%>