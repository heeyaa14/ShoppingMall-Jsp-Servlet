<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>

.div1 {
	display: inline-block;
	text-align: center;
	margin-bottom: 20px;
	
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
			<h2>관리자 로그인</h2><hr>
			<form action="admin_login.do" method="post" name="frm">
			<div class="div1">
				<br>
				<h2>관리자</h2><br>
				<input type="text" id="txt1" name="admin_id" placeholder="아이디"><br><br>
				<input type="password" id="txt1" name="admin_pass" placeholder="비밀번호"><br><br>
				<input type="submit" id="btn" value="로그인"> <br><br>
			</div>
			</form>
		</div>


<%@ include file="../include/footer.jsp" %>
		