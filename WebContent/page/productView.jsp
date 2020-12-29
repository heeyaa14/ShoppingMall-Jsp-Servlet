<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>

#td1 {
	border-bottom: 1px solid lightgray;
	
}
.view {
	padding-left: 100px;
	margin:0px;
	height: auto;
}

.div1 {
	display: inline-block;
	padding-right: 120px;
}

.div2 {
	display: inline-block;
	padding-right: 90px;
}

.div3 {
	display: flex;
	padding-top: 50px;
}

#btn1 {
	background-color: black;
	border-radius:5px;
	color: white;
	width: 150px;
	height: 40px; 
	font-size: 15px;
	margin-right: 10px;
	flex:2;
}

#btn2 {
	border: 1px solid black;
	border-width: thin;
	border-radius:5px;
	width: 150px;
	height: 40px; 
	font-size: 15px;
	margin-right: 10px;
	flex:2;
}

#btn_good {
	background-color: white;
	border: 1px solid white;
	flex:0.5;
}

#btn_good.img {
	float: center;
}

#tb2 {
	border-bottom: 1px solid lightgray;
}

a {
	text-decoration: none;
	color: gray;
	font-size: 13px;
}

.container2 {
	padding:0px;
	margin:0px;
	height: auto;
}

</style>

		<div class="container" align="center">
			<div class="view" align="center">
				<div class="div1">
					<img src="images/item1.jpg" width="280" height="390">	
				</div>
				
				<div class="div2">
					<h2>엑스프리즈마 액티비티 브라탑 블랙</h2>
					<table class="tb1" width="300" height="180">
						<tr>
							<td id="td1"><strong>PRICE</strong> : &nbsp;&nbsp;&nbsp; 27000원</td>
						</tr>	
						<tr>
							<td id="td1"><strong>POINT</strong> : &nbsp;&nbsp;&nbsp; 1%</td>
						</tr>	
						<tr>
							<td id="td1"><strong>COLOR</strong> : &nbsp;&nbsp;&nbsp; 
											<select style="width:150px; height:25px">
												<option>black</option>
												<option>red</option>
												<option>brown</option>
												<option>sky blue</option>
												<option>rose pink</option>
											</select>
							</td>
						</tr>	
						<tr>
							<td id="td1"><strong>SIZE</strong>  : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<select style="width:150px; height:25px">
												<option>S</option>
												<option>M</option>
												<option>L</option>
											</select>
							</td>
						</tr>
						<br><br>
						<tr>
							<td><strong style="font-size: 14pt;">총 주문금액</strong> : &nbsp;&nbsp;&nbsp;27000원 </td>
						</tr>	
					</table>
					<div class="div3" align="center">
						<input type="submit" id="btn1" value="구매하기">
						<input type="button" id="btn2" name="cart" value="장바구니">
						<button id="btn_good"><img src="images/heart.PNG" width="30" height="30"></button>
					</div>
				</div>
			</div>	
			<div class="container2" align="center">
					<table id="tb2" align="center" width="700" height="50"> 
						<tr>
							<th><a href="productView.jsp">Datail</a></th><th><a href="#">Review</a></th>
						</tr>
					</table><br>
					<div id="img_div">
						<img id="img" src="images/content_img.jpg" width="800" >
						<img id="img" src="images/content_img2.jpg" width="800" >
						<img id="img" src="images/content_img4.jpg" width="800" >
					</div>
			</div>
		</div><br><br><br>
		
<%@ include file="../include/footer.jsp" %>