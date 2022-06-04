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
        if(session.getAttribute("acct") != null){
            sql="SELECT * FROM `member` WHERE `account`='"+session.getAttribute("acct")+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            rs.next();

            String new_name=rs.getString(3);
            String new_content=request.getParameter("content");
            String product=request.getParameter("product");
            java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
            if(new_content == null || new_content.equals("")){
                out.println("<h1>請填寫留言內容，<a href='model.jsp' style='color: blue;'>按此</a>回到產品頁面</h1>");
            }
            else{
                sql="INSERT board (`GBName`, `Content`, `Putdate`, `product`)";
                sql+="VALUES ('"+new_name+"', ";
                sql+="'"+new_content+"', ";
                sql+="'"+new_date+"', ";
                sql+="'"+product+"')";

                con.createStatement().execute(sql);
                con.close();

                response.sendRedirect("model.jsp");
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