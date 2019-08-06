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
	$("#btnSave").click(function(){
		document.form1.submit();
	});
});

</script>
</head>
<body>
<div class="container">
<img style="margin: auto;" src="../project/images/bone.jpg" class="img-responsive" alt="...">
        <form name="form1" method="post" action="${path}/qna_servlet/insert.do" enctype="multipart/form-data">
<table class="table table-bordered">
    <thead>
        <caption> 글쓰기 </caption>
    </thead>
    <tbody>
        	<tr>
                <th>작성자: </th>
                <td><input type="text" placeholder="이름을 입력하세요. " name="writer" id="writer" class="form-control"/></td>
            </tr>
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="subject" id="subject" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="content" id="content" class="form-control"></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="file" placeholder="파일을 선택하세요. " name="file1" class="form-control"/></td>
            </tr>
            <tr>
                <th>비밀번호: </th>
                <td><input type="password" placeholder="비밀번호를 입력하세요" name="passwd" id="passwd" class="form-control"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" value="등록" id="btnSave" class="pull-right"/>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='qna.jsp'"/>
                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                </td>
            </tr>
    </tbody>
</table>
</form>
</div>

</body>
</html>