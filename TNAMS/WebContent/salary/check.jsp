<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<link
   href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
   rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/resources/admin/dist/css/AdminLTE.min.css" rel="stylesheet"
   type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="/resources/admin/dist/css/skins/_all-skins.min.css"
   rel="stylesheet" type="text/css" />
<link href="/resources/admin/custom.css" rel="stylesheet"
   type="text/css" />
<!-- CSS | Preloader Styles -->
<link href="/resources/css/preloader.css" rel="stylesheet"
   type="text/css">

<link href="css/popup.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/cent.js?ver=4"></script>




<title>급여항목번호중복 조회</title>
</head>
<body>
<div class="box">
   <div class="box-header with-border">
      <p>
         <h2 class="box-title"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>&nbsp;급여항목번호
         중복 검사</h2>
      </p>
   </div>
   <div class="popup_body">

      <form name="frm" method="post" action="salary?command=salaryNumCheck&popup=yes">급여항목번호 : &nbsp; 
      <input type="text" name="salaryNum" value="${salaryNum}">
         <button type="submit" class="btn btn-default">조회</button>
         
         <input type="hidden" name="salaryNumOk" value="1">

         <c:if test="${result==-1}">
            <div class="popup_box">

               <p>
                  '${salaryNum}'은 등록가능합니다.
                  <button type="button" onclick="useSalaryNum()">사용</button>
                  
                <!-- <button type="button" onclick="usesalaryNum()">사용</button> -->
               </p>

            </div>
         </c:if>

         <c:if test="${result==1}">

            <div class="popup_box">
               <p  class="search-result_label">'${salaryNum}'은 중복입니다.</p>
            </div>
         </c:if>
      </form>



   </div>
   </div>
<script>

   function useSalaryNum() {

      opener.frm.salaryNum.value = document.frm.salaryNum.value;
      opener.frm.action = "salary?command=salaryRegist";
      self.close();
   }

</script>

</body>
</html>   --%>