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
<form action="bottom.do" method="post">
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
		<h2>하의</h2>		
				<div class="item-cont">       
				<h1>BEST</h1>
					<ul>
						<li>
							<img src="images/item14.jpg" onmouseover="this.src='images/item14h.jpg'" onmouseout="this.src='images/item14.jpg'">
							<p>네오플렉시 레깅스 1+1</p>
							<hr>
							<p>29,000&nbsp;&nbsp;<strike>56,000</strike></p>
						</li>	
						<li>
							<img src="images/item15.jpg" onmouseover="this.src='images/item15h.jpg'" onmouseout="this.src='images/item15.jpg'">
							<p>블랙라벨 하이플렉시 에어로 8.5부</p>
							<hr>
							<p>39000&nbsp;&nbsp;<strike>68,000</strike></p>
						</li>
						<li>
							<img src="images/item16.jpg" onmouseover="this.src='images/item16h.jpg'" onmouseout="this.src='images/item16.jpg'">
							<p>블랙라벨 하이플렉시 에어로 4.5부 블랙</p>
							<hr>
							<p>21,000&nbsp;&nbsp;<strike>31,000</strike></p>
						</li>
						<li>
							<img src="images/item7.jpg" onmouseover="this.src='images/item7h.jpg'" onmouseout="this.src='images/item7.jpg'">
							<p>아나이스 블랙</p>
							<hr>
							<p>43,000</p>
						</li>
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item10.jpg">
							<p>엑스프리즈마 레깅스 트릭네이비</p>
							<hr>
							<p>29,000</p>
						</li>
						<li>
							<img src="images/item11.jpg">
							<p>엑스프리즈마 액티비티 레깅스 백아이보리</p>
							<hr>
							<p>27,000</p>
						</li>
						<li>
							<img src="images/item20.jpg">
							<p>헤럴드</p>
							<hr>
							<p>48,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item49.jpg">
							<p>엑스프리즈마 젝시 8.5부 블랙</p>
							<hr>
							<p>28,000</p>
						</li>	
					</ul>
				</div>
				
				<div class="item-cont">       
				<h1>New Arrivals</h1>
					<ul>
						<li>
							<img src="images/bottom1.jpg">
							<p>폴 쇼츠 2.5부 블랙</p>
							<hr>
							<p>19,000</p>
						</li>
						<li>
							<img src="images/bottom2.jpg">
							<p>폴 쇼츠 2.5부 러셋퍼플</p>
							<hr>
							<p>19,000</p>
						</li>
						<li>
							<img src="images/bottom3.jpg">
							<p>폴 쇼츠 2.5부 트윙클블루</p>
							<hr>
							<p>19,000</p>
						</li>
						<li>
							<img src="images/bottom4.jpg">
							<p>폴 쇼츠 2.5부 페이드블루</p>
							<hr>
							<p>19,000</p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/bottom5.jpg">
							<p>블랙라벨 하이플렉시 에어로 9부 블랙</p>
							<hr>
							<p>28,000&nbsp;&nbsp;<strike>38,000</strike></p>
						</li>
						<li>
							<img src="images/bottom6.jpg">
							<p>블랙라벨 하이플렉시 에어로 9부 아이보리</p>
							<hr>
							<p>28,000&nbsp;&nbsp;<strike>38,000</strike></p>
						</li>
						<li>
							<img src="images/bottom7.jpg">
							<p>블랙라벨 하이플렉시 에어로 9부 미드나잇블루</p>
							<hr>
							<p>28,000&nbsp;&nbsp;<strike>38,000</strike></p>
						</li>
						<li>
							<img src="images/bottom8.jpg">
							<p>블랙라벨 하이플렉시 에어로 9부 피치스킨</p>
							<hr>
							<p>28,000&nbsp;&nbsp;<strike>38,000</strike></p>
						</li>	
					</ul>
				</div>
			</div>
		</div>		
</form>		
<%@ include file="../include/footer.jsp" %>