<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="css/shoppingcart.css"/>
    <style>
        #return {
            width: 25px;
            height: 25px;
            background-color: #ccc;
            border: none;
            font-size: 1em;
            cursor: pointer;
            color: white;
            border-radius: 50%;
        }

    </style>
</head>
<%
	String message = (String)session.getAttribute("message");
%>
<%	

		Class.forName("com.mysql.jdbc.Driver");
   		String s = "jdbc:mysql://localhost:3306/food?user=root&password=123456" ;
		Connection conn = DriverManager.getConnection( s );
		PreparedStatement stat =conn.prepareStatement("SELECT * FROM food_ad where username = '"+message+"'") ;
		ResultSet rs = stat.executeQuery();
%>
			
<body>
<div class="body">
    <a href="menu.jsp" ><button id="return"  type="button"><</button></a>
    <div class="shop"><i></i><span>我的购物车</span></div>
     <%
		while(rs.next()){
	%>	
    <div class="product">
        <div class="product-box">
            <div class="product-ckb"><em class="product-em product-xz"></em></div>
            <div class="product-sx">
                <a href="###">
                    <img src="<%=rs.getString(4) %>" class="product-img" />
                    <span class="product-name"><%=rs.getString(2) %></span>
                </a>
                <span class="product-price">$&thinsp;<span class="price"><%=rs.getString(3) %></span></span>
                <div class="product-amount">
                    <div class="product_gw">
                        <em class="product-jian">-</em>
                        <input type="text" value="<%=rs.getString(6) %>" class="product-num"/>
                        <em class="product-add">+</em>
                    </div>
                </div>
                <div class="product-del"><a href="delete.jsp?sid=<%=rs.getString(1) %>"><img src="img/deleteico.png"/></a></div>
            </div>
        </div>
        <%}%>


    </div>
   <div class="product-js">
				<div class="product-al">
					<div class="product-all">
						<em class=""></em>
					</div>
					<div class="all-xz"><span class="product-all-qx">全选</span><div class="all-sl" style="display: none;">(<span class="product-all-sl">0</span>)</div></div>
				</div>
				<a href="pay.html" class="product-sett product-sett-a">结算</a>
				<div class="all-product"><span class="all-product-a">¥&thinsp;<span class="all-price">296</span></span></div>
				
			</div>
		</div>
		<!--购物车空-->
		<div class="kon-cat">
			<div class="catkon">
				<div class="kon-box">
					<div class="kon-hz">
						<img src="img/cart-air.png" />
						<span class="kon-wz">购物车什么都没有</span>
						<a href="index.jsp" class="kon-lj">去逛逛</a>
					</div>
				</div>
			</div>
		</div>
	
</body>
<script src="JS/jquery-3.4.1.min.js"></script>
<script src="JS/shoppingcart.js" type="text/javascript" charset="utf-8"></script>

</html>
