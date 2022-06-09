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
            String star=request.getParameter("star");
            java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());


            int starnum=Integer.parseInt(star);
            int starnum1=0;
            if(starnum==1){
                starnum1=starnum+4;
            }
            if(starnum==2){
                starnum1=starnum+2;
            }
            if(starnum==3){
                starnum1=starnum;
            }
            if(starnum==4){
                starnum1=starnum-2;
            }
            if(starnum==5){
                starnum1=starnum-4;
            }

            String stars="";
            for(int i=0;i<starnum1;i++){
                stars+="★";
            }




            if(new_content == null || new_content.equals("")){
            out.println("<script language='javascript'>");
            out.println("alert('請填寫留言內容 ! !');");
            out.println("window.location.href='model.jsp'");
            out.println("</script>");

            }
            else{
                sql="INSERT board (`GBName`, `Content`, `star`, `Putdate`, `product`)";
                sql+="VALUES ('"+new_name+"', ";
                sql+="'"+new_content+"', ";
                sql+="'"+stars+"', ";
                sql+="'"+new_date+"', ";
                sql+="'"+product+"')";

                con.createStatement().execute(sql);
                con.close();

                response.sendRedirect("model.jsp");
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
</body>
</html>