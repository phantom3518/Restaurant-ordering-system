<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>注册界面</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/myAlert.css" />
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

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

        .col-md-offset-9 button:first-child {
            display: inline-block;
            margin-left: 90px;
            margin-right: 20px;
        }
    </style>

</head>
<body>
<div class="container">
    <form class="form row" name="form" action="" method="post" >
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <h3 class="form-title">Register</h3>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="10"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Repeat the password
" id="password2"  name="password2" maxlength="10"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-phone fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="telephone
"  id="telephone" name="telephone" maxlength="16"/>
                </div>
                <br>
                <div class="form-group col-md-offset-9">
                    <button type="submit" class="btn btn-success pull-right" id="reg">注册</button>
                    <button type="button" class="btn btn-success pull-right" id="login">登录</button>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
 <%
        String t1=request.getParameter("username");
		String t2=request.getParameter("password");
		String t3=request.getParameter("telephone");
		String t4=request.getParameter("password2");
		out.print(t1);
		out.print(t2);
		out.print(t3);
		out.print(t4);
		if(t1==null || t2==null || t3==null ||t4==null ||t1.equals("") || t2.equals("")||t3.equals("")||t4.equals("")) {
			if(request.getMethod().equals("POST"))
			out.close();
		}
		else if(t3.length()!=11){
			out.print(t3.length());
			out.close();
		}
		else{
			Class.forName("com.mysql.jdbc.Driver");
	    	String s = "jdbc:mysql://localhost:3306/food?user=root&password=123456";
	   		Connection conn = DriverManager.getConnection(s);
	   		Statement stat = conn.createStatement();
    	
	   		String sql1="insert into xx(s_name,s_pass,s_phone) values(?,?,?)";
			PreparedStatement pre = conn.prepareStatement(sql1); 
			pre.setString(1,t1);
			pre.setString(2,t2);
			pre.setString(3,t3);
		
			int pre1=pre.executeUpdate();
		}
%>
<script src="JS/jquery-3.4.1.min.js"></script>
<script src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/myAlert.js" ></script>
<script>
$(function () {
    $("#reg").click(function () {
        var reg = /^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
        var reg2=/^[a-zA-Z0-9]{6,10}$/;
        var reg3 = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/
        var password = $("#password").val();
        var password2 = $("#password2").val();
        var username = $("#username").val();
        var telephone = $("#telephone").val()
        if(username==""||password==""||password2==""||telephone==""){
            $.myToast('用户名格式为3-15位的字母或数字')
        }else if(reg.test(username)==false){
            $.myToast('请输入用户名密码或手机号')
        }else if(reg2.test(password)==false){
            $.myToast('密码请使用字母和数字，长度在6~10位')
        }
        else{
            if(password!=password2){
                $.myToast('两次密码不一致')
            }else if(reg3.test(telephone)==false){
                $.myToast('请输入正确的手机号')
            } else {
				$.myToast('注册成功')    
				$("#login").click();
            }
        }
    });
    $("#login").click(function () {
        $(location).attr('href', 'dl.jsp');
    });
    $(document).keydown(function(event){
        if(event.keyCode==13){
            $("#reg").click();
        }
    });
});
    

</script>
</html>
