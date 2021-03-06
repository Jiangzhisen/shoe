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
    <title>會員回饋</title>

    <link rel="stylesheet" type="text/css" href="./asset/css/1.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/login.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/member_form.css" />

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
<div class="member_form_box">
    <div class="member_form_title_box">
        <label class="member_form_title">回饋單</label>
    </div>
    <form class="cos" action="addFeedback.jsp">
        <div class="member_form_text_box">
            <label class="member_form_text">這是第幾次來本店消費:&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r2" name="times"  value="1次" checked><label class="member_info2" >1次</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r2" name="times"  value="2次" ><label class="member_info2" >2次</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r2" name="times"  value="2次以上" ><label class="member_info2" >2次以上</label>
        </div>
        <div class="member_form_text_box">
            <label class="member_form_text">此次消費金額:&nbsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="amount"  value="1000元↓" checked><label class="member_info2" >1000元↓</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="amount"  value="1000-2000" ><label class="member_info2" >1000-2000</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="amount"  value="2000元↑" ><label class="member_info2" >2000元↑</label>
        </div>    <div class="member_form_text_box">
            <label class="member_form_text">您最喜歡的鞋款:&nbsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="category"  value="板鞋" checked><label class="member_info2" >板鞋</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="category"  value="運動鞋" ><label class="member_info2" >運動鞋</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="category"  value="靴子" ><label class="member_info2" >靴子</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="category"  value="休閒鞋" ><label class="member_info2" >休閒鞋</label>
        </div>    <div class="member_form_text_box">
            <label class="member_form_text">我們的網頁做的:&nbsp;&emsp;&emsp;&emsp;&emsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="evaluation"  value="不錯" checked><label class="member_info2" >不錯</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="evaluation"  value="還行" ><label class="member_info2" >還行</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="evaluation"  value="非常好" ><label class="member_info2" >非常好</label>
        </div>    <div class="member_form_text_box">
            <label class="member_form_text">對產品滿意度:&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="psatisfaction"  value="不好" checked><label class="member_info2" >不好</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="psatisfaction"  value="普通" ><label class="member_info2" >普通</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="psatisfaction"  value="很喜歡" ><label class="member_info2" >很喜歡</label>
        </div>    <div class="member_form_text_box">
            <label class="member_form_text">會不會推薦給朋友:&nbsp;&emsp;&emsp;&emsp;&emsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="recommend"  value="會" checked><label class="member_info2" >會</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="recommend"  value="不會" ><label class="member_info2" >不會</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="recommend"  value="已推推" ><label class="member_info2" >已推推</label>
        </div>    <div class="member_form_text_box">
            <label class="member_form_text">挑鞋最重視:&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="point"  value="顏色" checked><label class="member_info2" >顏色</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="point"  value="潮流" ><label class="member_info2" >潮流</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="point"  value="女友喜歡" ><label class="member_info2" >女友喜歡</label>
        </div>    <div class="member_form_text_box">
            <label class="member_form_text">從哪邊得知本網站:&nbsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="where"  value="報紙" checked><label class="member_info2" >報紙</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="where"  value="朋友連結" ><label class="member_info2" >朋友連結</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="where"  value="電視廣告" ><label class="member_info2" >電視廣告</label>
        </div>           
        <div class="member_form_text_box">
            <label class="member_form_text">網頁載入速度: &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="speed"  value="慢死了" checked><label class="member_info2" >慢死了</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="speed"  value="普通" ><label class="member_info2" >普通</label>
            <input style="height:20px; width:20px;" type="radio" class="member_info_edit_r" name="speed"  value="極速" ><label class="member_info2" >極速</label>
        </div>
        <div class="member_form_text_box">
            <lable class="member_form_text2">備註:</lable>
            <textarea class="ssayy" name="remark" cols="1" rows="1" placeholder="寫下想法吧"></textarea>   
        </div>
        <input type="submit" value="完成!" class="gogo5">
    </form>
</div>



<script src="./asset/js/sign.js"></script>
<footer>
    <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
        沒有版權 愛怎麼抄就怎麼抄
    </p>
</footer>
</body>
</html>