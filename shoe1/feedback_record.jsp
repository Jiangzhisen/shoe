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
    <title>回饋反映</title>
    <style>
        @import "asset/css/1.css";
        @import "asset/css/2.css";
    </style>
        <link rel="stylesheet" type="text/css" href="./asset/css/order_record.css" />
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
                        <input type="submit" value="登入" class="submit" style="cursor: pointer;">
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
        <div class="comments">
            <div class="combox">
                <h1 class="tit2">回饋反映</h1>
                <div class="comm">
                    <table>
                        <tr>
                            <td>姓名</td>
                            <td>消費次數</td>
                            <td>消費金額</td>
                            <td>喜歡的鞋款</td>
                            <td>網頁評價</td>
                            <td>產品滿意度</td>
                            <td>是否推薦</td>
                            <td>挑鞋最重視的點</td>
                            <td>接觸媒介</td>
                            <td>網頁載入速度</td>
                            <td>備註</td>
                            <td>填寫時間</td>
                        </tr>
                        <%
                            sql="SELECT * FROM `feedback`";
                            ResultSet rs=con.createStatement().executeQuery(sql);
                            while(rs.next()){
                                out.println("<tr>");
                                out.println("<td>"+rs.getString(2)+"</td>");
                                out.println("<td>"+rs.getString(3)+"</td>");
                                out.println("<td>"+rs.getString(4)+"</td>");
                                out.println("<td>"+rs.getString(5)+"</td>");
                                out.println("<td>"+rs.getString(6)+"</td>");
                                out.println("<td>"+rs.getString(7)+"</td>");
                                out.println("<td>"+rs.getString(8)+"</td>");
                                out.println("<td>"+rs.getString(9)+"</td>");
                                out.println("<td>"+rs.getString(10)+"</td>");
                                out.println("<td>"+rs.getString(11)+"</td>");
                                out.println("<td>"+rs.getString(12)+"</td>");
                                out.println("<td>"+rs.getString(13)+"</td>");
                                out.println("</tr>");
                            }

                            con.close();
                        %>
                    </table>
                </div>
                <br><br><br>
            </div>
        </div>

    </section>
    <footer>
        <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
            沒有版權 愛怎麼抄就怎麼抄
        </p>
    </footer>
    <script src="./asset/js/sign.js"></script>
</body>
</html>