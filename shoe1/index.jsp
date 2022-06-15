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
    <title>靴を買う</title>
    <style>
        .shoe1{
        display: inline-block;
        margin-left: 3%;
        margin-top: 5%;
        padding: 25px;
        vertical-align: top;
        text-align: center;
        height: 400px;
        line-height: 30px;
        background-image: url(asset/image/b2.jpg);
        border-radius: 20px;
        }
        .picture{
            width: 350px;
            border-radius: 15px;
        }
        .hihi{
            margin-top: 2%;
        }
        .banner1{
            height: 730px;
            width: 100%;
            background-image: url(asset/image/banner12.jpg);
            background-size: cover;
            position: absolute;
            z-index: -1;
        }
        .banner2{
            height: 730px;
            background-image: url(asset/image/banner.jpg);
            background-size: cover;
            position: relative;
            z-index: 0;
            transition: ease-in 1s;
        }
        .banner2:hover{
            opacity: 0;
        }
        .chose{
            margin-left: 10%  ;
            margin-top: 2%;
            width: 80%;
            columns:2 ;
        }


        .chose_right{
            display: inline-block;
            margin-left: 5%;
            margin-top: 15%;
            margin-bottom: 15%;
            padding: 15px;
            width: 20%;
            height:500px;
            vertical-align: top;
            text-align: center;
            
            line-height: 30px;
            background-image: url(asset/image/b1.jpg);
            border-radius: 20px;
        
        }
        .top_title_box22{
            height: 600px;
            width: 100%;
            background-image: url(asset/image/banner13.jpg);
            background-size: cover;
            position: absolute;
            z-index: 1;
        }
        .top_title_box{
            height: 600px;
            background-image: url(asset/image/pexels-web-donut-19090.jpg);
            background-size: cover;
            position: relative;
            z-index: 99;
            transition: ease-in 1s;
        }
        .top_title_box:hover{
            opacity: 0;
            transition: 0.75s;
        }

        .top_title{
            margin-top: 4%;
            text-align: center;
            font-family: "秀風體W3";
            text-align: center;
            color:#666;
            position: absolute;
            z-index: 100;
            font-size: 200px;
            font-weight: 100;
            -webkit-text-stroke: 1px white;
        transform: translate(68%,-450px);
        }
        .top_title_box2{
            height: 600px;
            width: 100%;
            background-image: url(asset/image/top2.jpg);
            background-size: cover;
            position: absolute;
            z-index: 1;
        }
        .top_title2{
            margin-top: 4%;
            text-align: center;
            font-family: "秀風體W3";
            text-align: center;
            color:#7a6944;
            position: absolute;
            z-index: 100;
            font-size: 200px;
            font-weight: 500;
            -webkit-text-stroke: 1px white;
            transform: translate(68%,-450px);
        }
        .top_title_box4{
            height: 600px;
            width: 100%;
            background-image: url(asset/image/top.jpg);
            background-size: cover;
            position: relative;
            z-index: 99;
            transition: ease-in 1s;
        }
        .top_title_box4:hover{
            opacity: 0;
            transition: 0.75s;
        }
        .hot_box{
            margin-bottom: 20%;
            padding: 20px;
            height: auto;
            border-radius: 20px;
            border-color: grey;
            border-width: 1px;
        }
        .hot_shoe{
            
            outline: 0px;
            position: relative;
            display: inline-block;
            width: 19%;
            margin-left: 3%;
            margin-top: 10px;
            padding: 1%;
            vertical-align: top;
            text-align: center;
            height:auto;
            background-image: url(asset/image/b4.jpg);
            border-radius: 20px;
        }
        .hot_picture{
            
            width: 95%;
            border-radius: 15px;
            border:0px;
        }




        .chose_left{ 
            position: absolute;
            display: inline-block;
            top:20px;
            left: 0px;
            cursor: default;
            margin-left: 0%;
            margin-top: 0%;
            width: 100%;
            height:740px;
            background-image: url(/asset/image/b2.jpg);
            border-radius: 20px;
            border: 0px;
            outline: 0px;
            outline: transparent;
            padding: 0;
            
        }


        .slider_box{
            cursor: default;
            margin-left: 15%;
            margin-top: 10%;
            margin-bottom: 10%;
            display: inline-block;
            width: 800px;
            height:800px;
            position: relative;
            overflow: hidden;
            box-sizing: border-box;
            
            background-image: url(asset/image/b2.jpg);
            background-size: cover;
            border-radius: 20px;
        }
        .slider_box div{
            left: 19px;
            padding: 0;
            position: relative;
            display: block;
            width: 760px;
            height: 100%;
            overflow: hidden;
        }
        .slider_box div div{
            display: block;
            padding: 0;
            position: absolute;

            top: 10;
            left: -100%;;
            opacity: 0;
            filter: alpha(opacity=0);
            
            -webkit-animation: repeat 25s linear infinite;
                    animation:  repeat 25s linear infinite;
        }

        @-webkit-keyframes repeat {
            0%{
                opacity: 1;
            }
            4% {
                opacity: 1;
                filter: alpha(opacity=100);
                left: 0%;
            }
            20% {
                opacity: 1;
                filter: alpha(opacity=100);
                left: 0%;
            }
            24% {
                opacity:1;
                filter: alpha(opacity=0);
                left: 100%;
            }
            26%{
                opacity:0;
                filter: alpha(opacity=0);
                left: 100%;
            }
            28%{
                opacity:0;
                filter: alpha(opacity=0);
                left: -100%;
            }
        }
        @keyframes repeat {
            0%{
                opacity: 1;
            }
            4% {
                opacity: 1;
                filter: alpha(opacity=100);
                left: 0%;
            }
            20% {
                opacity: 1;
                filter: alpha(opacity=100);
                left: 0%;
            }
            24% {
                opacity:1;
                filter: alpha(opacity=0);
                left: 100%;
            }
            26%{
                opacity:0;
                filter: alpha(opacity=0);
                left: 100%;
            }
            28%{
                opacity:0;
                filter: alpha(opacity=0);
                left: -100%;
            }
        }
        .slider_box div div:nth-child(1) {
            -webkit-animation-delay: 0s;
                    animation-delay: 0s;
        }
        .slider_box div div:nth-child(2) {
            -webkit-animation-delay: 5s;
                    animation-delay: 5s;
        }
        .slider_box div div:nth-child(3) {
            -webkit-animation-delay: 10s;
                    animation-delay: 10s;
        }
        .slider_box div div:nth-child(4) {
            -webkit-animation-delay: 15s;
                    animation-delay: 15s;
        }
        .slider_box div div:nth-child(5) {
            -webkit-animation-delay: 20s;
                    animation-delay: 20s;
        }


    </style>
    <link rel="stylesheet" type="text/css" href="./asset/css/3.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/1.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/login.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/wrap_add.css" />
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
                        <input type="password" id="cpass" placeholder=" 確認密碼" required name="cpass" name="name4">
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
    <div class="banner2"></div>

    <div class="wrap_add">
        <img src="asset/image/megaphone.png" width="80px">
        <div class="cont_out_add">
            <div class="cont_add">
                <p class="cont_add_text">全館消費滿$5000折200!!!    新店開張，全館免運!!!</p>
            </div>
        </div>
    </div>
   
    <div class="slider_box">
        <div>
            <div>
                 <input type="image" class="chose_left" src="asset/image/s2.jpg" >
            </div>
            <div>
                <input type="image" class="chose_left" src="asset/image/s3.jpg" >
           </div>
           <div>
                <input type="image" class="chose_left" src="asset/image/s4.jpg" >
             </div>
            <div>
                 <input type="image" class="chose_left" src="asset/image/s5.jpg" >
            </div>
            <div>
                  <input type="image" class="chose_left" src="asset/image/s6.jpg" >
            </div>
        </div>
    </div>
    
     <div class="chose_right">
         <br>
       <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我們的人生總是充滿意外
        成為鞋槓青年會是你的好選擇
        現在的人哪個不是有好幾雙鞋呢
        人生在世最重要就是開心
        鞋子為生活帶來不同的心情顏色 &nbsp;&nbsp;&nbsp;&nbsp;<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每雙鞋都有自己的故事
        等著我們撰寫一章章的故事
        人生可能會後悔，但不要造成遺憾吧<br>
        進來看看吧!
        我們彼此都不知道我們會有什麼樣的體驗!<br>
        </h1>
       <p></p>
    </div>
        
    
       

    <div class="hihi"> 
    <%
        if(con.isClosed()){
            out.println("建立連線失敗");
        }
        else{
            out.println("<div class='top_title_box22'></div>");
            out.println("<div class='top_title_box'></div> ");
            out.println("<p class='top_title'>熱門商品</p>");
            out.println("<div class='hot_box' >");


            sql="SELECT `pname`, `picture`, `pid`, SUM(`tolqua`) FROM `order_record` GROUP BY `pname` ORDER BY SUM(`tolqua`) DESC;";
            ResultSet prors=con.createStatement().executeQuery(sql);

            int i=0;

            while(prors.next()){
                i+=1;
                if(i<5){
                    out.println("<div class='hot_shoe'>");
                    out.println("<form method='post' action='product.jsp' style='font-size:35px;'>");
                    out.println("<input type='image' class='hot_picture' src='"+prors.getString(2)+"' >");
                    out.println("<p><div class='chocolate_word1'>"+prors.getString(1)+"</div></p>");
                    out.println("<input type='hidden' name='shoe' value='"+prors.getString(3)+"'>");
                    out.println("</form>");
                    out.println("</div>");
                }
            }


            out.println("</div>");
            out.println("<div>");
        }
    %>


    <%
        out.println("<div class='top_title_box2'></div>");
        out.println("<div class='top_title_box4'></div>");
        out.println("<p class='top_title2'>新品上架</p>");
        out.println("</div>");
        out.println("<div class='hot_box' >");


        sql="SELECT * FROM `product` ORDER BY `pid` DESC";  
        ResultSet newprors=con.createStatement().executeQuery(sql);

        int i=0;

        while(newprors.next()){
            i+=1;
            if(i<5){
                out.println("<div class='hot_shoe'>");
                out.println("<form method='post' action='product.jsp' style='font-size:35px;'>");
                out.println("<input type='image' class='hot_picture' src='"+newprors.getString(3)+"' >");
                out.println("<p><div class='chocolate_word1'>"+newprors.getString(2)+"</div></p>");
                out.println("<input type='hidden' name='shoe' value='"+newprors.getString(1)+"'>");
                out.println("</form>");
                out.println("</div>");
            }
        }
        out.println("</div>");
    
    %>
   
   
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
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">


</script>
</body>
</html>