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
    <title>組員資料</title>
    <link rel="stylesheet" type="text/css" href="./asset/css/1.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/login.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/cclemon.css" />
    
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


<div class="cc_box" >
    
   
    <div class="cc_photo_box">
        <div class="c1">

            <div class="cc_photo">
                <img class = "cc_photo2" src="./asset/image/ping2.jpg">
            </div>
            <div class="cc_detail">
                <h1 class="cc_tittle">陳品叡</h1>
                
            <a href="https://www.instagram.com/r_a_y_5_5/" target=_blank> <img src="./asset/image/ig.png" class="icon"></a>
            <p></p>
            </div>

        </div>

    </div>

    <div class="cc_photo_box">
        <div class="cc_photo">
            <img class = "cc_photo2" src="./asset/image/sean.jpg">
        </div>
        <div class="cc_detail">
            <h1 class="cc_tittle">翁浩翔</h1>
           
            <a href="https://instagram.com/boyceccc?igshid=YmMyMTA2M2Y=" target=_blank> <img src="./asset/image/ig.png" class="icon"></a>
            
        </div>
    </div>
    <div class="cc_photo_box">
        <div class="cc_photo">
            <img class = "cc_photo2" src="./asset/image/jhon.jpg">
        </div>
        <div class="cc_detail">
            <h1 class="cc_tittle">姜智森</h1>
           
            <a href="https://www.instagram.com/zhisen_0714/" target=_blank> <img src="./asset/image/ig.png" class="icon"></a>
        
        </div>
    </div>

    <div class="cc_photo_box">
        <div class="cc_photo">
           <a></a> <img class = "cc_photo2" src="./asset/image/song.png">
        </div>
        <div class="cc_detail">
            <h1 class="cc_tittle">宋雨蕎</h1>
            
            <a href="https://www.instagram.com/krank0000/" target=_blank> <img src="./asset/image/ig.png" class="icon"></a>
        
        </div>
    </div>

    <div class="cc_photo_box">
        <div class="cc_detail">
           
            <p><br>在這個學期與另一外優秀的組員製作前端網站與後端進行整合，這個過程和上學期的我們心路歷程完全不同，像是傳值要用form表單等等的，真的需要在事前先提醒前端的學生，不然他們會超級痛苦，就是受過這樣的麻煩，所以期末的網站就可以將心比心的把這些東西注意到提前做好，這是一個相當好的前後端整合結果。<br><br><br><br></p>
            
        </div>
    </div>

    <div class="cc_photo_box">
        <div class="cc_detail">
           
            <p><br>這次的多媒體期末專案讓我學習到許多有關網站的知識，像是網頁的輪播、排版等等，這些都是將來我在製作網頁時可以運用的機會。品叡好罩。<br><br><br><br><br><br><br><br><br><br><br><br></p>
            
        </div>
    </div>

    <div class="cc_photo_box">
        <div class="cc_detail">
           
            <p><br>經過這學期的網程期末專案之後，相對於我在做前端的時候，我認為寫後端對我而言是很輕鬆無壓力的，因為基本上就那幾個觀念在重複使用，然後我覺得會寫得很輕鬆的原因是有了前端和資料庫的基礎，所以讓我僅花了4天的時間就把大部分的功能和頁面都寫完了，整體而言，這次的專案不只讓我感到很有成就感，也意外地引發了我對JSP開發的興趣。<br><br></p>
            
        </div>
    </div>

    <div class="cc_photo_box">
        <div class="cc_detail">
           
            <p><br>在上學期經歷前端的作業後，這次負責後端的工程就相對清楚了。除了功能程式碼的編寫外，我們還需要考慮到客戶在使用過程中會出現的問題，相信這就是資管人的特別之處吧！資管要寫出來的是給「人」操作的程式，所以更要清楚了解並站在用戶的角度發想設計，做出更加「人性化」的程式。<br><br><br><br><br></p>
            
        </div>
    </div>

</div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <footer>
        <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
            沒有版權 愛怎麼抄就怎麼抄
        </p>
    <script src="./asset/js/sign.js"></script>
</body>
</html>