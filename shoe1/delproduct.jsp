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
                out.println("刪除商品成功，請<a href='administrator.jsp'>按此</a>回到管理頁面");
            }
            else{
                con.close();
                out.println("沒有這項商品，請<a href='administrator.jsp'>按此</a>回到管理頁面");
            }
        }
        else{
            con.close();
            out.println("<h1>您尚未登入，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }
    }


%>