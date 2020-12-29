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
<button id="reg">상품등록</button>
<form action="top.do" method="post">
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
				<h2>상의</h2>
				<div class="item-cont">       
				<h1>BEST</h1>
					<ul>
						<li>
							<img src="images/item1.jpg" onmouseover="this.src='images/item1h.jpg'" onmouseout="this.src='images/item1.jpg'">
							<p>엑스프리즈마 액티비티 브라탑 블랙</p>
							<hr>
							<p>27,000</p>
						</li>
						<li>
							<img src="images/item2.jpg" onmouseover="this.src='images/item2h.jpg'" onmouseout="this.src='images/item2.jpg'">
							<p>엑스프리즈마 집업 래쉬가드 백아이보리</p>
							<hr>
							<p>49,000</p>
						</li>
						<li>
							<img src="images/item3.jpg" onmouseover="this.src='images/item3h.jpg'" onmouseout="this.src='images/item3.jpg'">
							<p>엑스프리즈마 액티비티 브라탑 펀치코랄</p>
							<hr>
							<p>29,000</p>
						</li>
						<li>
							<img src="images/item4.jpg" onmouseover="this.src='images/item4h.jpg'" onmouseout="this.src='images/item4.jpg'">
							<p>엑스프리즈마 홀터탑 블랙</p>
							<hr>
							<p>33,000</p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item5.jpg">
							<p>플래쉬 티셔츠 시어바이올렛</p>
							<hr>
							<p>27,000</p>
						</li>
						<li>
							<img src="images/item6.jpg">
							<p>이든 백아이보리</p>
							<hr>
							<p>27,000</p>
						</li>
						<li>
							<img src="images/item8.jpg">
							<p>글래디스 백아이보리</p>
							<hr>
							<p>29,000</p>
						</li>
						<li>
							<img src="images/item9.jpg">
							<p>플로리아 백아이보리</p>
							<hr>
							<p>29,000</p>
						</li>	
					</ul>
				</div>
				
				<div class="item-cont">       
				<h1>New Arrivals</h1>
					<ul>
						<li>
							<img src="images/item17.jpg">
							<p>헤바</p>
							<hr>
							<p>28,000&nbsp;&nbsp;<strike>36,000</strike></p>
						</li>
						<li>
							<img src="images/item25.jpg">
							<p>셀리나 멜란지그레이</p>
							<hr>
							<p>16,150&nbsp;&nbsp;<strike>17,000</strike></p>
						</li>
						<li>
							<img src="images/item26.jpg">
							<p>바네사 커스터드베이지</p>
							<hr>
							<p>27,000&nbsp;&nbsp;<strike>28,000</strike></p>
						</li>
						<li>
							<img src="images/item27.jpg">
							<p>바네사 세이지카키</p>
							<hr>
							<p>27,000&nbsp;&nbsp;<strike>28,000</strike></p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item21.jpg">
							<p>링고 블랙</p>
							<hr>
							<p>16,150&nbsp;&nbsp;<strike>17,000</strike></p>
						</li>
						<li>
							<img src="images/item22.jpg">
							<p>링고 네온코랄</p>
							<hr>
							<p>16,150&nbsp;&nbsp;<strike>17,000</strike></p>
						</li>
						<li>
							<img src="images/item23.jpg">
							<p>셀리나 퍼프핑크</p>
							<hr>
							<p>16,150&nbsp;&nbsp;<strike>17,000</strike></p>
						</li>
						<li>
							<img src="images/item24.jpg">
							<p>셀리나 백아이보리</p>
							<hr>
							<p>16,150&nbsp;&nbsp;<strike>17,000</strike></p>
						</li>	
					</ul>
				</div>
			</div>
		</div>	
</form>		
<script>
 $('#reg').on('click',function(){
	 
	location.href="register.do";
}) 
</script>
<%@ include file="../include/footer.jsp" %>