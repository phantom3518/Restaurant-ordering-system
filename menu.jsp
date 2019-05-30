<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>菜单</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/myAlert.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
        }
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
        .content-1 {
            position: relative;
            width: 100%;
            height: 100%;
            float: left;
            padding: 0;
            margin: 0 auto;
        }
        .food {
            background-color: yellow;
        }
        .westfood {
            display: inline-block;
            /*height:1000px;*/
            width: 220px;
            float: left;
            /*overflow: hidden;*/
        }
        .west-style {
            display: inline-block;
            height: 50px;
            width: 150px;
            background-color: #31393D;
            color: white;
            font-weight: 500;
            font-size: 1.5em;
            line-height: 50px;
            margin-bottom: 30px ;
            margin-top: 20px ;
            text-align: center;
            cursor: pointer;
            border-radius: 0 25px 25px 0 ;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            transition: width 0.1s linear;
        }
        .west-style:hover {
            background-color: #2FBBB9;
            line-height: 55px;
            height: 55px;
            width: 200px;
            border: 3px solid #ccc;
            border-left:none;
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
        }
        .shop {
            /*position: relative;*/
            /*width: 77%;*/
            /*height: 100%;*/
            /*float: left;*/
            /*background-color: skyblue;*/
            display: inline-block;

        }
        .card ul li {
            list-style: none;
        }

        .bottom {
            width: 100%;
            height: 100px;
            float: left;
            background-color: #30383C;
            color: white;
            text-align: center;
        }
        .card-line {
            margin-top: 20px;
        }
        .card {

            width: 252px;
            height: 400px;
            background-color: white;
            float: left;
            margin: 20px;
            box-shadow: 5px 10px 10px 0px rgba(216, 216, 216, 0.78);
            padding: 20px;
        }
        .card-img img {
            cursor: pointer;
        }
        .card .card-img{
            display: block;
            transition: all 0.35s ease-in-out;
        }
        .card:hover .card-img{
            transform: scale(0.9);
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
            font-family: 'Open Sans', sans-serif;
            display: inline-block;
        }
        .card-info li.right-text {
            color: red;
            font-size: 18px;
            font-family: "Narrow Italic";
            /*text-decoration: line-through;*/
            margin-left: 6em;
        }

        .card-ad .ad {
            font-size: 13px;
            letter-spacing: 1px;
            text-transform: uppercase;
            color: #900000;
            border: none;
            font-weight: 600;
            padding: 14px 43px;
            background: #ffa200;
            cursor: pointer;
            width: 100%;
            font-family: 'Open Sans', sans-serif;
            transition: all 0.2s ease-in-out;
        }
        .pay {
            margin: 0 auto;
            width: 300px;
        }
        .pay-ad .ad {

            width: 300px;
            border-radius: 25px;
            font-size: 20px;
            color: white;
            background: deepskyblue;
        }
        .card-ad .ad:hover {
            background-color: #0F3370;
            color:white ;
        }
		.hide {
		display: none;
		}


    </style>
</head>
<%
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
                            <li><a href="dl.jsp" id="zx">注销</a></li>
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
<form name="frmApp" action="" id="frmAppId" method="post" >
<div class="htmlhalf-container">
    <div class="row clearfix">
        <div class="col-md-12 column ">


            <div class="col-md-2">
                <div class="westfood">
                    <ul>
                        <li class="west-style"><a href="#"></a>法式</li>
                        <li class="west-style"><a href="#"></a>德式</li>
                        <li class="west-style"><a href="#"></a>意式</li>
                        <li class="west-style"><a href="#"></a>英式</li>
                        <li class="west-style"><a href="#"></a>美式</li>
                    </ul>
                </div>
            </div>
<!--             <form method="POST"> -->
            <div class="col-md-10">
                <div class="card-line">
                    <div class="card col-md-3" id="card-1">
                        <div class="card-img">
                            <img src="img/west/1.jpg" width="212" height="180" alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">菲力牛排</li>
                            <li class="right-text"><i>$45.00</i></li>
                        </ul>
                        <div class="card-ad">
                            <button type="submit" class="ad" name="test" value="1">add to cart</button>
							
                        </div>
                    </div>
                    <div class="card col-md-3" id="card-2">
                        <div class="card-img">
                            <img src="img/west/tg.jpg" width="212" height="180" alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">T骨牛排</li>
                            <li class="right-text"><i>$38.00</i></li>
                        </ul>
                        <div class="card-ad">
                             <button type="submit" class="ad" name="test" value="2">add to cart</button>
                        </div>
                    </div>
                    <div class="card col-md-3" id="card-3">
                        <div class="card-img">
                            <img src="img/west/xl.jpg" width="212" height="180" alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">西冷牛排</li>
                            <li class="right-text"><i>$35.00</i></li>
                        </ul>
                        <div class="card-ad">
                             <button type="submit" class="ad" name="test" value="3">add to cart</button>
                        </div>
                    </div>
                    <div class="card col-md-3" id="card-4">
                        <div class="card-img">
                            <img src="img/west/ry.jpg" width="212" height="180" alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">肉眼牛排</li>
                            <li class="right-text"><i>$40.00</i></li>
                        </ul>
                        <div class="card-ad">
                             <button type="submit" class="ad" name="test" value="4">add to cart</button>
                        </div>
                    </div>
                </div>
                <div class="card-line">
                    <div class="card" id="card-5">
                        <div class="card-img">
                            <img src="img/west/01.jpg"  width="212" height="180" alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">Spaghetti长形意大利面</li>
                            <li class="right-text"><i>$18.00</i></li>
                        </ul>
                        <div class="card-ad">
                             <button type="submit" class="ad" name="test" value="5">add to cart</button>
                        </div>
                    </div>
                    <div class="card" id="card-6">
                        <div class="card-img">
                            <img src="img/west/02.jpg" width="212" height="180"  alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">Capellini天使的发丝</li>
                            <li class="right-text"><i>$25.00</i></li>
                        </ul>
                        <div class="card-ad">
                             <button type="submit" class="ad" name="test" value="6">add to cart</button>
                        </div>
                    </div>
                    <div class="card" id="card-7">
                        <div class="card-img">
                            <img src="img/west/03.jpg"  width="212" height="180" alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">Penne鹅毛笔通心粉</li>
                            <li class="right-text"><i>$20.00</i></li>
                        </ul>
                        <div class="card-ad">
                            <!--<button onClick="$.myToast('提示内容')">点击弹出自动消失的提示</button><br/><br/>-->
                             <button type="submit" class="ad" name="test" value="7">add to cart</button>
                        </div>
                    </div>
                    <div class="card" id="card-8">
                        <div class="card-img">
                            <img src="img/west/04.jpg"  width="212" height="180" alt="img">
                        </div>
                        <ul class="card-info">
                            <li class="left-text">Farfalle蝴蝶面</li>
                            <li class="right-text"><i>$30.00</i></li>
                        </ul>
                        <div class="card-ad">
                             <button type="submit" class="ad" name="test" value="8">add to cart</button>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="col-md-12">
                <div class="pay">
                    <div class="card-ad pay-ad">
                        <button type="button" class="ad">go to pay</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
	
		
		
	</form>
<div>

</div>	


	
	<%
	request.setCharacterEncoding("UTF-8");
    String t1 = request.getParameter("test"); // test为隐藏控件名
 		if(t1==null || t1.equals("")) 
		{
 			if(request.getMethod().equals("POST"))
 			out.print("<span style='color:red'>未添加</span>");
 			out.print("<span style='color:red'>"+t1+"</span>");
			out.close();
 		}
 		else if(message==null){
 			out.print(1);
 		}
 		else {
 			
        	Class.forName("com.mysql.jdbc.Driver");
        	String s="jdbc:mysql://localhost:3306/food?user=root&password=123456&characterEncoding=UTF-8";
       	 	Connection conn=DriverManager.getConnection(s);
        	Statement stat = conn.createStatement();
        	Statement stat2 = conn.createStatement();
        	
         		String sql="SELECT * FROM foodlist where food_id='"+t1+"'";
     			ResultSet rs = stat.executeQuery(sql);
    			rs.next();
//     			out.print("<p>"+rs.getString(2)+"</p>");
     			String sql2="SELECT * FROM food_ad where food_name='"+rs.getString(2)+"' and username = '"+message+"' ";
				ResultSet rs2 = stat2.executeQuery(sql2);
				
				if(rs2.next())	{	

					PreparedStatement stat3 =conn.prepareStatement("UPDATE  food_ad set food_num=food_num+1 where food_name='"+rs.getString(2)+"'");
					stat3.executeUpdate();
					stat.close();
					stat2.close();
					stat3.close();
				    conn.close();
					
				}else{
    				String sql1="insert into food_ad(food_name,food_price,food_img,username,food_num) values(?,?,?,?,?)";
					PreparedStatement pre = conn.prepareStatement(sql1); 
					
					pre.setString(1,rs.getString(2));
					pre.setString(2,rs.getString(3));
					pre.setString(3,rs.getString(4));
 					pre.setString(4,message);
 					pre.setString(5,"1");
     				pre.executeUpdate();
     				stat.close();
					stat2.close();
     				pre.close();
     			    conn.close();
 					}
				
				
 				}

 				%>





</body>
<script type="text/javascript" src="JS/jquery-3.4.1.min.js"></script>
<script src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/myAlert.js" ></script>
<script>
    $(function () {
    	console.log(1)
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

        
        $(".card-img img").click(function () {
            $(location).attr('href', 'detail.jsp');
        });
        $(".card-ad").click(function () {
            $.myToast('添加成功');
        });
        $(".pay-ad").click(function () {
            $(location).attr('href', 'gwc.jsp');
        });

    });

</script>
</html>
