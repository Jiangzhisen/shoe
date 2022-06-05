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
            String acct=String.valueOf(session.getAttribute("acct"));
            String times=request.getParameter("times");
            String amount=request.getParameter("amount");
            String category=request.getParameter("category");
            String evaluation=request.getParameter("evaluation");
            String psatisfaction=request.getParameter("psatisfaction");
            String recommend=request.getParameter("recommend");
            String point=request.getParameter("point");
            String where=request.getParameter("where");
            String speed=request.getParameter("speed");
            String remark=request.getParameter("remark");
            java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());


            sql="SELECT * FROM `member` WHERE `account`='"+acct+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            rs.next();
            String name=rs.getString(3);

            sql="INSERT feedback (`account`, `name`, `times`, `amount`, `category`, `evaluation`, `psatisfaction`, `recommend`, `point`, `where`, `speed`, `remark`, `Putdate`)";
            sql+="VALUES ('"+acct+"', ";
            sql+="'"+name+"', ";
            sql+="'"+times+"', ";
            sql+="'"+amount+"', ";
            sql+="'"+category+"', ";
            sql+="'"+evaluation+"', ";
            sql+="'"+psatisfaction+"', ";
            sql+="'"+recommend+"', ";
            sql+="'"+point+"', ";
            sql+="'"+where+"', ";
            sql+="'"+speed+"', ";
            sql+="'"+remark+"', ";
            sql+="'"+new_date+"')";
            con.createStatement().execute(sql);

            con.close();
            out.println("<script language='javascript'>");
            out.println("alert('回饋表單已成功送出 ! !');");
            out.println("window.location.href='index.jsp'");
            out.println("</script>");

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