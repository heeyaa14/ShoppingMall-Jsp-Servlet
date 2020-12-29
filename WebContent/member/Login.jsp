<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>

.div1 {
	display: inline-block;
	text-align: center;
	padding-left: 250px;
	padding-right: 70px;
	margin-bottom: 20px;
	
}

.div2 {
	display: inline-block;
	padding-left: 70px;
	border-left: 1px solid lightgray;
}

#txt1 {
	border-width : thin;
	width: 230px;
	height: 20px;
	border-color : lightgray;
	border-radius: 5px;
	padding: 5px 5px 5px 5px;
}

#btn {
	width : 130px;
	height : 40px;
	background-color : #5D5D5D;
	color : white;
	font-size : 15px;
	border-width : thin;
	border-color : lightgray;
	border-radius: 5px;
	padding : 5px;
}

a {
	text-decoration: none;
	color: black;
	font-size: 13px;
}

</style>
    
		
		<div class="container" align="center">
			<h2>로그인</h2><hr>
			<form action="login.do" method="post">
			<div class="div1">
				<br>
				<h2>로그인</h2><br>
				<input type="text" id="txt1" name="id" placeholder="아이디"><br><br>
				<input type="password" id="txt1" name="pw" placeholder="비밀번호"><br><br>
				<input type="button" id="btn" value="로그인" onclick="login_success();"> <br><br>
				<a href="JoinForm.jsp">회원가입</a>
			</div>
			
			<div class="div2">
				<img src="images/log_img.PNG" width="500" height="350">
			</div>
			</form>
		</div>

<%@ include file="../include/footer.jsp" %>
		