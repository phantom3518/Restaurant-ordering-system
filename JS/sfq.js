$(function () {
    var $li =  $("#box li")
    for(var i=0;i<$li.length;i++){
        $li.eq(i).css("background","url(images/"+(i+1)+".jpg) no-repeat")
            .css("background-size","600px")
    }
    $li.mouseenter(function () {
        $(this).stop().animate({width:500}).siblings().stop().animate({width:100})
    }).mouseleave(function () {
        $li.stop().animate({width:200})
    })
});