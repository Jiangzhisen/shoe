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
    <title>結帳</title>
    <style>
        @import url(asset/css/4.css);
        @import url(asset/css/1.css);
    </style>
    <link rel="stylesheet" type="text/css" href="./asset/css/login.css" />
    <link rel="stylesheet" type="text/css" href="./asset/js/sign.js" />
</head>
<body>
    <header>

        <div class="top">
            <div class="ss22">
                <div class="s2ch">
                <img class="s2ch2" src="./asset/image/2ch.png">
            </div>
            
                <form class="s22" action="search_result.jsp">
                    <input class="s222" type="text" name="s2ch" placeholder="搜一下" >
                </form>
            </div>
            <a href="index.jsp"><div class="solw">靴を買う</div></a>
            <div class="man1">
                <img class="log1" src="./asset/image/man2.png">
            </div>
            <%
                if(session.getAttribute("acct") != null){
                    out.println("<form class='out' action='logout.jsp'>");
                    out.println("<input  type=image class='out_input' name=sa src='asset/image/logout.png' >");
                    out.println("</form>");
                }
                else{
                    out.println("");
                }
            %>
            <div class="man">
            <%
                if(session.getAttribute("acct") != null){
                    out.println("<a href='member.jsp'><button class='login_show' style='cursor: pointer;' ><img class='log' src='./asset/image/man.png'></button></a>");
                }
                else{
                    out.println("<button class='login_show' onclick='show()' style='cursor: pointer;' ><img class='log' src='./asset/image/man.png'></button>");
                }
            
            %>
            </div>
            <div class="car">
                <%
                    if(session.getAttribute("acct") != null){
                        out.println("<a href='shoppingcar.jsp'><img class='log' src='./asset/image/c1.png'></a>");
                    }
                    else{
                        out.println("<script language='javascript'>");
                        out.println("function hint(){ ");
                        out.println("alert('您尚未登入 ! !');");
                        out.println("window.location.href='index.jsp'");
                        out.println("}");
                        out.println("</script>");
                        out.println("<a onclick='hint()' style='cursor:pointer;'><img class='log' src='./asset/image/c1.png'></a>");
                    }
                %>
            </div>
            
        </div>
    </header>
     <%
        String acct=String.valueOf(session.getAttribute("acct"));
        if(acct.equals("admin")){
            out.println("<nav style='width:70%; margin-left: 15%;'>");
            out.println("<div class='menu'>");
            out.println("<ul>");
            out.println("<li class='menu1'>");
            out.println("<div class='dropdown'>");
            out.println("<button class='dropbtn'>常見問題</button>");
            out.println("<div class='dropdown-content'>");
            out.println("<a href='qa.jsp'>Q&A</a>");
            out.println("<a href='about.jsp'>小知識</a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<a href='cclemon.jsp' style='text-decoration: none' class='menubtn'>關於我們</a>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<div class='dropdown'>");
            out.println("<a href='model.jsp'><button class='dropbtn' >商品分類</button></a>");
            out.println("<div class='dropdown-content'>");
            out.println("<a href='model.jsp#skater'>板鞋<br></a>");
            out.println("<a href='model.jsp#sneaker'>運動鞋</a>");
            out.println("<a href='model.jsp#boots'>靴子<br></a>");
            out.println("<a href='model.jsp#casual'>休閒鞋<br></a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<a href='member_form.jsp' style='text-decoration: none;' class='menubtn'>回饋表單</a>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<a href='administrator.jsp' style='text-decoration: none;' class='menubtn'>後台管理</a>");
            out.println("</li>");
            out.println("</ul>");
            out.println("</div>");
            out.println("</nav> ");
        }
        else{
            out.println("<nav>");
            out.println("<div class='menu'>");
            out.println("<ul>");
            out.println("<li class='menu1'>");
            out.println("<div class='dropdown'>");
            out.println("<button class='dropbtn'>常見問題</button>");
            out.println("<div class='dropdown-content'>");
            out.println("<a href='qa.jsp'>Q&A</a>");
            out.println("<a href='about.jsp'>小知識</a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<a href='cclemon.jsp' style='text-decoration: none' class='menubtn'>關於我們</a>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<div class='dropdown'>");
            out.println("<a href='model.jsp'><button class='dropbtn' >商品分類</button></a>");
            out.println("<div class='dropdown-content'>");
            out.println("<a href='model.jsp#skater'>板鞋<br></a>");
            out.println("<a href='model.jsp#sneaker'>運動鞋</a>");
            out.println("<a href='model.jsp#boots'>靴子<br></a>");
            out.println("<a href='model.jsp#casual'>休閒鞋<br></a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<a href='member_form.jsp' style='text-decoration: none;' class='menubtn'>回饋表單</a>");
            out.println("</li>");
            out.println("</ul>");
            out.println("</div>");
            out.println("</nav> ");
        }
    %>

    <!--     以上為HEADER        -->

<div  id="login_box1" class="login_box">
    <div   class="login_box1">

    </div>
    <div   class="login_box2">
    <div class="QAZ" >
        <div class="lp">
            <div id="cont1">
    
                <div class="login">
    
                    <h1>登入</h1>
    
                    <form method="Get" action="check.jsp">
                        <input type="text" id="uname" placeholder="帳號" required name="acct1">
                        <div class="tab"></div>
                        <input type="password" id="pass" placeholder="密碼" required name="pass1">
                        <div class="tab"></div>
                        <input type="submit" value="登入" class="submit" onclick="location.href='#'" style="cursor: pointer;">
                    </form>
    
                    <h3 onclick="show2()" style="cursor: pointer;">註冊帳號</h3>
                    <h3 onclick="hide()()" style="cursor: pointer;">取消</h3>
    
                </div>
            </div>
        </div>
        
    
        <div class="sp">
            <div id="cont2">
    
                <div class="signup">
    
                    <h1>註冊</h1>
    
                    <form method="GET" action="sign_up.jsp">
                        
                        <input type="text" id="uname2" placeholder="帳號" required name="acct">
                        <div class="tab"></div>
                        <input type="password" id="pass2" placeholder="密碼" required name="pass">
                        <div class="tab"></div>
                        <input type="password" id="cpass" placeholder=" 確認密碼" required name="cpass">
                        <div class=" tab">
                        </div>
                        <input type="submit" value="註冊" class="submit" style="cursor: pointer;">
                    </form>
    
                    <h3 onclick="show2()" style="cursor: pointer;">登入帳號</h3>
                    <h3 onclick="hide()()" style="cursor: pointer;">取消</h3>
    
                </div>
            </div>
        </div>
    </div>
   
    </div>
    
</div>
<!--     以上為登入畫面        -->
    <section>
        <%
            if(con.isClosed()){
                out.println("建立連線失敗");
            }
            else{
                if(session.getAttribute("acct") != null){
                    request.setCharacterEncoding("UTF-8");
                    response.setCharacterEncoding("UTF-8");
                    String cart_acct=String.valueOf(session.getAttribute("acct"));
                    sql="SELECT *, (`quantity` * `price`), SUM(`quantity`), SUM(`quantity` * `price`) FROM `shoppingcart` WHERE `account`='"+cart_acct+"'";
                    ResultSet rs=con.createStatement().executeQuery(sql);
                    rs.next();

                    if(rs.getString(2) == null || rs.getString(2).equals("")){
                        con.close();
                        response.sendRedirect("model.jsp");
                    }
                    else{
                        int tolprice=Integer.parseInt(rs.getString(11));
                        int totalprice=0;

                        if(tolprice>=5000){
                            totalprice=tolprice-200;
                        }
                        else{
                            totalprice=tolprice;
                        }
                        out.println("<div class='paylist'>");
                        out.println("<div class='ppa'>結帳</div>");
                        out.println("<div class='list'>");
                        out.println("<form class='shopp' action='addOrder.jsp'>");
                        out.println("<label for='' class='lab'>商品總數:&nbsp;&nbsp;"+rs.getString(10)+" <br></label>");
                        out.println("<label for='' class='lab'>總價錢:&nbsp;&nbsp;&nbsp;$ "+totalprice+"<br></label>");
                        out.println("<label for='' class='lab'>訂購位址:<input type='text' class='place' name='address' required><br></label>");
                        out.println("<label for='' class='lab'>取貨方式:   </label>");
                        out.println("<select size='1' class='paywhere' name='method'>");
                        out.println("<option>7-11</option>");
                        out.println("<option>全家</option>");
                        out.println("<option>宅配</option>");
                        out.println("</select></br>");
                        out.println("<label for='' class='lab'>備註：</label><br>");
                        out.println("<textarea cols='40' rows='5' wrap='hard' class='ssay' name='remark'></textarea><br>");
                        out.println("<input type='submit' value='確認訂單' class='senta1'>");
                        out.println("</form>");
                        out.println("</div>");
                        out.println("</div>");

                        con.close();
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
    </section>
    <footer>
        <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
            沒有版權 愛怎麼抄就怎麼抄
        </p>
    </footer>
    <script src="./asset/js/sign.js"></script>
</body>
</html>