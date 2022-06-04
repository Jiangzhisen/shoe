<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("acct1") !=null && !request.getParameter("acct1").equals("") && request.getParameter("pass1") !=null && !request.getParameter("pass1").equals("")){
    sql="SELECT * FROM `member` WHERE `account`=? AND `password`=?";
    PreparedStatement pstmt = null;
    pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("acct1"));
    pstmt.setString(2,request.getParameter("pass1"));

    ResultSet paperrs = pstmt.executeQuery();

    if(paperrs.next()){
        session.setAttribute("acct",request.getParameter("acct1"));
        con.close();
        response.sendRedirect("member.jsp");
    }
    else{
        con.close();
        out.println("帳號密碼不符 !! <a href='index.jsp'>按此</a>重新登入");
    }
}
else{
    response.sendRedirect("index.jsp");
}
%>