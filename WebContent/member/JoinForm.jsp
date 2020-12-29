<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
#td1 {
	border-bottom: 1px solid gray;
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

#join_btn {
	width : 150px;
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
			<h2>회원가입</h2><hr>
			<form action="join.do" method="post">
			<table width="700px" height="450px">
				<tr><td id="td1">아이디 : &nbsp;&nbsp;<input type="text" class="txtbox" id="m_id" name="id" placeholder="6~12자">&nbsp;<input type="button" id="ch_btn" value="중복확인" onclick="id_check();"></td></tr>
				<tr><td id="td1">비밀번호 : &nbsp;&nbsp;<input type="password" class="txtbox" id="m_pw" name="pw" placeholder="숫자,영문 포함 8자이상"></td></tr>
				<tr><td id="td1">이름 : &nbsp;&nbsp;<input type="name" class="txtbox" id="m_name" name="name" placeholder="이름"></td></tr>
				<tr><td id="td1">이메일 : &nbsp;&nbsp;<input type="email" class="txtbox" id="m_email" name="email" placeholder="이메일주소"></td>
				<tr><td id="td1">생년월일  : &nbsp;&nbsp;
										<input type="number" class="txtbox" id="m_birth" name="years" min="1960" max="2020"> 년
										<input type="number" class="txtbox" id="m_birth" name="month" min="1" max="12"> 월
										<input type="number" class="txtbox" id="m_birth" name="days" min="1" max="31"> 일
									</td>
				</tr>
				<tr><td id="td1">성별 : &nbsp;&nbsp;
									남<input type="radio" name="gender" value="male">
									여<input type="radio" name="gender" value="female">
								</td></tr>
				<tr><td id="td1">전화번호 : &nbsp;&nbsp;<input type="text" class="txtbox" id="m_ph" name="phone" placeholder="전화번호"></td></tr><br>
				<tr><td id="td1">주소 : &nbsp;&nbsp;<input type="text" size="40" class="txtbox" id="m_add" name="address" placeholder="주소"></td></tr><br>
			</table>
			<br>
			<div>
				<input type="checkbox" value="age_check"><strong> 만 14세 이상입니다.(필수) </strong><br>
				<p>&nbsp;&nbsp;* 만 14세 미만의 아동은 회원가입 시 법적대리인의 동의가 필요합니다. <br>
				회원가입이 필요할 시 당사 고객센터로 연락해주세요. <br>
				&nbsp;&nbsp;* 회원가입에 필요한 최소한의 정보만 입력 받음으로써 고객님의 <br> 
				&nbsp;&nbsp;개인정보 수집을 최소화하고 편리한 회원가입을 제공합니다. </p> <br>
				
				<table class="tb2">
					<tr>
						<td id="td2" colspan="2"><input type="checkbox" id="chk_all" class="chk" value="accept" onclick="checkAll();"> 전체동의</td>
					</tr>
					<tr>
						<td id="td3"><input type="checkbox" class="chk" name="chRow" id="m_ch" value="accept2"> 이용약관</td>
						<td id="td3"><input type="checkbox" class="chk" name="chRow" id="m_ch" value="accept3"> 개인정보 수집 및 이용 안내</td>
					</tr>
					<tr>
						<td><input type="checkbox" class="chk" name="chRow" id="m_ch" value="accept4"> 개인정보 제3자 제공 </td>
					</tr>
				</table><br>
			</div>
			<input type="button" id="join_btn" value="동의하고 가입완료" onclick="join_success();">
			
			</form>	
		</div>

	

	<script type="text/javascript">
		//아이디 공백, 중복확인
			function id_check() {
				var id=$("#m_id").val();
				
				
				if(id=='') {
					alert("id를 입력하세요");
					return;
				} else {
					alert("사용가능한 아이디입니다.");
					return;
				}
				
			}
		
			/* db 연동시 사용할 ajax 코드
			$.ajax({
				type:"post",
				async:false,
				url:"member",
				data:{id:_id},
				dataType:"text",
				success:function(data,textStatus){
					if(data=='usable'){
						$("#msg").text("사용할 수 있는 ID입니다.");
						$("#btn_duplicate").prop("desabled",true);
					}else{
						$("#msg").text("사용할 수 없는 ID입니다");
					}
				}
			*/
		
			// 전체 checkbox 버튼 클릭하면 checkbox 요소들 모두 선택
			function checkAll(){
			    if( $('#chk_all').is(':checked') ){
			      $("input[name='chRow']").prop("checked", true); 
			    }
			    else{
			      $("input[name='chRow']").prop("checked", false);
			    }
			}
			
			function join_success() {
				var id=$("#m_id").val();
				if(id == '' ) {
					alert("id를 입력하세요");
					return;
				} else {
					alert("회원가입이 완료되었습니다!");
					location.href="Login.html";
				}
			}
			
		</script>
	<%@ include file="../include/footer.jsp" %>