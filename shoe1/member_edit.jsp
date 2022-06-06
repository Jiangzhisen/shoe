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
    <title>修改資料</title>
    <link rel="stylesheet" type="text/css" href="./asset/css/index_css.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/mamber.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/1.css" />
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
            out.println("<a href=''>Q&A</a>");
            out.println("<a href=''>如何挑選</a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<a href='' style='text-decoration: none' class='menubtn'>關於我們</a>");
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
            out.println("<a href=''>Q&A</a>");
            out.println("<a href=''>如何挑選</a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</li>");
            out.println("<li class='menu1'>");
            out.println("<a href='' style='text-decoration: none' class='menubtn'>關於我們</a>");
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
    <form action="addMember.jsp">
    <div class="member_box" >
        <div class="member_info_box" >
            <label class="member_info2" >暱稱:</label>
            <input type="text" class="member_info_edit" size="20" value="暱稱" name="nickname">
        </div>
        <div class="member_info_box" >
            <label class="member_info2" >性別:</label>
            <input style="height:35px; width:35px;" type="radio" class="member_info_edit_r" name="member_info_edit_r"  value="男" ><label class="member_info2" >男</label>
            <input style="height:35px; width:35px;" type="radio" class="member_info_edit_r"  name="member_info_edit_r" value="女" ><label class="member_info2" >女</label>
        </div>

        <div class="member_info_box" >
            <label class="member_info2" >你是一隻?</label>
            <input style="height:35px; width:35px;" type="radio" class="member_info_edit_r" name="member_animal"  value="animal1" ><label class="member_info2" >猩猩</label>
            <input style="height:35px; width:35px;" type="radio" class="member_info_edit_r" name="member_animal"  value="animal2" ><label class="member_info2" >山羊</label>
            <input style="height:35px; width:35px;" type="radio" class="member_info_edit_r" name="member_animal"  value="animal3" ><label class="member_info2" >馬</label>
        </div>
        <div class="member_info_box" >
            <label class="member_info2" >郵箱:</label>
            <input type="email" class="member_info_edit" size="20" value="EMail" name="mail">
        </div>
        <div class="member_info_box" >
            <label class="member_info2" >電話:</label>
            <input type="tel" class="member_info_edit" size="20" value="09" name="phone">
        </div>
        <div class="member_info_box" >
            <label class="member_info2" >地址:</label>
            <input type="text" name="addr" class="member_info_edit" size="40" value="無" >
        </div>
        
        <input type="reset" value="清除輸入" class="member_edit_conf"  style="cursor: pointer;">
        <input type="submit" value="確認送出" class="member_edit_conf"  style="cursor: pointer;">
    </div>
</form>
<footer>
    <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
        沒有版權 愛怎麼抄就怎麼抄
    </p>
</footer>
<script src="./asset/js/sign.js"></script>
</body>
</html>