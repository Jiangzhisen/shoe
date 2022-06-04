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
    if(con.isClosed()){
        out.println("建立連線失敗");
    }
    else{
        request.setCharacterEncoding("UTF-8");
        String new_acct=request.getParameter("acct");
        String new_pass=request.getParameter("pass");
        String new_cpass=request.getParameter("cpass");
        if(new_acct == null || new_acct.equals("") || new_pass == null || new_pass.equals("") || new_cpass == null || new_cpass.equals("")){
            response.sendRedirect("login.html");
        }
        if(new_pass.equals(new_cpass)){
            try{
                sql="INSERT member (`account`, `password`) ";
                sql+="VALUES ('"+new_acct+"', ";
                sql+="'"+new_pass+"')";
                con.createStatement().execute(sql);
                session.setAttribute("acct", new_acct);
                con.close();
                out.println("您已註冊成功，點<a href='member_edit.jsp'>這裡</a>進入會員資料編輯畫面");
            }
            catch(SQLException sExec){
                out.println("此帳號已被註冊，點<a href='index.jsp'>這裡</a>回首頁");
            }
        }
        else{
            out.println("欄位輸入錯誤,點<a href='index.jsp'>這裡</a>回首頁");
        }
    }
    %>
</body>
</html>