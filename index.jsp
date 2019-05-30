<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>Delicous food</title>
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet" href="css/style-lunbo.css">
<link rel="stylesheet" href="css/sfq.css">




<style>
    * {
        padding: 0;
        margin: 0;
    }
    body {

        background: url("img/img4/bg.jpg") no-repeat fixed ;  
        background-size:cover;
        opacity: 0.95;
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
    .content-1 {
        position: relative;
        width: 100%;
        height: 100%;
        float: left;
        padding: 0;
        background-color: #E8E8E8;
        margin: 0 auto;
        text-align: center;
    }
    .content-1 .qd {
        margin: 0 auto;
    }
    .content-1-1 {
        margin: 0 auto;
        width: 76%;
        height: 600px;
    }
    .img-menu {
        float: left;
        display: inline-block;
        margin: 10px;
        border: 8px solid #cccccc;
        overflow: hidden;
    }

    .content-1 .img-biger {
        cursor: pointer;
        transition: all 0.5s;
    }
    .content-1 .img-biger:hover{
        transform: scale(1.15);
    }
    #do {
        width: 524px;
        height: 348px;
    }
    #bf {
        width: 524px;
        height: 348px;
    }

    .content-1 h2 {
        color: #212121;
        font-size: 4rem;
        /*margin: 0;*/
        text-transform: uppercase;
        font-weight: 400;
        font-family: 'Catamaran', sans-serif;
        margin-top: 50px;
        margin-bottom:20px;

    }

    .content-2 {
        width: 100%;
        height: 200px;
        float: left;
        /*background-color: white;*/
        opacity: 0.6;
    }

    .content-3 {
        width: 100%;
        height: 600px;
        float: left;
        padding-top: 100px;
        background-color:white;
        text-align: center;
        position: relative;
        overflow:hidden;
        z-index: 10;
    }
    .content-3 #dm {
        float: right;
        margin-right: 100px;
        position: absolute;
        top: 150px;
        right: 0;
        display: inline-block;
        z-index: 0;
    }

    .bottom {
        width: 100%;
        height: 100px;
        float: left;
        background-color: #30383C;
        color: white;
        text-align: center;
    }
	.hide {
		display: none;
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
                <li class="goBottom"><a href="javascript:;">菜单</a></li>
                <li><a href="about.jsp">关于</a></li>
                    <li class="dropdown">

                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          	  <%=message %>的
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">账户</a></li>
                            <li class="divider"></li>
                            <li><a href="gwc.jsp">购物车</a></li>
                            <li class="divider"></li>
                            <li><a href="pay.html">订单</a></li>
                            <li class="divider"></li>
                            <li><a href="zx.jsp" id="zx">注销</a></li>
                        </ul>
                    </li>
                    <li class="dl"><a href="dl.jsp">登陆</a></li>
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




    <div class="siler">
        <section class="pc-banner">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide swiper-slide-center none-effect">
                    <a href="#">
                        <img src="img/img4/1.jpg">
                    </a>
                    <div class="layer-mask"></div>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img src="img/img4/2.jpg">
                    </a>
                    <div class="layer-mask"></div>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img src="img/img4/3.jpg">
                    </a>
                    <div class="layer-mask"></div>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img src="img/img4/4.jpg">
                    </a>
                    <div class="layer-mask"></div>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img src="img/img4/5.jpg">
                    </a>
                    <div class="layer-mask"></div>
                </div>
            </div>
            <div class="button">
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
        </section>
    </div>

    <div class="content-1">
            <h2>WELCOME</h2>
            <div class="content-1-1">
            <div class="img-menu">
                <img id="do" class="img-biger"  src="img/01.jpg">
            </div>
            <div class="img-menu" >
                <img id="bf" class="img-biger" src="img/02.jpg" alt="">
            </div>
            <div class="qd">
                <h2>我们期待</h2>
                <h2 >能给你不一样的惊喜</h2>
            </div>
            </div>

    </div>
    <div class="content-2">

    </div>
    <div class="content-3" id="content-3">
        <div id="box">
            <ul>
                <li><a href="menu.jsp" class="tooltip-test" data-toggle="tooltip" data-placement="right" title="中式"></a></li>
                <li><a href="menu.jsp" class="tooltip-test" data-toggle="tooltip" data-placement="left" title="西式"></a></li>
                <li><a href="menu.jsp" class="tooltip-test" data-toggle="tooltip" data-placement="left" title="饮品"></a></li>
                <li><a href="menu.jsp" class="tooltip-test" data-toggle="tooltip" data-placement="left" title="甜点"></a></li>
            </ul>
        </div>
        <div id="dm">
                <img  src="img/dm.png" width="380" alt="">
        </div>

    </div>

    <div class="bottom">
        <h2>Delicious food</h2>
        <span>2019.5.12 tutu</span>
    </div>

</body>
<script src="JS/jquery-3.4.1.min.js"></script>
<script src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/swiper.min.js"></script>

<script src="JS/lunbo.js"></script>
<script src="JS/sfq.js"></script>
<script>
    $(function () {
    	
    	
    	var message = '<%=message%>';
        
    	if(message=='null'){
    		$(".dropdown").addClass("hide");
    		console.log("为空")
    	}else {
    		$(".dl").addClass("hide");
    		console.log("不为空")
    	}
    		
    	
        $(".goBottom").click(function () {
            $("html,body").animate({scrollTop:1820},500);
        });
        $(function () { $("[data-toggle='tooltip']").tooltip(); });
        $("#reg").click(function () {
            $(location).attr('href', 'reg.jsp');
        });
       
        

    });


</script>
</html>