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
    <nav>
        <div class="menu">
            <ul>
                
                <li class="menu1">
                    <div class="dropdown">
                        <button class="dropbtn">常見問題</button>
                        <div class="dropdown-content">
                            <a href="">Q&A</a>
                            <a href="">如何挑選</a>
                        </div>
                    </div>
                </li>
                <li class="menu1"> 
                    <a href="member.html" style="text-decoration: none" class="menubtn">關於我們</a>
                </li>

                <li class="menu1">
                    <div class="dropdown">
                        <a href="model.jsp"><button class="dropbtn" >商品分類</button></a>
                        <div class="dropdown-content">
                            <a href="model.jsp#skater">板鞋<br></a>
                            <a href="model.jsp#sneaker">運動鞋</a>
                            <a href="model.jsp#boots">靴子<br></a>
                            <a href="model.jsp#casual">休閒鞋<br></a>
                        </div>
                    </div>
                </li>
                <li class="menu1">
                    <a href="momber_form.html" style="text-decoration: none;" class="menubtn">回饋表單</a>
                </li>
            </ul>
        </div>

    </nav>

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
    <section>

            <%
                String product_intro=request.getParameter("shoe");
                session.setAttribute("shoeone", product_intro);

                sql="SELECT * FROM `product` WHERE `pid`='"+product_intro+"'";
                ResultSet rs=con.createStatement().executeQuery(sql);
                rs.next();

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
                out.println("<div class='but'>");
                out.println("<li>");
                out.println("<button><b>"+rs.getString(8)+"</b></button>");
                out.println("</li>");
                out.println("<li>");
                out.println("<button><b>"+rs.getString(9)+"</b></button>");
                out.println("</li>");
                out.println("<li>");
                out.println("<button><b>"+rs.getString(10)+"</b></button>");
                out.println("</li>");
                out.println("<li>");
                out.println("<button><b>"+rs.getString(11)+"</b></button>");
                out.println("</li>");
                out.println("</div>");
                out.println("<form class='shopp' action='addtocart.jsp'>");
                out.println("<label class='lab'>訂購數量:</label>");
                out.println("<input type='number' min='1' class='gogo1' name='buyqua' value=1>");
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
                                    <div class="rating">
                                        <input type="radio" name="star" id="star1">
                                        <label for="star1"></label>
                                        <input type="radio" name="star" id="star2">
                                        <label for="star2"></label>
                                        <input type="radio" name="star" id="star3">
                                        <label for="star3"></label>
                                        <input type="radio" name="star" id="star4">
                                        <label for="star4"></label>
                                        <input type="radio" name="star" id="star5">
                                        <label for="star5"></label>
                                        <input type="radio" name="star" id="star6">
                                        <label for="star6"></label>
                                        <input type="radio" name="star" id="star7">
                                        <label for="star7"></label>
                                        <input type="radio" name="star" id="star8">
                                        <label for="star8"></label>
                                        <input type="radio" name="star" id="star9">
                                        <label for="star9"></label>
                                        <input type="radio" name="star" id="star10">
                                        <label for="star10"></label>
                                    </div>                        
                                    <input type="text" class="haha" id="" name="content" placeholder="留下你的留言吧">
                                    <input type="hidden" name="product" value="<%=product_intro%>">
                                    <input class="gogo2" type="submit" value="送出評價">
                            </form>
                        </div>
                <%
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
                        out.println("評價:★★★★★★★★★★<br>");
                        out.println("留言內容:"+rs.getString(3)+"<br>");
                        out.println("留言時間:"+rs.getString(4)+"<br>");
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
    <script src="./asset/js/sign.js"></script>
</body>
</html>