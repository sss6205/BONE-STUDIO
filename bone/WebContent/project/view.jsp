<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	comment_list();
	$("#btnSave").click(function(){
		comment_add();
	});
	$("#btnList").click(function(){
		location.href="${path}/qna_servlet/list.do";
	});
	$("#btnReply").click(function(){
		document.form1.action="${path}/qna_servlet/reply.do";
		document.form1.submit();
	});
	$("#btnEdit").click(function(){
		document.form1.action="${path}/qna_servlet/pass_check.do";
		document.form1.submit();
	});
	
});
function comment_add(){
	var param="board_num=${dto.num}&writer="+$("#writer").val()
	+"&content="+$("#content").val();
	$.ajax({
		type: "post",
		url: "${path}/qna_servlet/comment_add.do",
		data: param,
		success: function(){
			$("#writer").val("");
			$("#content").val("");
			comment_list();
		}
	});
}

function comment_list(){
	$.ajax({
		type: "post",
		url: "${path}/qna_servlet/commentList.do",
		data: "num=${dto.num}",
		success: function(result){
			$("#commentList").html(result);
		}
	});
}
</script>
</head>
<body>
<div class="container">
<img style="margin: auto;" src="../project/images/bone.jpg" class="img-responsive" alt="...">
<form name="form1" method="post">
<table class="table table-bordered">
	<thead>
        <caption> 상세화면 </caption>
    </thead>
    <tbody>
    		<tr>
				<td>날짜</td>
				<td>${dto.reg_date}</td>
				<td>조회수</td>
				<td>${dto.readcount}</td>
			</tr>
        	<tr>
                <th>작성자: </th>
                <td colspan="3">${dto.writer}</td>
            </tr>
            <tr>
                <th>제목: </th>
                <td colspan="3">${dto.subject}</td>
            </tr>
            <tr>
                <th>내용: </th>
                <td colspan="3">${dto.content}</td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td colspan="3">
				<c:if test="${dto.filesize > 0}">
				${dto.filename}( ${dto.filesize} bytes )
				<a href="${path}/qna_servlet/download.do?num=${dto.num}">
				[다운로드]</a>
				</c:if>
				</td>
            </tr>
            <tr>
                <th>비밀번호: </th>
                <td colspan="3">
				<input type="password" name="passwd" id="passwd">
				<c:if test="${param.message == 'error' }">
				<span style="color:red;">
					비밀번호가 일치하지 않습니다.
				</span>
			</c:if>
			</td>
            </tr>
            <tr>
                <td colspan="4" align="center">
					<input type="hidden" name="num" value="${dto.num}">
					<input type="button" value="수정/삭제" id="btnEdit">
					<input type="button" value="답변" id="btnReply">
					<input type="button" value="목록" id="btnList">
				</td>
            </tr>
		</tbody>
</table>
</form>
</div>

</body>
</html>