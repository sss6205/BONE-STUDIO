<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	list('1');//1페이지라는 뜻, 2로 쓰면 2페이지가 출력...
});
function list(curPage){
	var param="curPage="+curPage;
	
	$.ajax({
		type: "post",
		url: "${path}/qna_servlet/list.do",
		data: param,
		success: function(result){//콜백함수(서버의 응답 처리)
			$("#result").html(result);
		}
	});
};

</script>

</head>
<body>
<div id="result"></div>

</body>
</html>