<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>

.carousel_slide{
	top: 100px;
    overflow: hidden;
    position: relative;
    z-index: 60;
    width: 50% !important;
    margin: -1px auto 70px;
    height: 350px;
    text-align: center;
}

.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  width: 100%;
  overflow: hidden;
}
.carousel-inner > .item {
  position: relative;
  display: none;
  -webkit-transition: .6s ease-in-out left;
          transition: .6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 15%;
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
  filter: alpha(opacity=50);
  opacity: .5;
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, color-stop(rgba(0, 0, 0, .5) 0%), color-stop(rgba(0, 0, 0, .0001) 100%));
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .5) 0%, rgba(0, 0, 0, .0001) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
  background-repeat: repeat-x;
}
.carousel-control.right {
  right: 0;
  left: auto;
  background-image: -webkit-linear-gradient(left, color-stop(rgba(0, 0, 0, .0001) 0%), color-stop(rgba(0, 0, 0, .5) 100%));
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, .5) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
  background-repeat: repeat-x;
}
.carousel-control:hover,
.carousel-control:focus {
  color: #fff;
  text-decoration: none;
  filter: alpha(opacity=90);
  outline: none;
  opacity: .9;
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  z-index: 5;
  display: inline-block;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  margin-top: -10px;
  margin-left: -10px;
  font-family: serif;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}

.carousel-caption {
  position: absolute;
  right: 15%;
  bottom: 20px;
  left: 15%;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -15px;
    margin-left: -15px;
    font-size: 30px;
  }
  .carousel-caption {
    right: 20%;
    left: 20%;
    padding-bottom: 30px;
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
    padding: 20px;
}

/* .item-cont-wrap {
    width: 100%;
    float: none;
}*/
div {
    display: block;
}

</style>

<div id="carousel-example-generic" class="carousel_slide">
			
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/slide1.jpg" width="100%" height="350">
				</div>
				<div class="item">
					<img src="images/slide2.jpg" width="100%" height="350">
				</div>
				<div class="item">
					<img src="images/slide3.jpg" width="100%" height="350">
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		
		<div class="container2">
			<div class="item-cont-wrap">
				
				<div class="item-cont">       
				<h1>BEST</h1>
					<ul>
						<li>
							<a href="productView.jsp">
							<img src="images/item1.jpg" onmouseover="this.src='images/item1h.jpg'" onmouseout="this.src='images/item1.jpg'"></a>
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
							<img src="images/item14.jpg" onmouseover="this.src='images/item14h.jpg'" onmouseout="this.src='images/item14.jpg'">
							<p>네오플렉시 레깅스 1+1</p>
							<hr>
							<p>29,000&nbsp;&nbsp;<strike>56,000</strike></p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item15.jpg">
							<p>블랙라벨 하이플렉시 에어로 8.5부</p>
							<hr>
							<p>39000&nbsp;&nbsp;<strike>68,000</strike></p>
						</li>
						<li>
							<img src="images/item16.jpg">
							<p>블랙라벨 하이플렉시 에어로 4.5부 블랙</p>
							<hr>
							<p>21,000&nbsp;&nbsp;<strike>31,000</strike></p>
						</li>
						<li>
							<img src="images/item4.jpg">
							<p>엑스프리즈마 홀터탑 블랙</p>
							<hr>
							<p>33,000</p>
						</li>
						<li>
							<img src="images/item5.jpg">
							<p>플래쉬 티셔츠 시어바이올렛</p>
							<hr>
							<p>27,000</p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item6.jpg">
							<p>이든 백아이보리</p>
							<hr>
							<p>27,000</p>
						</li>
						<li>
							<img src="images/item7.jpg">
							<p>아나이스 블랙</p>
							<hr>
							<p>43,000</p>
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
							<img src="images/item12.jpg">
							<p>엑스프리즈마 액티비티 브라탑 블랙</p>
							<hr>
							<p>27,000</p>
						</li>
						<li>
							<img src="images/item13.jpg">
							<p>엑스프리즈마 액티비티 브라탑 블랙</p>
							<hr>
							<p>27,000</p>
						</li>	
					</ul>
				</div>
				
				
				<div class="item-cont"> 
				 <h1>New arrivals</h1>     
					<ul>
						<li>
							<img src="images/item17.jpg">
							<p>헤바</p>
							<hr>
							<p>28,000&nbsp;&nbsp;<strike>36,000</strike></p>
						</li>
						<li>
							<img src="images/item18.jpg">
							<p>트랙라인</p>
							<hr>
							<p>48,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item19.jpg">
							<p>플로리아</p>
							<hr>
							<p>48,000&nbsp;&nbsp;<strike>58,000</strike></p>
						</li>
						<li>
							<img src="images/item20.jpg">
							<p>헤럴드</p>
							<hr>
							<p>48,000&nbsp;&nbsp;<strike>58,000</strike></p>
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
				<div class="item-cont">       
					<ul>
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
						<li>
							<img src="images/item28.jpg">
							<p>플레타 스모그그레이</p>
							<hr>
							<p>18,050&nbsp;&nbsp;<strike>19,000</strike></p>
						</li>	
					</ul>
				</div>
				<div class="item-cont">       
					<ul>
						<li>
							<img src="images/item29.jpg">
							<p>플레타 슈가피치</p>
							<hr>
							<p>18,050&nbsp;&nbsp;<strike>19,000</strike></p>
						</li>
						<li>
							<img src="images/item30.jpg">
							<p>플레타 블랙</p>
							<hr>
							<p>18,050&nbsp;&nbsp;<strike>19,000</strike></p>
						</li>
						<li>
							<img src="images/item31.jpg">
							<p>플레타 미드나잇블루</p>
							<hr>
							<p>18,050&nbsp;&nbsp;<strike>19,000</strike></p>
						</li>
						<li>
							<img src="images/item32.jpg">
							<p>유키 블랙</p>
							<hr>
							<p>37,050&nbsp;&nbsp;<strike>39,000</strike></p>
						</li>	
					</ul>
				</div>
				
				<div class="item-cont">   
				<h1>1+1</h1>     
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

<%@ include file="../include/footer.jsp" %>