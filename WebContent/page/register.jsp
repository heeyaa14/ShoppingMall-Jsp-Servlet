<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="../include/header.jsp" %>
  <style>

form{
   position:relative;
   top:100px;
   bottom: 500%;
   margin:100px;
}

form > div{
   padding-bottom: 10px; 
}
</style>
   <form action="register.do" method="post" enctype="multipart/form-data">
   <h1>상품 등록</h1>
      <div class="inputArea">
         <label>1차 분류</label> 
         <!-- <select id="c_parent_id" name="c_parent_id" onchange="changes(document.form.c_parent_id.value)"> -->
         <select id="c_parent_id" name="c_parent_id" onchange="changes()">
            <option>선택</option>
            <option value="상의">상의</option>
            <option value="하의">하의</option>
            <option value="스윔웨어">스윔웨어</option>
            <option value="악세사리">악세사리</option>
         </select> 
         <label>2차 분류</label>
          <select id="c_id" name="c_id">
            <option value="">전체</option>
         </select>
      </div>
      
      <div class="inputArea">
         <label>메인사진</label> 
         <input type="file" name="filename" id="filename">
      </div>

      <div class="inputArea">
         <label>상품명</label> <input type="text" id="i_name" name="i_name" />
      </div>

      <div class="inputArea">
         <label>상품가격</label> <input type="text" id="i_price" name="i_price" />
      </div>

      <div class="inputArea">
         <label>상품소개</label>
         <textarea rows="5" cols="50" id="i_desc" name="i_desc"></textarea>
      </div>
   
      <div class="inputArea">
         <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
      </div>

   </form>

<script>


function changes()
{    
   var fr = $("#c_parent_id").val();
   
  if(fr=="상의"){
      num = new Array("탑","브라탑","아우터");
      vnum = new Array("1","2","3");
   }else if(fr =="하의"){
      num = new Array("레깅스","팬츠","쇼츠");
      vnum = new Array("1","2","3");
   }else if(fr =="스윔웨어"){
      num = new Array("상의","하의","아우터");
      vnum = new Array("1","2","3");
   }else if(fr =="악세사리"){
      num = new Array("양말","요가매트","기타");
      vnum = new Array("1","2","3");
   }
   
   $("#c_id").empty();   

      
   
   for(var i=0; i<3; i++){
       var option = $("<option>"+num[i]+"</option>");
      
      $("#c_id").append(option);
      /* document.form.c_id.options[i] = new Option(num[i],vnum[i]); */
      
   }
 
}



/* function changes(fr){
   if(fr=="상의"){
      num = new Array("탑","브라탑","아우터");
      vnum = new Array("1","2","3");
   }else if(fr =="하의"){
      num = new Array("레깅스","팬츠","쇼츠");
      vnum = new Array("1","2","3");
   }else if(fr =="스윔웨어"){
      num = new Array("상의","하의","아우터");
      vnum = new Array("1","2","3");
   }else if(fr =="악세사리"){
      num = new Array("양말","요가매트","기타");
      vnum = new Array("1","2","3");
   }
   
   for(i=0; i<form.c_id.length; i++){
      document.form.c_id.options[0] = null;
   }
   for(i=0; i<num.length; i++){
      document.form.c_id.options[i] = new Option(num[i],vnum[i]);
   }
   
} */



$('#register_Btn').on('click',function(){
   var page = document.form.c_parent_id.value;
   var image=$("#filename").val();
   var name=$("#i_name").val();
   var price=$("#i_price").val();
   var des=$("#i_desc").val();
   
   if(page == ""){
      alert("1차 분류를 선택해주세요");
      return false;
   }else if(image ==""){
      alert("사진을 업로드해 주세요");
      return false;
   }else if(name ==""){
      alert("상품명을 입력하세요");
      $("#i_name").focus();
      return false;
   }else if(price ==""){
      alert("가격을 입력하세요");
      $("#i_price").focus();
      return false;
   }else if(desc ==""){
      alert("상품소개를 입력하세요");
      $("#i_desc").focus();
      return false;
   }
   return true;
      /* if (page == 1) {
         location.href = "top.jsp";
      } else if (page == 2) {
         location.href = "bottom.jsp";
      } else if (page == 3) {
         location.href = "swimwear.jsp";
      } else {
         location.href = "ac.jsp";
      } */
});
</script>
<%@ include file="../include/footer.jsp" %>