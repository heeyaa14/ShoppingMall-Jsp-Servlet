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
<form action="swimwear.do" method="post">
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
		<h2>스윔웨어</h2>		
				<div class="item-cont">       
				<h1>BEST</h1>
					<ul>
						<li>
							<img src="images/item45.jpg" onmouseover="this.src='images/item45h.jpg'" onmouseout="this.src='images/item45.jpg'">
							<p>블랙라벨 하이플렉시 릴랙스 탑 1+1</p>
							<hr>
							<p>54,000&nbsp;&nbsp;<strike>103,000</strike></p>
						</li>
						<li>
							<img src="images/swim1.jpg" onmouseover="this.src='images/swim1h.jpg'" onmouseout="this.src='images/swim1.jpg'">
							<p>엑스프리즈마 액티비티 브라탑 백아이보리</p>
							<hr>
							<p>29,000</p>
						</li>
						<li>
							<img src="images/swim2.jpg" onmouseover="this.src='images/swim2h.jpg'" onmouseout="this.src='images/swim2.jpg'">
							<p>하이플렉시 워터레깅스 블랙</p>
							<hr>
							<p>34,000&nbsp;&nbsp;<strike>68,000</strike></p>
						</li>
						<li>
							<img src="images/item3.jpg" onmouseover="this.src='images/item3h.jpg'" onmouseout="this.src='images/item3.jpg'">
							<p>엑스프리즈마 액티비티 브라탑 펀치코랄</p>
							<hr>
							<p>29,000</p>
							</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/swim3.jpg">
							<p>모아나 블랙</p>
							<hr>
							<p>33,000</p>
						</li>
						<li>
							<img src="images/item1.jpg">
							<p>엑스프리즈마 액티비티 브라탑 블랙</p>
							<hr>
							<p>27,000</p>
						</li>
						<li>
							<img src="images/item49.jpg">
							<p>엑스프리즈마 젝시 8.5부 블랙</p>
							<hr>
							<p>28,000</p>
						</li>
						<li>
							<img src="images/swim4.jpg">
							<p>엑스프리즈마 액티비티 레깅스 블랙</p>
							<hr>
							<p>27,000</p>
						</li>	
					</ul>
				</div>
				
				<div class="item-cont">       
				<h1>New Arrivals</h1>
					<ul>
						<li>
							<img src="images/swim5.jpg">
							<p>엑스프리즈마 올인원 브라탑 칠리레드</p>
							<hr>
							<p>32,000</p>
						</li>
						<li>
							<img src="images/swim6.jpg">
							<p>엑스프리즈마 올인원 브라탑 쉬어라일락</p>
							<hr>
							<p>32,000</p>
						</li>
						<li>
							<img src="images/swim7.jpg">
							<p>엑스프리즈마 올인원 브라탑 롤리핑크</p>
							<hr>
							<p>32,000</p>
						</li>
						<li>
							<img src="images/swim8.jpg">
							<p>엑스프리즈마 올인원 브라탑 아이스민트</p>
							<hr>
							<p>32,000</p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/swim9.jpg">
							<p>엑스프리즈마 레깅스 정글카키</p>
							<hr>
							<p>29,000</p>
						</li>
						<li>
							<img src="images/swim10.jpg">
							<p>엑스프리즈마 레깅스 칠리레드</p>
							<hr>
							<p>29,000</p>
						</li>
						<li>
							<img src="images/swim11.jpg">
							<p>엑스프리즈마 레깅스 롤리핑크</p>
							<hr>
							<p>29,000</p>
						</li>
						<li>
							<img src="images/swim12.jpg">
							<p>엑스프리즈마 액티비티 레깅스 랩소디블루 </p>
							<hr>
							<p>27,000</p>
						</li>	
					</ul>
				</div>
			</div>
		</div>	
</form>		
<%@ include file="../include/footer.jsp" %>