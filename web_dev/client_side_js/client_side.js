var div = document.getElementsByTagName("div");
div[0].style.border = "30px solid orange";		
var el = document.createElement("img");
el.src = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/US_flag_48_stars.svg/220px-US_flag_48_stars.svg.png"
div[0].appendChild(el);

var count = 6;
var arr= [];
   for (var i = 0; i<count; i ++) {
       var text = document.createTextNode("TEXT");
       arr[i] = document.createElement("h1");
       arr[i].appendChild(text);
       div[0].appendChild(arr[i]);
   }