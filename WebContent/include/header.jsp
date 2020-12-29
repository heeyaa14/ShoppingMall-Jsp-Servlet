<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/custom2.css" rel="stylesheet">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<style>
header{
	position: absolute;
	top: 0;
	z-index:100;
	background:#000;
	margin: 0 auto;
	width:100%;
	height: 94px;
	left:0;
}	

a.menu_bar{
	position: absolute;
    top: 34px;
    left: 10px;
}

a.main_logo{
	display: block;
    text-align: center;
    position: absolute;
    left: 49%;
    top: 25px;
    margin-left: -65px;
}

.login_area ul{
	position: absolute;
	top:18px;
	left:70%;
}

.login_area ul > li{
	display: inline-block;
    *display: inline;
    position: relative;
    margin-left: 22px;
    height: 60px;
    line-height: 60px;
}
.login_area ul > li a{
	font-size: 13px;
    color: #fff;
    text-decoration:none;
}

.mypage_area ul{
	position: absolute;
	top:18px;
	left:85%;
}

.mypage_area ul >li{
	display: inline-block;
    *display: inline;
    position: relative;
    margin-left: 5px;
    height: 60px;
    line-height: 60px;
}
	
.container {
	padding-bottom: 100px;
	padding-top: 100px;
}

footer{
	position:absolute;
	background:#000;
	width:100%;
	height: 300px;;
	z-index:100;
	margin: 0;
	left:0;
} 

.foot-icon{
	position:relative;
    left: 7%;
    top: 70px;
    margin-left: -75px;
   
}

.site-info > div{
    float:left;
    position: relative;
    left: 20%;
    top: -57px;
    margin-right: 100px;
    height: 40px;
    line-height: 60px;
    text-decoration:none;
    color: #fff;
}

.site-info dt{
	font-weight:bold;
	font-size: 16px;
}
.site-info dl > dd{
	position: relative;
	left: -15%;
	font-size: 13px;
}

.product dl>dd{
	position: relative;
	left:-35%;
}

.site-info dt, dd{
	margin-bottom: -20px;
	
}

div.bank{
	position: relative;
	left:25%;
}

.bank dl>dd{
	position: relative;
	left:-25%;
	
}

p{
	font-size: 15px;
}

</style>

</head>
<body>
	<header class="header" id="header">
		<div class="container-fluid" style="overflow:auto; overflow-x:hidden; overflow-y:scroll;">
			<div id="container">
				<nav class="navbar">
					<div class="navbar-header">
						<div class="menu">
							<a href="category.do" class="menu_bar" id="btncategory">
								<img src="images/menu_bar.PNG" width="60" height="60">
							</a>
						</div>
						<div class="main">
							<a href="main.do" class="main_logo"> 
							<img src="images/logo.PNG" width="130" height="50">
							</a>
						</div>
						<div class="login_area">  
							<ul>
								<li><a href="admin_loginForm.do" id="btnadmin">관리자</a></li>
								<li><a href="loginForm.do" id="btnlogin">로그인</a></li>
								<li><a href="joinForm.do" id="btnjoin">회원가입</a></li>
							</ul>
						</div>
						<div class="mypage_area">
						<ul>
							<li><a href="mypage.do" id="btnmypage"><img src="images/mypagelogo.PNG" width="56" height="50"></a></li>
							<li><a href="cart.do" id="btncart"><img src="images/btn_cart.png" width="50" height="50"></a></li>
						</ul>	
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>
	
<script>

$('#btncategory').on('click',function(){
	location.href="category.do";
})

$('#btnmypage').on('click',function(){
	location.href="category.do";
})

$('#btncart').on('click',function(){
	location.href="cart.do";
})
</script>	
	