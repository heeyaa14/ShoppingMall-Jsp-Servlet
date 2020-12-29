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
<form action="oneplus.do" method="post">
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
		<h2>1+1</h2>		
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item33.jpg">
							<p>트랙라인 1+1</p>
							<hr>
							<p>48,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item34.jpg">
							<p>플로리아 1+1</p>
							<hr>
							<p>48,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item35.jpg">
							<p>해럴드1+1</p>
							<hr>
							<p>48,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item36.jpg">
							<p>헤바1+1</p>
							<hr>
							<p>28,000&nbsp;&nbsp;<strike>36,000</strike></p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item37.jpg">
							<p>네오플렉시 레깅스 1+1</p>
							<hr>
							<p>29,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item38.jpg">
							<p>아이스페더 1+1</p>
							<hr>
							<p>32,000&nbsp;&nbsp;<strike>56,000</strike></p>
						</li>
						<li>
							<img src="images/item39.jpg">
							<p>셀라업텐션 레깅스 1+1</p>
							<hr>
							<p>39,000&nbsp;&nbsp;<strike>79,000</strike></p>
						</li>
						<li>
							<img src="images/item40.jpg">
							<p>셀라업텐션 7.5부 레깅스 1+1</p>
							<hr>
							<p>29,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>	
					</ul>
					</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item41.jpg">
							<p>요가 삭스 1+1</p>
							<hr>
							<p>11,900&nbsp;&nbsp;<strike>16,000</strike></p>
						</li>
						<li>
							<img src="images/item42.jpg">
							<p>하이디 베이직 브라탑 1+1</p>
							<hr>
							<p>49,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item43.jpg">
							<p>셀라V업 3D 마지막 1+1</p>
							<hr>
							<p>39,000&nbsp;&nbsp;<strike>78,000</strike></p>
						</li>
						<li>
							<img src="images/item44.jpg">
							<p>엑스프리즈마 액티비티 브라탑 블랙</p>
							<hr>
							<p>27,000</p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item45.jpg">
							<p>블랙라벨 하이플렉시 릴랙스 탑 1+1</p>
							<hr>
							<p>54,000&nbsp;&nbsp;<strike>103,000</strike></p>
						</li>
						<li>
							<img src="images/item46.jpg">
							<p>엑스프리즈마 레깅스 1+1</p>
							<hr>
							<p>46,000&nbsp;&nbsp;<strike>56,000</strike></p>
						</li>
						<li>
							<img src="images/item47.jpg">
							<p>블랙라벨 하이플렉시 에어로 8.5부 1+1</p>
							<hr>
							<p>39,000&nbsp;&nbsp;<strike>68,000</strike></p>
						</li>
						<li>
							<img src="images/item48.jpg">
							<p>에어센트 1+1</p>
							<hr>
							<p>29,000&nbsp;&nbsp;<strike>52,000</strike></p>
						</li>	
					</ul>
				
				</div>
			</div>
		</div>
		</form>
<%@ include file="../include/footer.jsp" %>