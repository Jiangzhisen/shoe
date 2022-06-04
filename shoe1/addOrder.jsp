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
            String address=request.getParameter("address");
            String method=request.getParameter("method");
            String remark=request.getParameter("remark");
            sql="SELECT *, (`quantity` * `price`) FROM `shoppingcart` WHERE `account`='"+cart_acct+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            
            
            while(rs.next()){
                String prodname=rs.getString(2);
                String qua=rs.getString(5);
                String tolpri=rs.getString(9);

                sql="INSERT order_record (`account`, `pname`, `tolqua`, `tolpri`, `address`, `method`, `remark`)";
                sql+="VALUES ('"+cart_acct+"', ";
                sql+="'"+prodname+"', ";
                sql+="'"+qua+"', ";
                sql+="'"+tolpri+"', ";
                sql+="'"+address+"', ";
                sql+="'"+method+"', ";
                sql+="'"+remark+"')";
                con.createStatement().execute(sql);
            }


            sql="DELETE FROM `shoppingcart` WHERE `account`='"+cart_acct+"'";
            con.createStatement().execute(sql);

            con.close();
            out.println("<h1>送出訂單成功，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }
        else{
            con.close();
            out.println("<h1>您尚未登入，請<a href='index.jsp' style='color: blue;'>按此</a>回到首頁</h1>");
        }
    }



%>