<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

    <title>每日精选</title>
    <link rel="stylesheet" href="css/bootstrap.css">

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
            letter-spacing: 1px;
            font-size: .8em;
            color: #F44336;

        }
        ul li {
            list-style: none;
        }
        .content-1 {
            /*position: relative;*/
            /*float: left;*/
            display: inline-block;
            width: 100%;
            height: 60px;
        }
        .text {
            background-color: rgba(255,255,255,0.4);
            border-radius: 20px;
        }
        .sld {
                margin: 0 20px 0 20px;
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
                <li class="goBottom"><a href="index.jsp#content-3">菜单</a></li>
                <li><a href="about.jsp">关于</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <%=message %>
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
<div class="content-1"></div>
<div class="htmlhalf-container">
    <div class="row clearfix">

        <div class="col-md-8 column sld">
            <div class="carousel slide" id="carousel-860721">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-860721">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-860721" class="active">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-860721">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="" src="img/west/s2.jpeg" />
                        <div class="carousel-caption">
                            <h4>
                                First Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item active">
                        <img alt="" src="img/west/s1.jpeg" />
                        <div class="carousel-caption">
                            <h4>
                                Second Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="img/west/s3.jpeg" />
                        <div class="carousel-caption">
                            <h4>
                                Third Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>

                </div> <a class="left carousel-control" href="#carousel-860721" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-860721" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        <div class="col-md-3 column text">
            <blockquote>
                <p>
                    米其林三星餐厅介绍
                </p>
                <p>&nbsp;&nbsp;&nbsp;在法国，厨师属于艺术家的范畴，法国还有一家全球闻名、历史悠久的为这些艺术家及他们的创作场所—餐厅做权威鉴定的机构：“米其林”。</p>
                <p>&nbsp;&nbsp;&nbsp;米其林的评审相当严谨与公正甚至近乎苛刻。截止2012年，全世界也只有106家米其林三星级餐厅。其星级评鉴分三级：一颗星是“值得”去造访的餐厅，是同类饮食风格中特别优秀的餐厅；两颗星餐厅的厨艺非常高明，是“值得绕远路”去造访的餐厅；三颗星是“值得特别安排一趟旅行”去造访的餐厅，有着令人永志不忘的美味，据说值得打“飞的”专程前去用餐。</p>
                <p>&nbsp;&nbsp;&nbsp;数着米其林的“星星”吃大餐，在欧洲是一种很高级别的享受，即使是米其林一星，在欧美的餐饮界也已经是很高的荣耀。
                    拥有米其林3星是餐饮界人士毕生最高追求。</p>
                <small>Someone famous <cite>Source Title</cite></small>
            </blockquote>
        </div>
    </div>
</div>
</body>
<script src="JS/jquery-3.4.1.min.js"></script>
<script src="JS/bootstrap.js"></script>
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
    });
</script>
</html>