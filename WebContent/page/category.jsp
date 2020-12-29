<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
.all-menu-wrap{
	position: relative;
	top:110px;
}
.all-menu-wrap .all-menu li {
    float: left;
    width: 200px;
    height: 200px;
}
li {
    list-style: none;
    margin: 0;
    padding: 0;
    display: list-item;
    text-align: -webkit-match-parent;
    
}

.bold{
	font-weight: bold;
	color:black;
	padding-bottom: -10px;
	line-height: 2.5;
}

.all-menu > li a{
	text-decoration:none;
	color: grey;
	font-size: 15px;
    margin-top: -50px;
    
}
</style>
	<form action="category.do" method="post">
		<div class="all-menu-wrap active">
			<ul class="all-menu active">
				<li>
					<a href="oneplus.do" class="bold" id="btnoneplus">1+1 set</a><br>
					<a href="#">베스트 100</a><br>
					<a href="#">시즌오프</a>
				</li>
				<li>
					<a href="top.do" class="bold" id="btntop">상의</a><br>
					<a href="#">탑</a><br>
					<a href="#">브라탑</a><br>
					<a href="#">아우터</a>
				</li>
				<li>
					<a href="bottom.do" class="bold" id="btnbottom">하의</a><br>
					<a href="#">레깅스</a><br>
					<a href="#">팬츠</a><br>
					<a href="#">쇼츠</a>
				</li>
				<li>
					<a href="swimwear.do" class="bold" id="btnswimwear">스윔웨어</a><br>
					<a href="#">상의</a><br>
					<a href="#">하의</a><br>
					<a href="#">아우터</a>
				</li>
				<li>
					<a href="ac.do" class="bold" id="btnac">악세사리</a><br>
					<a href="#">요가매트</a><br>
					<a href="#">양말</a><br>
					<a href="#">기타</a>
				</li>
			</ul>
		</div>
		</form>
<script>
$('#btnoneplus').on('click',function(){
	location.href="oneplus.do";
})

$('#btntop').on('click',function(){
	location.href="top.do";
})

$('#btnbottom').on('click',function(){
	location.href="bottom.do";
})

$('#btnswimwear').on('click',function(){
	location.href="swimwear.do";
})

$('#btnac').on('click',function(){
	location.href="ac.do";
})
</script>
	</body>
</html>