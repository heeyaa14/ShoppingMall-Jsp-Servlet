<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
table {
	width:100%;
	height: auto;
	float: center;
	position: relative;
}

.tb2 {
	min-width:400px;
	border-bottom: 1px solid gray;
	padding-top: 10px;
	padding-bottom: 10px;
}

td {
	padding-top: 10px;
}

th {
	paddin:5px;
	height:40px;
	border-top: 2px solid gray;
	border-bottom: 1px solid gray;
	font-size: 15px;
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
	color: black;
}

a:hover {
	color: white;
}

#btn {
	background-color: #212121;
	color: white; 
}

.cntBtn {
	font-size: 24px;
	border:none; 
	background:none; 
}

.cntBox {

	width:30px;
}

.div_img {
	float: left;
}
.div_prod {
	text-align: center;
	float: right;
	padding-top: 20px;
}

#th1:active {
	background-color: gray;
}

</style>

	<div class="container" align="center">
			<h1>마이 페이지</h1><br>
			<form action="mypage.do" method="post">
			<table>
				<tr>
					<th id="th1"><a href="Mypage.jsp">주문내역</a></th>
					<th id="th1"><a href="#">관심상품</a></th>
					<th id="th1"><a href="Member_update.jsp">회원정보</a></th>
					<th id="th1" class="delBtn"><a href="javascript:void(0);" onclick="member_delete();">회원탈퇴</a></th>
				</tr>
			</table><br><br>
			<h2>주문내역</h2>
			<table class="tb2">
				<thead align="center">
					<tr>
						<th width="10%">주문번호</th>
						<th width="10%">주문일</th>
						<th width="30%">상품명</th>
						<th width="20">옵션</th>
						<th width="10%">가격</th>
						<th width="10%"></th>
					</tr>
				</thead>
				<tbody align="center">
					<tr>
						<td>122345</td>
						<td>2020-08-11</td>
						<td>
							<div class="div_img">
								<img src="images/cartImg1.PNG" width="100" height="100">
							</div>
								
							<div class="div_prod">
								<p>엑스프리즈마 액티비티 브라탑 코랄</p>
							</div>
							
						</td>
						<td>M(55-66), 기본패드 포함</td>
						<td>29,000원</td>
						<td>
							<input type="button" value="상세보기" style="background-color: white; border-width: thin">
						</td>
					</tr>
					
					<tr>
						<td>265955</td>
						<td>2020-08-14</td>
						<td>
							<div class="div_img">
								<img src="images/cartImg3.PNG" width="100" height="100">
							</div>
								
							<div class="div_prod">
								<p>엑스프리즈마 텐션업 레깅스 1+1</p>
							</div>
							
						</td>
						<td>트릭네이비S, 카키S </td>
						<td>46,000원</td>
						<td>
							<input type="button" value="상세보기" style="background-color: white; border-width: thin">
						</td>
					</tr>
					
					<tr>
						<td>336694</td>
						<td>2020-08-19</td>
						<td>
							<div class="div_img">
								<img src="images/cartImg4.PNG" width="100" height="100">
							</div>
								
							<div class="div_prod">
								<p>블랙라벨 하이플레시 에러로 4.5부 </p>
							</div>
							
						</td>
						<td>블랙 S(44-55)</td>
						<td>31,000원</td>
						<td>
							<input type="button" value="상세보기" style="background-color: white; border-width: thin">
						</td>
					</tr>
				</tbody>
			</table>
			</form>
		</div>
	<br><br><br>
<%@ include file="../include/footer.jsp" %>
		