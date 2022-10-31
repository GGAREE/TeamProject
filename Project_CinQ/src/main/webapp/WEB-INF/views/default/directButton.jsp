<!-- default/directButton -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

/* button {
	height: 100px;
	width: 100px;
	border-radius: 50%;
	background-color: black;
	transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
	font-size: 20px;
	color: white;
	position: fixed;
	bottom : 50px;
	display: inline-block;
}

button:hover {
	background-color: white;
	color: black;
}
.btn1 {
	right : 300px;
}
.btn2 {
	right : 500px;
}
.btn3 {
	right : 700px;
}
 */
 
button{

  box-sizing: border-box;
  appearance: none;
  background-color: 0,0,0,0.8;
  border: 2px solid black;
  border-radius: 1em;
  color: black;
  cursor: pointer;
  display: flex;
  position: fixed;
  bottom: 30px;
  align-self: center;
  font-size: 1rem;
  font-weight: 100;
  line-height: 1;
  margin: 20px;
  padding: 1.2em 2.8em;
  text-decoration: none;
  text-align: center;
  text-transform: uppercase;
  font-family:  sans-serif;
  font-weight: 700;

}
button:hover {
    color:white;
	background-color: black;  
}
.first {
  right : 400px;
}
.second {
  right : 800px;
  
}
.third {
  right : 1200px;
}

</style>

</head>
<body>
<div class="submit">
    <a href="/root/join/artistForm?id=${loginUser}"><button class="first" name="createP"> 프로젝트생성 </button></a>
    <a href="#"><button class="second" name="rent"> 예매하기 </button></a>
    <a href="/root/place/rentPlace"><button class="third" name="rent"> 장소등록 </button></a>
	
</div> 
</body>
</html>