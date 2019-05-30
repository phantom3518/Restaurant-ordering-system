<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML>
<html >
	<head>
		<meta charset="utf-8"/>
		<title>登录界面</title>
		<link rel="stylesheet" href="css/bootstrap.css">
    	<link rel="stylesheet" href="css/myAlert.css" />
    	<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<style>
        body{
            background: url("img/04.jpg");
            animation-name:myfirst;
            animation-duration:12s;
            /*变换时间*/
            animation-delay:2s;
            /*动画开始时间*/
            animation-iteration-count:infinite;
            /*下一周期循环播放*/
            animation-play-state:running;
            /*动画开始运行*/
        }
        @keyframes myfirst
        {
            0%   {background:url("img/04.jpg");}
            34%  {background:url("img/05.jpg");}
            67%  {background:url("img/03.jpg");}
            100% {background:url("img/04.jpg");}
        }
        .form{
            background: rgba(255,255,255,0.2);
            width:400px;
            margin:120px auto;
        }
        .fa{
            display: inline-block;
            top: 27px;
            left: 6px;
            position: relative;
            color: #ccc;
        }
        input[type="text"],input[type="password"]{
            padding-left:26px;
        }
        .checkbox{
            padding-left:21px;
        }
        .col-md-offset-9 button:first-child {
            display: inline-block;
            margin-left: 90px;
            margin-right: 20px;
        }
    </style>
	
	<body> 
	  
	
<div class="container">
    <form class="form row" name="form" action="" method="post" >
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <h3 class="form-title">LOGIN</h3>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="Username" id="username" name="T1" autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Password" id="password" name="T2" maxlength="8"/>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1"/>记住我
                    </label>
                </div>
                <div class="form-group col-md-offset-9">
                    <button type="button" class="btn btn-success pull-right" id="reg">注册</button>
                    <button type="submit" class="btn btn-success pull-right" id="login">登录</button>
                </div>
            </div>
        </div>
    </form>
</div>
	
<%			 
			String t1=request.getParameter("T1");
			String t2=request.getParameter("T2");
					
			if(t1!=null)
			{
				Class.forName("com.mysql.jdbc.Driver");
		    	String s = "jdbc:mysql://localhost:3306/food?user=root&password=123456";
		   		Connection conn = DriverManager.getConnection(s);
		   		Statement stat = conn.createStatement();
		    	
		   		ResultSet rs = stat.executeQuery("SELECT * FROM xx where s_name ='"+t1+"' and s_pass ='"+t2+"' ") ;
		   		
		    	if(rs.next())
		    	{
		    		String sessionMessage = t1;
		    		session.setAttribute("message",sessionMessage);
		    		response.sendRedirect("index.jsp");
// 		        	pageContext.forward("index.jsp");
		    	}else{
		    		out.print("<p style='text-align:center;color:red'>用户名或者密码错误</p>");
		    	}
		    	
		    	
			}
%>	

		
	
	</body>
<script src="JS/jquery-3.4.1.min.js"></script>
<script src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/myAlert.js" ></script>
<script>
    $(function () {
    	
    	
        $("#reg").click(function () {
            $(location).attr('href', 'reg.jsp');
        });

        
        $("#login").click(function () {
            var password = $("#password").val();
            var username = $("#username").val();
        	if (password=="" || username==""){
        		$.myToast('请输入用户名或密码')
        		return false;
    		}
    		else{
    			
      		 return true;   
   			}
            

        });
        
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#login").click();
            }
        });
    });
</script>
</html>



