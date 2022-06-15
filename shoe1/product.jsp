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
    <title>商品</title>
    <style>
        @import "asset/css/1.css";
        @import "asset/css/2.css";


        .but label{
            float: left;
            width: 150px;
            outline: none; 
            border: none;
            cursor: pointer;
            border-radius: 10px;
            box-shadow: 0 5px #999;
            font-size: 25px;
            background-color: #d9b981;
            text-align: center;
        }

        .but label:hover{
            border: none;
            cursor: pointer;
            border-radius: 10px;
            font-size: 25px;
            box-shadow: 0;
            color: #fff;
            background-color: black;
        }

        #size1,
        #size2,
        #size3,
        #size4 {
            display: none;
        }
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
                        <input type="password" id="pass" placeholder="密碼" required name="pass1">>
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
                String product_intro=request.getParameter("shoe");
                session.setAttribute("shoeone", product_intro);

                sql="SELECT * FROM `product` WHERE `pid`='"+product_intro+"'";
                ResultSet rs=con.createStatement().executeQuery(sql);
                rs.next();
                int quantity=Integer.parseInt(rs.getString(5));

                out.println("<div class='shoepic'>");
                out.println("<img class = 'pic' src='"+rs.getString(3)+"'>");
                out.println("</div>");
                out.println("<div class='detail'>");
                out.println("<h1 class='tit'>"+rs.getString(2)+"</h1>");
                out.println("<p>");
                out.println("<b>顏色:</b>"+rs.getString(7)+"<br>");
                out.println("<b>簡介:</b>"+rs.getString(4)+"<br>");
                out.println("<b>庫存:</b>"+rs.getString(5)+"<br>");
                out.println("<b>價錢:</b>$"+rs.getString(6)+"<br>");
                out.println("<b>尺碼: </b><br>");
                out.println("</p>");
                out.println("<form class='shopp' action='addtocart.jsp'>");
                out.println("<div class='but'>");
                out.println("<li>");
                out.println("<label class='size1' for='size1' onclick='colorchange1()'><b>"+rs.getString(8)+"</b></label>");
                out.println("<input type='radio' id='size1' name='size' value='"+rs.getString(8)+"' checked>");
                out.println("</li>");
                out.println("<li>");
                out.println("<label class='size2' for='size2' onclick='colorchange2()'><b>"+rs.getString(9)+"</b></label>");
                out.println("<input type='radio' id='size2' name='size' value='"+rs.getString(9)+"'>");
                out.println("</li>");
                out.println("<li>");
                out.println("<label class='size3' for='size3' onclick='colorchange3()'><b>"+rs.getString(10)+"</b></label>");
                out.println("<input type='radio' id='size3' name='size' value='"+rs.getString(10)+"'>");
                out.println("</li>");
                out.println("<li>");
                out.println("<label class='size4' for='size4' onclick='colorchange4()'><b>"+rs.getString(11)+"</b></label>");
                out.println("<input type='radio' id='size4' name='size' value='"+rs.getString(11)+"'>");
                out.println("</li>");
                out.println("</div>");
                out.println("<label class='lab'>訂購數量:</label>");
                out.println("<input type='number' min='1' max='"+quantity+"' class='gogo1' name='buyqua' value=1 oninput='if(value<1)value=1;if(value>="+quantity+")value="+quantity+"'>");
                out.println("<input type='submit' value='加入購物車' class='gogo'>");
                out.println("<input type='hidden' name='shoeid' value="+product_intro+">");
                out.println("</form>");
                out.println("</div>");
            
            %>
    </section>
    <section>
        <div class="comments">
            <div class="combox">
                <h1 class="tit2">留言板</h1>

                        <div class="stars">
                            <form class="talk" action="addContent.jsp">
                                    <div class="rating" style="margin-left:35%;">
                                        <input type="radio" name="star" id="star1" value="1">
                                        <label for="star1"></label>
                                        <input type="radio" name="star" id="star2" value="2">
                                        <label for="star2"></label>
                                        <input type="radio" name="star" id="star3" value="3">
                                        <label for="star3"></label>
                                        <input type="radio" name="star" id="star4" value="4">
                                        <label for="star4"></label>
                                        <input type="radio" name="star" id="star5" value="5">
                                        <label for="star5"></label>
                                    </div>                        
                                    <input type="text" class="haha" id="" name="content" placeholder="留下你的留言吧">
                                    <input type="hidden" name="product" value="<%=product_intro%>">
                                    <input class="gogo2" type="submit" value="送出評價">
                            </form>
                        </div>
                <%
                    request.setCharacterEncoding("UTF-8");
                    String shoeone1=request.getParameter("shoe");
                    sql="SELECT * FROM `board` WHERE `product`='"+shoeone1+"'";
                    rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
                    rs.last();
                    int total_content=rs.getRow();



                    sql="SELECT * FROM `board` WHERE `product`='"+shoeone1+"' ORDER BY `GBNO` DESC";

                    rs=con.createStatement().executeQuery(sql);
                    while(rs.next()){
                        out.println("<div class='comm'>");
                        out.println("會員姓名:"+rs.getString(2)+"<br>");
                        out.println("評價:"+rs.getString(4)+"<br>");
                        out.println("留言內容:"+rs.getString(3)+"<br>");
                        out.println("留言時間:"+rs.getString(5)+"<br>");
                        out.println("</div>");
                    }
                    con.close();
                    session.removeAttribute("shoeone");
                
                %>
                <br><br><br>
            </div>
        </div>

    </section>
    <footer>
        <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
            沒有版權 愛怎麼抄就怎麼抄
        </p>
    </footer>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="./asset/js/sign.js"></script>
    <script>
        window.onload=function (){
            $('.size1').css('border','none');
            $('.size1').css('border-radius','none');
            $('.size1').css('font-size','25px');
            $('.size1').css('box-shadow','0');
            $('.size1').css('color','#fff');
            $('.size1').css('background-color','black');

            $('.size2').css('width','150px');
            $('.size2').css('outline','none');
            $('.size2').css('border','pointer');
            $('.size2').css('cursor','0');
            $('.size2').css('border-radius','10px');
            $('.size2').css('box-shadow','0 5px #999');
            $('.size2').css('font-size','25px');
            $('.size2').css('background-color','#d9b981');
            $('.size2').css('color','black');
            $('.size2').css('text-align','center');

            $('.size3').css('width','150px');
            $('.size3').css('outline','none');
            $('.size3').css('border','pointer');
            $('.size3').css('cursor','0');
            $('.size3').css('border-radius','10px');
            $('.size3').css('box-shadow','0 5px #999');
            $('.size3').css('font-size','25px');
            $('.size3').css('background-color','#d9b981');
            $('.size3').css('color','black');
            $('.size3').css('text-align','center');

            $('.size4').css('width','150px');
            $('.size4').css('outline','none');
            $('.size4').css('border','pointer');
            $('.size4').css('cursor','0');
            $('.size4').css('border-radius','10px');
            $('.size4').css('box-shadow','0 5px #999');
            $('.size4').css('font-size','25px');
            $('.size4').css('background-color','#d9b981');
            $('.size4').css('color','black');
            $('.size4').css('text-align','center');
        }
    </script>
    <script>
        function colorchange1(){
            $('.size1').css('border','none');
            $('.size1').css('border-radius','none');
            $('.size1').css('font-size','25px');
            $('.size1').css('box-shadow','0');
            $('.size1').css('color','#fff');
            $('.size1').css('background-color','black');

            $('.size2').css('width','150px');
            $('.size2').css('outline','none');
            $('.size2').css('border','pointer');
            $('.size2').css('cursor','0');
            $('.size2').css('border-radius','10px');
            $('.size2').css('box-shadow','0 5px #999');
            $('.size2').css('font-size','25px');
            $('.size2').css('background-color','#d9b981');
            $('.size2').css('color','black');
            $('.size2').css('text-align','center');

            $('.size3').css('width','150px');
            $('.size3').css('outline','none');
            $('.size3').css('border','pointer');
            $('.size3').css('cursor','0');
            $('.size3').css('border-radius','10px');
            $('.size3').css('box-shadow','0 5px #999');
            $('.size3').css('font-size','25px');
            $('.size3').css('background-color','#d9b981');
            $('.size3').css('color','black');
            $('.size3').css('text-align','center');

            $('.size4').css('width','150px');
            $('.size4').css('outline','none');
            $('.size4').css('border','pointer');
            $('.size4').css('cursor','0');
            $('.size4').css('border-radius','10px');
            $('.size4').css('box-shadow','0 5px #999');
            $('.size4').css('font-size','25px');
            $('.size4').css('background-color','#d9b981');
            $('.size4').css('color','black');
            $('.size4').css('text-align','center');
        }


        function colorchange2(){
            $('.size1').css('width','150px');
            $('.size1').css('outline','none');
            $('.size1').css('border','pointer');
            $('.size1').css('cursor','0');
            $('.size1').css('border-radius','10px');
            $('.size1').css('box-shadow','0 5px #999');
            $('.size1').css('font-size','25px');
            $('.size1').css('background-color','#d9b981');
            $('.size1').css('color','black');
            $('.size1').css('text-align','center');


            $('.size2').css('border','none');
            $('.size2').css('border-radius','none');
            $('.size2').css('font-size','25px');
            $('.size2').css('box-shadow','0');
            $('.size2').css('color','#fff');
            $('.size2').css('background-color','black');


            $('.size3').css('width','150px');
            $('.size3').css('outline','none');
            $('.size3').css('border','pointer');
            $('.size3').css('cursor','0');
            $('.size3').css('border-radius','10px');
            $('.size3').css('box-shadow','0 5px #999');
            $('.size3').css('font-size','25px');
            $('.size3').css('background-color','#d9b981');
            $('.size3').css('color','black');
            $('.size3').css('text-align','center');

            $('.size4').css('width','150px');
            $('.size4').css('outline','none');
            $('.size4').css('border','pointer');
            $('.size4').css('cursor','0');
            $('.size4').css('border-radius','10px');
            $('.size4').css('box-shadow','0 5px #999');
            $('.size4').css('font-size','25px');
            $('.size4').css('background-color','#d9b981');
            $('.size4').css('color','black');
            $('.size4').css('text-align','center');

        }
        function colorchange3(){
            $('.size1').css('width','150px');
            $('.size1').css('outline','none');
            $('.size1').css('border','pointer');
            $('.size1').css('cursor','0');
            $('.size1').css('border-radius','10px');
            $('.size1').css('box-shadow','0 5px #999');
            $('.size1').css('font-size','25px');
            $('.size1').css('background-color','#d9b981');
            $('.size1').css('color','black');
            $('.size1').css('text-align','center');


            
            $('.size2').css('width','150px');
            $('.size2').css('outline','none');
            $('.size2').css('border','pointer');
            $('.size2').css('cursor','0');
            $('.size2').css('border-radius','10px');
            $('.size2').css('box-shadow','0 5px #999');
            $('.size2').css('font-size','25px');
            $('.size2').css('background-color','#d9b981');
            $('.size2').css('color','black');
            $('.size2').css('text-align','center');


            $('.size3').css('border','none');
            $('.size3').css('border-radius','none');
            $('.size3').css('font-size','25px');
            $('.size3').css('box-shadow','0');
            $('.size3').css('color','#fff');
            $('.size3').css('background-color','black');

            $('.size4').css('width','150px');
            $('.size4').css('outline','none');
            $('.size4').css('border','pointer');
            $('.size4').css('cursor','0');
            $('.size4').css('border-radius','10px');
            $('.size4').css('box-shadow','0 5px #999');
            $('.size4').css('font-size','25px');
            $('.size4').css('background-color','#d9b981');
            $('.size4').css('color','black');
            $('.size4').css('text-align','center');

        }
        function colorchange4(){
            $('.size1').css('width','150px');
            $('.size1').css('outline','none');
            $('.size1').css('border','pointer');
            $('.size1').css('cursor','0');
            $('.size1').css('border-radius','10px');
            $('.size1').css('box-shadow','0 5px #999');
            $('.size1').css('font-size','25px');
            $('.size1').css('background-color','#d9b981');
            $('.size1').css('color','black');
            $('.size1').css('text-align','center');

            $('.size2').css('width','150px');
            $('.size2').css('outline','none');
            $('.size2').css('border','pointer');
            $('.size2').css('cursor','0');
            $('.size2').css('border-radius','10px');
            $('.size2').css('box-shadow','0 5px #999');
            $('.size2').css('font-size','25px');
            $('.size2').css('background-color','#d9b981');
            $('.size2').css('color','black');
            $('.size2').css('text-align','center');


            $('.size3').css('width','150px');
            $('.size3').css('outline','none');
            $('.size3').css('border','pointer');
            $('.size3').css('cursor','0');
            $('.size3').css('border-radius','10px');
            $('.size3').css('box-shadow','0 5px #999');
            $('.size3').css('font-size','25px');
            $('.size3').css('background-color','#d9b981');
            $('.size3').css('color','black');
            $('.size3').css('text-align','center');


            $('.size4').css('border','none');
            $('.size4').css('border-radius','none');
            $('.size4').css('font-size','25px');
            $('.size4').css('box-shadow','0');
            $('.size4').css('color','#fff');
            $('.size4').css('background-color','black');
        }
    </script>
</body>
</html>