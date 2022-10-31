
<!-- place/placeAllListNum.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>placeAllListNum</title>

<link href="${contextPath}/resources/script/css/listNum.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<script type="text/javascript">


</script>
</head>
<body>
   <c:import url="../default/header.jsp"/>
   <div align="center" class="main">
   <input type="hidden" name="place" value="${loc_sep_name }">
   <!-- <div align="center"> -->
   <br>
   <h1 align="center"> Place List </h1>
   <form action="placeSearchList" method="post" enctype='multipart/form-data'>
   	<div class="search-box">
      <input type="text" class="search-txt" name="loc_sep_name"placeholder="지역 검색  (예시 : 강남)">
      <a class="search-btn" href="#">
        <i class="fas fa-search"></i>
      </a>
    </div>
   	<!-- <input type="submit" value="검색"> -->
   </form>
   <br>
   <!-- 등록된 장소 목록 부분 -->
   
      <c:if test="${placeList.size() == 0}">
            <tr>
               <th>등록된 글이 없습니다</th>
            </tr>   
      </c:if>
     <div class="placeList">
     <table>
      <c:forEach var="dto" items="${placeList}">
          <c:if test="${dto.image == 'nan'}">
               <td>
                   <b>이미지가 없습니다..</b>
               </td>
          </c:if>
          <c:if test="${dto.image != 'nan'}">
              <td rowspan="3">
                  <div class="wrapper">
   					 <div class="circle"></div>
				  </div>
                  <a href="/root/place/placeView?write_no=${dto.write_no}"><img src="${contextPath}/place/download?imageFileName=${dto.image}" width="400px" height="450px"></a>
 			      <br>
 				  <a href="/root/place/placeView?write_no=${dto_s.write_no}">Title : ${dto.title}</a>
 				  <br> 
 				  <a href="/root/place/placeView?write_no=${dto_s.write_no}">Capacity : ${dto.max_count}</a>      
              </td>
              &emsp; &emsp; &emsp; &emsp;
          </c:if>
      </c:forEach>
      </table>
   </div>
   <c:if test="${placeSearchList.size() == 0}">
       <tr>
           <th colspan="7">검색하신 지역중에 등록된 장소가 없습니다</th>
       </tr>   
   </c:if>
   <c:forEach var="dto_s" items="${placeSearchList}">
       <tr>
	       <td><a href="/root/place/placeView?write_no=${dto_s.write_no}">${dto_s.write_no}</a></td>
		   <td>${dto_s.title}</td>
		   <c:if test="${dto_s.image == 'nan'}">
               <td>
               <b>이미지가 없습니다..</b>
               </td>
           </c:if>
           <c:if test="${dto_s.image != 'nan'}">
               <td><a href="/root/place/placeView?write_no=${dto_s.write_no}"><img src="${contextPath}/place/download?imageFileName=${dto_s.image}" width="200px" height="200px"></a></td>
           </c:if>
                <td><a href="/root/place/placeView?write_no=${dto_s.write_no}">${dto_s.loc_sep_name}</a></td>
				<td><a href="/root/place/placeView?write_no=${dto_s.write_no}">${dto_s.max_count}</a></td>
       </tr>
   </c:forEach>
      <div class="helper">
      <c:forEach var="num" begin="1" end="${repeat}">
          <a href="placeAllListNum?num=${num}">[${num}]</a>
       </c:forEach>
       </div>  
       <br>
       <div >
          <a class="button" href="${contextPath }/place/rentPlace">글작성</a>
       </div>
   <c:import url="../default/footer.jsp"/>
   </div>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> 
