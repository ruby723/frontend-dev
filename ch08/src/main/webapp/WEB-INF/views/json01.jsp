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
	$("button").click(function(){
		$.ajax({
			url: "${pageContext.request.contextPath }/api/json",
			dataType: "json",
			type: "get", 
			data: ""
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
	<h1>AJAX Test - JSON Format Message(Data)</h1>
	<button>데이터 가져오기</button>
	<div id="data"></div>
</body>
</html>