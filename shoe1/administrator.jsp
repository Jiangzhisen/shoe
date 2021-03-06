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
    <title>管理畫面</title>

    <link rel="stylesheet" type="text/css" href="./asset/css/administrator1.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/administrator2.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/3.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/1.css" />

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
        <%
            if(acct.equals("admin")){

        %>
    
        <div class="QAZ" style="height:3400px;">
            <div class="lp">
                <div class="cont1" style="height: 1100px;">
        
                    <div class="login">
        
                        <h1>新增商品</h1>
                        <br><br>
                        <form method="post" action="addProduct.jsp">
                            請輸入商品名稱  <input type="text" class="uname" required name="pname">
                            <div class="tab"></div>
                            請輸入商品顏色   <input type="text" class="pass" required name="color">
                            <div class="tab"></div>
                            請選擇商品類別   &nbsp;<select size="1" class="pass6" name="category" style="font-size:25px; width: 250px; margin: 18px; padding: 5px;">
                                <option>板鞋</option>
                                <option>運動鞋</option>
                                <option>靴子</option>
                                <option>休閒鞋</option>
                            </select>
                            <div class="tab"></div>
                            請輸入商品尺寸1   <input type="text" class="pass" required name="size1">
                            <div class="tab"></div>
                            請輸入商品尺寸2   <input type="text" class="pass" required name="size2">
                            <div class="tab"></div>
                            請輸入商品尺寸3   <input type="text" class="pass" required name="size3">
                            <div class="tab"></div>
                            請輸入商品尺寸4   <input type="text" class="pass" required name="size4">
                            <div class="tab"></div>
                            請輸入商品介紹   <input type="text" class="pass" required name="intro">
                            <div class="tab"></div>
                            請輸入商品價格   <input type="text" class="pass" required name="price">
                            <div class="tab"></div>
                            請輸入商品庫存   <input type="text" class="pass" required name="quantity">
                            <div class="tab"></div>
                            請輸入圖片名稱   <input type="text" class="pass" required name="picture">
                            <div class="tab"></div>
                            <br>
                            <input type="submit" value="送出" class="submit" style="cursor: pointer;">
                        </form>
                    </div>
                </div>

                <div class="cont1" style="height: 1100px;">
        
                    <div class="login">
        
                        <h1>修改商品</h1>
                        <br><br>
                        <form method="get" action="modify_Product.jsp">
                            請輸入商品名稱  <input type="text" class="uname" required name="pname">
                            <div class="tab"></div>
                            請輸入商品顏色   <input type="text" class="pass" required name="color">
                            <div class="tab"></div>
                            請選擇商品類別   &nbsp;<select size="1" class="pass6" name="category" style="font-size:25px; width: 250px; margin: 18px; padding: 5px;">
                                <option>板鞋</option>
                                <option>運動鞋</option>
                                <option>靴子</option>
                                <option>休閒鞋</option>
                            </select>
                            <div class="tab"></div>
                            請輸入商品尺寸1   <input type="text" class="pass" required name="size1">
                            <div class="tab"></div>
                            請輸入商品尺寸2   <input type="text" class="pass" required name="size2">
                            <div class="tab"></div>
                            請輸入商品尺寸3   <input type="text" class="pass" required name="size3">
                            <div class="tab"></div>
                            請輸入商品尺寸4   <input type="text" class="pass" required name="size4">
                            <div class="tab"></div>
                            請輸入商品介紹   <input type="text" class="pass" required name="intro">
                            <div class="tab"></div>
                            請輸入商品價格   <input type="text" class="pass" required name="price">
                            <div class="tab"></div>
                            請輸入商品庫存   <input type="text" class="pass" required name="quantity">
                            <div class="tab"></div>
                            請輸入圖片名稱   <input type="text" class="pass" required name="picture">
                            <div class="tab"></div>
                            <br>
                            <input type="submit" value="送出" class="submit" style="cursor: pointer;">
                        </form>
                    </div>
                </div>

                <div class="cont2">
        
                    <div class="login">
        
                        <h1>刪除商品</h1>
                        <br><br>
                        <form method="post" action="delproduct.jsp">
                            請輸入商品名稱  <input type="text" class="uname" required name="pname">
                            <div class="tab"></div>
                            <br>
                            <input type="submit" value="送出" class="submit" style="cursor: pointer;">
                        </form>
                    </div>
                </div>

                <div class="cont2">
        
                    <div class="login">
        
                        <h1>存貨管理</h1>
                        <br><br>
                        <form method="post" action="product_manage.jsp">
                            <div class="tab"></div>
                            <br>
                            <input type="submit" value="查詢" class="submit" style="cursor: pointer;">
                        </form>
                    </div>
                </div>

                <div class="cont2">
        
                    <div class="login">
        
                        <h1>訂單紀錄</h1>
                        <br><br>
                        <form method="post" action="order_record.jsp">
                            <div class="tab"></div>
                            <br>
                            <input type="submit" value="查詢" class="submit" style="cursor: pointer;">
                        </form>
                    </div>
                </div>

                <div class="cont2">
        
                    <div class="login">
        
                        <h1>回饋反映</h1>
                        <br><br>
                        <form method="post" action="feedback_record.jsp">
                            <div class="tab"></div>
                            <br>
                            <input type="submit" value="查詢" class="submit" style="cursor: pointer;">
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <%
            }
            else{
                out.println("<script language='javascript'>");
                out.println("alert('您不是管理員 ! !');");
                out.println("window.location.href='index.jsp'");
                out.println("</script>");
            }

        %>
    
    <script src="./asset/js/sign.js"></script>
        <footer>
            <p> MADE BY CHEN-PIN-JUI, WONG-HAO-SIANG<br>
                沒有版權 愛怎麼抄就怎麼抄
            </p>
        </footer>
</body>
</html>