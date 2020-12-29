<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
.category-wrap{
	position: absolute;
	top:8%;
	left:25%;
	text-align: center;
}


.category > li{
	float: left;
	text-decoration:none;
	display: inline-block;
    *display: inline;
    margin: 50px;
}

.category > li a{
	color: black;
	font-size: 17px;
	text-decoration:none;
	font-weight:bold;
}

.container2{
	margin-top: 130px;
	width:100%;
	display: inline-block;
	text-align: center;
}
  
.item-cont{
	padding: 30px;
}
.item-cont ul> li{
	display: inline-block;
    *display: inline;
    position: relative;
    margin-left: 22px;
    height: 60px;
    line-height: 60px;
    padding: 25px;
}	

#reg{
	position: absolute;
	right:2%;
	top:15%;
}
strike{
	color: #bbb;
    font: inherit;
    font-weight: normal;
    font-size: 14px;
}
.item-cont-wrap > h2{
	text-align: center;
	padding-top: 50px;
}
</style>
<form action="ac.do" method="post">
    <div class="category-wrap">
		<ul class="category">
			<li><a href="top.do">상의</a></li>
			<li><a href="bottom.do">하의</a></li>
			<li><a href="swimwear.do">스윔웨어</a></li>
			<li><a href="ac.do">악세사리</a></li>
			<li><a href="oneplus.do">1+1</a></li>
		</ul>
	</div>	
	<input type="button" id="reg" value="상품등록" onclick="location.href='register.do'">
	
	<div class="container2">
	<div class="item-cont-wrap">
		<h2>악세사리</h2>		
				<div class="item-cont">       
				<h1>BEST</h1>
					<ul>
						<li>
							<img src="images/item41.jpg" onmouseover="this.src='images/item41h.jpg'" onmouseout="this.src='images/item41.jpg'">
							<p>요가 삭스 1+1</p>
							<hr>
							<p>11,900&nbsp;&nbsp;<strike>16,000</strike></p>
						</li>
						<li>
							<img src="images/ac1.jpg" onmouseover="this.src='images/ac1h.jpg'" onmouseout="this.src='images/ac1.jpg'">
							<p>리싸이클백</p>
							<hr>
							<p>2,800</p>
						</li>
						<li>
							<img src="images/ac2h.gif" onmouseover="this.src='images/ac2.jpg'" onmouseout="this.src='images/ac2h.gif'">
							<p>에어로마스크</p>
							<hr>
							<p>5,900</p>
						</li>
						<li>
							<img src="images/ac4.jpg" onmouseover="this.src='images/ac3h.jpg'" onmouseout="this.src='images/ac4.jpg'">
							<p>제시믹스 논슬립 헤어밴드</p>
							<hr>
							<p>4,900</p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/ac5.gif">
							<p>젝시믹스 트래블백 6종 SET</p>
							<hr>
							<p>9,900&nbsp;&nbsp;<strike>15,000</strike></p>
						</li>
						<li>
							<img src="images/ac6.jpg">
							<p>에브리케어 티슈</p>
							<hr>
							<p>2,700</p>
						</li>
						<li>
							<img src="images/ac7.jpg">
							<p>X-2</p>
							<hr>
							<p>69,000&nbsp;&nbsp;<strike>89,000</strike></p>
						</li>
						<li>
							<img src="images/ac8.gif">
							<p>젝시믹스 볼캡</p>
							<hr>
							<p>29,000</p>
						</li>	
					</ul>
				</div>
				
				<div class="item-cont">       
				<h1>New Arrivals</h1>
					<ul>
						<li>
							<img src="images/ac9.jpg">
							<p>클라우드 요가매트</p>
							<hr>
							<p>98,000</p>
						</li>
						<li>
							<img src="images/ac10.jpg">
							<p>러닝삭스 화이트</p>
							<hr>
							<p>5,900</p>
						</li>
						<li>
							<img src="images/ac11.jpg">
							<p>스텝업 루프밴드 SET</p>
							<hr>
							<p>12,000</p>
						</li>
						<li>
							<img src="images/ac12.jpg">
							<p>젝시 크롭삭스 블랙</p>
							<hr>
							<p>4,900</p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/ac13.jpg">
							<p>크루삭스 코발트블루</p>
							<hr>
							<p>5,900</p>
						</li>
						<li>
							<img src="images/ac14.jpg">
							<p>크루삭스 티파니블루</p>
							<hr>
							<p>5,900</p>
						</li>
						<li>
							<img src="images/ac15.jpg">
							<p>크루삭스 에어리블루</p>
							<hr>
							<p>5,900</p>
						</li>
						<li>
							<img src="images/ac16.jpg">
							<p>크루삭스 피치크림</p>
							<hr>
							<p>5,900</p>
						</li>	
					</ul>
				</div>
			</div>
		</div>		
</form>		
<%@ include file="../include/footer.jsp" %>