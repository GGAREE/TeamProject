
<!-- place/placeSearchListNum.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>placeSearchListNum</title>
<link href="${contextPath}/resources/script/css/listNum.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/script/css/search.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">


<script type="text/javascript">


</script>
</head>
<body>
    <c:import url="../default/header.jsp"/>
    <input type="hidden" value="${placeList}">
    <!-- <div align="center"> -->
   	<div class="main">
    <br>
    <h1 align="center"> Place List </h1>
    <form action="placeSearchList" method="post" enctype='multipart/form-data'>
        <div class="search-box">
	        <input type="text" class="search-txt" name="loc_sep_name" placeholder="지역 검색  (예시 : 강남)"> 
		        <a class="search-btn" href="#"> <i class="fas fa-search"></i></a>
	    </div>
    </form>
    <br>
    <table class="Table">
        <tr class= "title1">
        	<th width="100px">ID</th>
            <th width="100px">NUMBER</th>
         	<th width="250px">PROFILE</th>
         	<th width="500px">TITLE</th>
        	<th width="100px">LOCATION</th>
        	<th width="700px">CONTENT</th>
        </tr> 
        <c:if test="${placeList.size() == 0}">
        	<tr>
            	<th colspan="6">검색하신 지역중에 등록된 장소가 없습니다</th>
            </tr>   
        </c:if>
        <c:forEach var="dto_s" items="${placeList}">
        	<tr id="content_row">
        		<td id="content_td">${dto_s.id}</td>
				<td id="content_td"><a href="/root/place/placeView?write_no=${dto_s.write_no}">${dto_s.write_no}</a></td>
				<c:if test="${dto_s.image == 'nan'}">
                <td>
                    <b>이미지가 없습니다..</b>
                </td>
                </c:if>
                <c:if test="${dto_s.image != 'nan'}">
                	<td id="content_td">
                 		<a href="/root/place/placeView?write_no=${dto_s.write_no}"><img src="${contextPath}/place/download?imageFileName=${dto_s.image}" width="250px" height="200px"></a>
                  	</td>
                </c:if>
                <td id="content_td"><a href="/root/place/placeView?write_no=${dto_s.write_no}">${dto_s.title}</a></td>
                <td id="content_td"><a href="/root/place/placeView?write_no=${dto_s.write_no}">${dto_s.loc_sep_name}</a></td>
				<td id="content_td"><a href="/root/place/placeView?write_no=${dto_s.write_no}">${dto_s.content}</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="6" align="center">
                <c:forEach var="num" begin="1" end="${repeat}">
                    <button onclick="location.href='placeSearchList?loc_sep_name=${loc_sep_name}&num=${num}'">${num}</button>
                </c:forEach>
            </td>
        </tr>
        <tr>
        	<td colspan="6">
        		 <button onclick="location.href='${contextPath }/place/rentPlace'">글작성</button>
            </td>
     	</tr>   
    </table>
    </div>
   	<c:import url="../default/footer.jsp"/>
</body>
</html> 