function show() {
   
    var login_box =document.getElementById("login_box1");

    login_box.style.display="block";

}
function hide() {
   
   var login_box =document.getElementById("login_box1");

   login_box.style.display="none";

}
function show2() {
    var login = document.getElementById("cont1");
    var signup = document.getElementById("cont2");
    var  login_box = document.getElementById("login_box1");

    if (login.style.display === "none") {

        login.style.display = "block";
        $('body').fadeIn(1000); //一開始淡入
        document.getElementById("uname").value="";
        document.getElementById("pass").value="";
        signup.style.display = "none"; 
    } else {
        login.style.display = "none"; 
        signup.style.display = "block";
        signup.style.visibility="visible";
     
        document.getElementById("name").value="";
        document.getElementById("uname2").value="";
        document.getElementById("pass2").value="";
        document.getElementById("cpass").value="";
    }
}