<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>详情</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/myAlert.css" />

    <style>
        body {
            background: url("img/img4/bg.jpg") no-repeat fixed ;
            background-size:cover;
        }


        .nav-left {

            margin-left: 65px;
        }
        .navbar {
            margin-bottom: 50px;
        }
        .agileits-logo {
            text-align:center;
            width: 100%;

        }
        .agileits-logo h1{
            margin:0;
        }
        .agileits-logo h1 a{
            font-size: 1em;
            color: #ffffff;
            text-decoration: none;
            font-family: 'Catamaran', sans-serif;
            padding: .5em;
            text-transform: uppercase;
            letter-spacing: 3px;
            border: solid 4px #FFFFFF;
        }
        .agileits-logo h1 a span{
            text-transform: capitalize;
            font-weight: 300;
            color: #F44336;
            letter-spacing: 1px;
            font-size: .8em;
        }
        ul li {
            list-style: none;
        }
        .content-1 {
            position: relative;
            width: 100%;
            height: 100%;
            padding-bottom: 50px;
            margin: 0  auto;
            /*background-color: yellow;*/
            overflow: hidden;
        }
        .content-1 .biger {
            height: 100%;
            width: 76%;
            padding-top: 10px;
            padding-left: 10px;
            float: left;
        }
        .biger .biger2 {
            border-radius: 10px;
            position: relative;
            width: 100%;
            height: 537px;
            margin-top: 25px;
            padding-top: 75px;
            padding-left: 50px;
            background-color: white;
            float: left;
            box-shadow: 5px 10px 10px 0px rgba(216, 216, 216, 0.78);
        }
        .biger2 ul {
            float: left;
        }
        .biger2 span {
            border-radius: 10px;
            margin-left: 10px;
            position: absolute;
            color: white;
            font-size: 2.5em;
            width: 100px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            background: rgba(0, 0,0,0.3);
            opacity: 0.3;
        }
        .biger span:hover {
            cursor: pointer;
            background: rgba(0,0,0,0.8);
        }
        .biger2 span:first-child {
            top: 20px;
            left: 40px;
        }
        .biger2 span:nth-child(2) {
            bottom: 35px;
            left: 40px;
        }
        .biger ul li {
            list-style: none;
            cursor: pointer;
        }
        .biger2 ul img {
            width: 100px;
            border: 2px solid #ccc;
            margin-bottom: 10px;
        }
        .food-left {

            border-radius: 10px;
            border: 2px solid #ccc;
            margin-left: 40px;
            width: 70%;
            float: left;
        }
        .food-left img {
            border-radius: 10px;
        }
        .food-right {
            float: left;
            width: 20%;
            height: 500px;
        }
        .card-ad .ad:hover {
            background-color: #0F3370;
            color:white ;
        }
        .card {
            border-radius: 10px;
            width: 100%;
            height:100%;
            background-color: white;
            float: left;
            margin: 20px;
            box-shadow: 5px 10px 10px 0px rgba(216, 216, 216, 0.78);
            padding: 20px;
        }

        .card ul {
            display: block;
            list-style-type: disc;
            padding-inline: 40px;
        }
        ul.card-info {
            margin: 1.5em 0;
        }
        .card-info li.left-text {
            font-size: 1.1em;
            font-weight: 600;
            margin-bottom: 10px;
            font-family: 'Open Sans', sans-serif;
            display: inline-block;
        }
        .card-info li.right-text {
            color: red;
            font-size: 18px;
            margin-left: 3em;
        }
        .card .parent {
            margin-left: 20px;
            margin-bottom: 20px;
        }
        .card-ad .ad {
            font-size: 13px;
            letter-spacing: 1px;
            text-transform: uppercase;
            border-radius: 25px;
            color: #900000;
            border: none;
            font-weight: 600;
            background: #ffa200;
            margin-top: 40px;
            cursor: pointer;
            width: 150px;
            height: 52px;
            font-family: 'Open Sans', sans-serif;
            transition: all 0.2s ease-in-out;
        }
        .parent select {
            width: 100px;
            border-radius: 5px;
            border:1px solid #ddd;
            text-align:center;
            color:#666;
            box-shadow: 2px 2px 5px 0px rgba(50, 50, 50, 0.35);
        }

        .bottom {
            width: 100%;
            height: 100px;
            float: left;
            background-color: #30383C;
            color: white;
            text-align: center;
        }

        .pay .pay-ad {
            float: right;
            margin-top: 20px;
            margin-right: 30px;
            height: 50px;
            width: 300px;
        }
       .pay-ad .ad {
           letter-spacing: 1px;
           text-transform: uppercase;
           border: none;
           font-weight: 600;
           padding: 14px 43px;
           margin-top: 20px;
           cursor: pointer;
           width: 280px;
           height: 52px;
           font-family: 'Open Sans', sans-serif;
           transition: all 0.2s ease-in-out;
           border-radius: 25px;
           font-size: 20px;
           color: white;
           background: deepskyblue;
        }
        .pay-ad .ad:hover {
            background-color: #0F3370;
            color:white ;
        }
    </style>
</head>
<%
// 	String sno = pageContext.getRequest().getParameter("info") ; 
	String message = (String)session.getAttribute("message");
%>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid nav-left">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">主页</a>
        </div>
        <div>
            <ul class="nav navbar-nav ">
                <li class="goBottom"><a href="index.jsp#content-3">菜单</a></li>
                <li><a href="about.html">关于</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                         <%=message %>的
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="gwc.jsp">购物车</a></li>
                        <li class="divider"></li>
                        <li><a href="pay.html">订单</a></li>
                        <li class="divider"></li>
                        <li><a href="dl.jsp">注销</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="text-center">
            <div class="agileits-logo">
                <h1><a href="index.jsp">Delicious<span> Food</span></a></h1>
            </div>
            </p>
        </div>
    </div>
</div>

<div class="content-1">
    <div class="biger">
        <div class="biger2">
            <ul>
                <span>∧</span>
                <span>∨</span>
                <li><a title="img/west/1.jpg"><img  src="img/west/1.jpg" width="120" height="84" ></a></li>
                <li><a title="img/west/3.jpg"><img  src="img/west/3.jpg" width="120" height="84"></a></li>
                <li><a title="img/west/2.jpg"><img  src="img/west/2.jpg" width="120" height="84"></a></li>
                <li><a title="img/west/4.jpg"><img  src="img/west/4.jpg" width="120" height="84"></a></li>

            </ul>
            <div class="food-left">
                <img src="img/west/2.jpg" style="width: 100%;" alt="">
            </div>
        </div>
    </div>
    <div class="food-right">
        <div class="card" id="card-1">
            <ul class="card-info">
                <li class="left-text">菲力牛排</li>
                <li>菲力牛排四个字中的菲力，指的是牛里脊肉（beef tenderloin）。在澳洲，这块肉被称为“眼菲力”，在法国和英国被称为filet和fillet，中文音译菲力。菲力牛排就是用一定厚度的牛里脊肉做出的牛排。</li>
                <li class="right-text"><i>$45.00</i></li>
            </ul>
            <div class="parent">
                <select >
                    <option>一分熟</option>
                    <option>三分熟</option>
                    <option>五分熟</option>
                    <option selected>七分熟</option>
                    <option>全熟</option>
                </select>
            </div>
            <div class="parent">
                <select>
                    <option>黑椒酱</option>
                    <option>蘑菇酱</option>
                    <option>红酒酱</option>
                    <option>洋葱酱</option>
                </select>
            </div>
            <div class="parent">
                <select>
                    <option>9:00</option>
                    <option>9:30</option>
                    <option>10:00</option>
                    <option>10:30</option>
                    <option>11:00</option>
                    <option>13:00</option>
                    <option>12:00</option>
                    <option>12:30</option>
                </select>
            </div>
            <div class="card-ad">
                <button type="submit" class="ad" >add to cart</button>
            </div>
        </div>

    </div>
    <div class="pay" >
        <div class="pay-ad">
            <button type="submit" class="ad" >go to pay</button>
        </div>
    </div>
</div>

<div class="bottom">
    <h2>Delicious food</h2>
    <span>2019.5.12 tutu</span>
</div>


</body>
<script src="JS/jquery-3.4.1.min.js"></script>
<script src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/myAlert.js" ></script>
<script>
    $(function(){
        var $div="<div id='div1'><img style='border-radius:25px;width: 700px;height: 500px;'alt='' ></div>";
        $(".biger a").mouseover(function(event){ //鼠标移入
            $("body").append($div);//追加到网页中
            $("#div1 img").attr("src",$(this).attr("title"));//设置显示图片的img标签的src路径
        });

        $(".biger a").mouseout(function(){//鼠标移出
            $("#div1").remove();//删除div
        });

        $(".biger a").mousemove(function(event){
            //鼠标移动 event是事件对象 ,event.clientX 获得鼠标当前的X轴坐标,event.clientY 获得鼠标当前的Y轴坐标
            var x=event.clientX+20;
            var y=event.clientY+20;
            $("#div1").css({position:"absolute",left:x,top:y});//设置div绝对定位 坐标就是距离鼠标当前的位置
        });
        $(".pay-ad").click(function () {
            $(location).attr('href', 'gwc.jsp');
        });
        $(".card-ad").click(function () {
            $.myToast('添加成功');
        });
    });
</script>
</html>