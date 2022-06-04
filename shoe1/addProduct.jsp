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
            String color=request.getParameter("color");
            String category=request.getParameter("category");
            String size=request.getParameter("size");
            String intro=request.getParameter("intro");
            String price=request.getParameter("price");
            String quantity=request.getParameter("quantity");
            String picture=request.getParameter("picture");


            sql="INSERT product (`pname`, `picture`, `describe`, `quantity`, `price`, `color`, `size2`, `category`)";
            sql+="VALUES ('"+pname+"', ";
            sql+="'"+picture+"', ";
            sql+="'"+intro+"', ";
            sql+="'"+quantity+"', ";
            sql+="'"+price+"', ";
            sql+="'"+color+"', ";
            sql+="'"+size+"', ";
            sql+="'"+category+"')";
            con.createStatement().execute(sql);

            con.close();
            out.println("新增商品成功，請<a href='administrator.jsp'>按此</a>回到管理頁面");
        }
        else{
            con.close();
            out.println("<h1>您尚未登入，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }

        
    }


%>