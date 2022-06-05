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

            sql="SELECT * FROM `product` WHERE `pname`='"+pname+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            if(rs.next()){
                sql="DELETE FROM `product` WHERE `pname`='"+pname+"'";
                con.createStatement().execute(sql);

                con.close();
            out.println("<script language='javascript'>");
            out.println("alert('刪除商品成功 ! !');");
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