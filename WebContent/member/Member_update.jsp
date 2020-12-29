<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
#tb1 {
	width:100%;
	height: auto;
	float: center;
}

#td1 {
	border-bottom: 1px solid gray;
}

#th1 {
	background-color: #EAEAEA;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	height: 60px;
	font-size: 16px;
}

a {
	text-decoration: none;
	color: gray;
}

a:hover {
	color: white;
}

p {
	font-size: 13px;
}
.tb2 {
	padding: 10px;
	border: 1px solid gray;
}

#td2 {
	padding-bottom:10px;
	border-bottom: 1px solid gray;
}

#td3 {
	padding-top: 10px;
}

.txtbox {
	border-width : thin;
	border-color : lightgray;
	border-radius: 5px;
	padding: 5px 5px 5px 5px;
}

#ch_btn {
	background-color : #5D5D5D;
	color : white;
	font-size : 12px;
	border-width : thin;
	border-color : lightgray;
	border-radius: 5px;
	padding: 3px;
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

</style>

	<div class="container" align="center">
			<p><h1>마이 페이지</h1></p><br>
			<table id="tb1">
				<tr>
					<th id="th1"><a href="Mypage.jsp">주문내역</a></th>
					<th id="th1"><a href="#">관심상품</a></th>
					<th id="th1"><a href="Member_update.jsp">회원정보</a></th>
					<th id="th1"><a href="javascript:void(0);" onclick="member_delete();">회원탈퇴</a></th>
				</tr>
			</table><br><br>
			<h2>회원정보 수정</h2>
			<table width="700px" height="450px">
				<tr><td id="td1">아이디 : &nbsp;&nbsp;<input type="text" class="txtbox" id="m_id" name="id" value="pkh414">&nbsp;<input type="button" id="ch_btn" value="중복확인" onclick="id_check();"></td></tr>
				<tr><td id="td1">비밀번호 : &nbsp;&nbsp;<input type="password" class="txtbox" id="m_pw" name="pw" placeholder="숫자,영문 포함 8자이상"></td></tr>
				<tr><td id="td1">이름 : &nbsp;&nbsp;<input type="name" class="txtbox" id="m_name" value="박경희" name="name"></td></tr>
				<tr><td id="td1">이메일 : &nbsp;&nbsp;<input type="email" class="txtbox" id="m_email" value="pkh@gmail.com" name="email"></td>
				<tr><td id="td1">생년월일  : &nbsp;&nbsp;
										<input type="number" class="txtbox" id="m_birth" name="years" value="1996" min="1960" max="2020"> 년
										<input type="number" class="txtbox" id="m_birth" name="month" value="4" min="1" max="12"> 월
										<input type="number" class="txtbox" id="m_birth" name="days" value="14" min="1" max="31"> 일
									</td>
				</tr>
				<tr><td id="td1">성별 : &nbsp;&nbsp;
									남<input type="radio" name="gender" value="male">
									여<input type="radio" name="gender" value="female" checked="checked">
								</td></tr>
				<tr><td id="td1">전화번호 : &nbsp;&nbsp;<input type="text" class="txtbox" id="m_ph" value="010-111-2222" name="phone" ></td></tr><br>
				<tr><td id="td1">주소 : &nbsp;&nbsp;<input type="text" size="40" class="txtbox" id="m_add" value="부산광역시 금정구 111-222" name="address" ></td></tr><br>
			</table>
			<br>
			<br>
			<input type="button" id="btn" value="수정하기" onclick="update_success();">
			<input type="reset" id="btn" value="취소">

		</div>
			
		</div>
<%@ include file="../include/footer.jsp" %>
		