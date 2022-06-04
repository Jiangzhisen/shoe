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
        if(session.getAttribute("acct") != null){
            request.setCharacterEncoding("UTF-8");
            String new_nickname=request.getParameter("nickname");
            String new_gender=request.getParameter("member_info_edit_r");
            String new_picture=request.getParameter("member_animal");
            String new_mail=request.getParameter("mail");
            String new_phone=request.getParameter("phone");
            String new_addr=request.getParameter("addr");
            if(new_nickname == null || new_nickname.equals("") || new_gender == null || new_gender.equals("") || new_picture == null || new_picture.equals("") || new_mail == null || new_mail.equals("") || new_phone == null || new_phone.equals("") || new_addr == null || new_addr.equals("")){
                out.print("所有欄位必須都要填答完畢，點<a href='member_edit.jsp'>這裡</a>回到會員資料編輯畫面");
            }
            else{
                sql="UPDATE `member` SET `nickname`='"+new_nickname+"' WHERE `account`='"+session.getAttribute("acct")+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `member` SET `gender`='"+new_gender+"' WHERE `account`='"+session.getAttribute("acct")+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `member` SET `mail`='"+new_mail+"' WHERE `account`='"+session.getAttribute("acct")+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `member` SET `phone`='"+new_phone+"' WHERE `account`='"+session.getAttribute("acct")+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `member` SET `address`='"+new_addr+"' WHERE `account`='"+session.getAttribute("acct")+"'";
                con.createStatement().execute(sql);
                sql="UPDATE `member` SET `picture`='"+new_picture+"' WHERE `account`='"+session.getAttribute("acct")+"'";
                con.createStatement().execute(sql);
                con.close();
                out.println("更新成功!! 請<a href='member.jsp'>按此</a>回會員畫面!!");
            }
        }
        else{
            con.close();
            out.println("<h1>您尚未登入，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }
    }
    
    
    %>
</body>
</html>