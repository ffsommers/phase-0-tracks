$(document).ready($(function() {

    $(".logo").ready(function(){
        $(".logo").animate({
            left: '100px',
            fontSize: '40px'     
        });
    });

    $("h2").click(function(){
        $(".detailed-info").slideDown("slow");
    });

   
}));