<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
table {
	width:100%;
	height: auto;
	float: center;
}

th {
	height:60px;
	border-top: 2px solid gray;
	border-bottom: 1px solid lightgray;
}

#th2 {
	border-bottom: 1px solid gray;
	padding: 15px;
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
	padding-top: 20px;
}
.div_prod {
	text-align: center;
	float: right;
	padding-top: 40px;
}

ul {
	font-size: 13px;
}

li:nth-child(3) {
	color: blue;
}

.div1 {
	padding-left: 80px;
	float: left;
}
.div2 {
	padding-left: 900px;
}

.div_price {
	padding-top: 20px;
	border-bottom: 1px solid gray;
}

.div_btn {
	padding-left: 900px;
}

#btn2 {
	width: 160px;
	height: 60px;	
}

</style>
	<div class="container" align="center">
			<p><h1>장바구니</h1></p><br>
			<form action="cart.do" method="post">
			<table>
				<thead align="center">
					<tr>
						<th width="5%"><input type="checkbox" id="ch" onclick="checkAll();"></th>
						<th width="35%">상품정보</th>
						<th width="20%">가격</th>
						<th width="15%">수량</th>
						<th width="10%">배송비</th>
						<th width="15%">관심상품/삭제</th>
					</tr>
				</thead>
				<tbody align="center">
					<tr>
						<td><input type="checkbox" id="row_ch" name="checkRow"></td>
						<td>
							<div class="div_img">
								<img src="images/cartImg1.PNG" width="100" height="100">
							</div>
								
							<div class="div_prod">
								<strong>엑스프리즈마 액티비티 브라탑 코랄</strong>
								<p style="color:lightgray; font-size: 12px">SIZE : M(55-66), 기본패드 포함</p>
							</div>
							
						</td>
						<td>29,000원</td>
						<td>
							<input type="button" class="cntBtn" value="-">
							<input type="number" class="cntBox" min="1" max="10" value="1">
							<input type="button" class="cntBtn" value="+">
						</td>
						<td>
							무료배송
						</td>
						<td>
							<a href="#"><img src="images/heart.PNG" width="25" height="23"></a><br>
							<input type="button" value="삭제하기" style="background-color: white; border-width: thin" >
						</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" id="row_ch" name="checkRow"></td>
						<td>
							<div class="div_img">
								<img src="images/cartImg2.PNG" width="100" height="100">
							</div>
								
							<div class="div_prod">
								<strong>네오플렉시 레깅스 1+1(EVENT)</strong>
								<p style="color:lightgray; font-size: 12px">OPTION1 : 블랙S, OPTION2 : 레드M</p>
							</div>
							
						</td>
						<td>39,000원</td>
						<td>
							<input type="button" class="cntBtn" value="-">
							<input type="number" class="cntBox" min="1" max="10" value="1">
							<input type="button" class="cntBtn" value="+">
						</td>
						<td>
							무료배송
						</td>
						<td>
							<a href="#"><img src="images/heart.PNG" width="25" height="23"></a><br>
							<input type="button" value="삭제하기" style="background-color: white; border-width: thin">
						</td>
					</tr>
				</tbody>
			</table><hr>
			<div class="div_price">
				<div class="div1" align="left">
					<ul>
						<li>장바구니에 담은 상품은 일주일동안 보관됩니다.</li>
						<li>오랫동안 보관을 원하시는 상품은 위시리스트에 담아주세요.</li>
						<li>5만원이상 구매시 무료배송이 적용됩니다.</li>
					</ul>
				</div>
				<div class="div2">
					<p><strong>총 구매금액 &nbsp;&nbsp;&nbsp;&nbsp; 68,000원</strong></p>
					<p><strong style="font-size: 20px;">결제 예정금액 &nbsp;&nbsp;&nbsp; 68,000원</strong></p>
				</div><br>
			</div><br>
			<div class="div_btn">
				<input type="button" id="btn2" value="주문하기" style="background-color: black; color: white">
				<input type="button" id="btn2" value="쇼핑하기" >

			</div>
			</form>
		</div>
<%@ include file="../include/footer.jsp" %>
