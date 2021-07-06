<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"> </script>
<script>
$(function(){
	const vo = {
		name:"둘리",
		password"1234",
		message:"ㅎㅇ"
	};
	
	$("button").click(function(){
		$.ajax({
			url: "${pageContext.request.contextPath }/api/post01",
			async: true,
			dataType: "json",	// 받을 때 포맷
			type: "post", 		// 요청 method
			
			// post 요청 시 보내는 데이터
			// 1.form data
			contentType: "application/x-www-form-rulencoded",
			data: "name=김정인&password=1234&message=ㅎㅇ",
			
			// 2. JSON data 
			// contentType: "application/json",
			// data: '{"name":"김정인", "password":"1234", "message":"ㅎㅇ"}'
			
			success: function(response){	
				let html = "";
				html += ("<h4>" + response.data.no +"</h4>");
				html += ("<h5>" + response.data.name +"</h5>");
				html += ("<p>" + response.data.message + "</p>");
				
				$("#data").append(html);
			}
		});
	});
});

</script>
</head>
<body>
	<h1>AJAX Test - post data(form data format)</h1>
	<button>데이터 보내기</button>
	<div id="data"></div>
</body>
</html>