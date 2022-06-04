var star1 = document.getElementById('star1');
    var star2 = document.getElementById('star2');
    var star3 = document.getElementById('star3');
    var star4 = document.getElementById('star4');
    var star5 = document.getElementById('star5');
	var num = document.getElementById('starNum');
    
    
    star1.addEventListener("click",()=>{
        star1.style.color = "#bb7272";
        star2.style.color = "#bb7272";
        star3.style.color = "#bb7272";
        star4.style.color = "#bb7272";
        star5.style.color = "#bb7272";
		num.value="5";
    })
    star2.addEventListener("click",()=>{
        star1.style.color = "#ccc";
        star2.style.color = "#bb7272";
        star3.style.color = "#bb7272";
        star4.style.color = "#bb7272";
        star5.style.color = "#bb7272";
		num.value="4";

    })
    star3.addEventListener("click",()=>{
        star1.style.color = "#ccc";
        star2.style.color = "#ccc";
        star3.style.color = "#bb7272";
        star4.style.color = "#bb7272";
        star5.style.color = "#bb7272";
		num.value="3";

    })
    star4.addEventListener("click",()=>{
        star1.style.color = "#ccc";
        star2.style.color = "#ccc";
        star3.style.color = "#ccc";
        star4.style.color = "#bb7272";
        star5.style.color = "#bb7272";
		num.value="2";

    })
    star5.addEventListener("click",()=>{
        star1.style.color = "#ccc";
        star2.style.color = "#ccc";
        star3.style.color = "#ccc";
        star4.style.color = "#ccc";
        star5.style.color = "#bb7272";
		num.value="1";

    });