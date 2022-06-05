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
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="./asset/css/index_css.css" />
    
    <link rel="stylesheet" type="text/css" href="./asset/css/3.css" />
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
            
                <form class="s22">
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
                        out.println("<a href='index.jsp'><img class='log' src='./asset/image/c1.png'></a>");
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
            out.println("<a href='member.html' style='text-decoration: none' class='menubtn'>關於我們</a>");
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
            out.println("<a href='member.html' style='text-decoration: none' class='menubtn'>關於我們</a>");
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
                        <input type="text" id="cpass" placeholder=" 確認密碼" required name="cpass">
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

    <div class="hihi">  
    <div class="banner1"></div>
    <div class="banner2">
        
    </div>
    <section class="chose">
    <div>
        <input type="image" class="chose_left" src="asset/image/s2.jpg" >
    </div>
    
     <div class="chose_right">
         
       <h1>鞋槓青年</h1>
       <p>132132</p>
    </div>
        
    
       
</section>
    <div class="hihi">  
    <div class="top_title_box22"></div>
    <div class="top_title_box">
       
    </div> <p class="top_title">熱門商品</p>
    </div>
    <div class="hot_box" >
    <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   
   </div>
   <div >
   <div class="top_title_box2"></div>
    <div class="top_title_box4"></div>
    <p class="top_title2">新品上架</p>
   </div>
    <div class="hot_box" >
    <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   <div class="hot_shoe">
       <form method="post" action="#">
           <input type="image" class="hot_picture" src="./asset/image/s1.jpg" >
           <p><div class="chocolate_word1">鞋1</div></p>
           <input type="hidden" name="id" value="1">
       </form>
   </div>
   
   </div>
   
   
<footer>
    <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
        沒有版權 愛怎麼抄就怎麼抄<br>
    <%
    try{
        sql="SELECT * FROM `counter`";
        ResultSet rs=con.createStatement().executeQuery(sql);
        if(rs.next()){
            String countString = rs.getString(1);
            int count = Integer.parseInt(countString);
            if(session.isNew()){
                count=count+1;
                countString = String.valueOf(count);

                sql="UPDATE `counter` SET `count` = "+countString;
                con.createStatement().execute(sql);
            }
            out.println("你是第"+count+"位訪客");
             con.close();
        }
    }
    catch(SQLException sExec){
        out.println("SQL錯誤"+sExec.toString());
    }
    %>
    </p>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./asset/js/sign.js">
</script>
</body>
</html>