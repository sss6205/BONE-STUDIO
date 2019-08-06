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
	$("#btnWrite").click(function(){
		location.href="${path}/project/write.jsp"
	})
});
</script>
  <style type="text/css">
    .carousel-inner img {
	  width: 80%;
	  margin: auto;
  }  
  
  
  </style>
</head>
<body>

    <div id="wrapper">

       <%@ include file="nav.jsp" %>

        <div class="container">
			<img style="margin: auto;" src="../project/images/strdw.png" class="img-responsive" alt="...">
            <table class="table table-striped">
			  <thead>
				<tr>
				  <th>번호</th>
				  <th>이름</th>
				  <th>제목</th>
				  <th>날짜</th>
				  <th>조회수</th>
				  <th>첨부파일</th>
				  <th>다운로드</th>
				</tr>
			  </thead>
			  <c:forEach var="dto" items="${list}">
			  <c:choose> 
 			  <c:when test="${dto.show == 'y'}">
			  <tbody>
				<tr>
				  <td>${dto.num}</td>
				  <td>${dto.writer}</td>
				  <td>
				  <c:forEach var="i" begin="1" end="${dto.re_level}">
  					&nbsp;&nbsp;
				  </c:forEach>
					<a href="${path}/qna_servlet/view.do?num=${dto.num}">
					  ${dto.subject}</a>
				  <c:if test="${dto.comment_count > 0}">
				  <span style="color:red;">(${dto.comment_count})</span>
					</c:if>
				  </td>
				  <td>${dto.reg_date}</td>
				  <td>${dto.readcount}</td>

  				  <td align="center">
    				<c:if test="${dto.filesize > 0}">
     				<a href="${path}/qna_servlet/download.do?num=${dto.num}">
      				<img src="../images/file.gif">
      				</a> 
  					</c:if>
  				  </td>
  				  <td>${dto.down}</td>
				</tr>
				</c:when>
			    <c:otherwise>
 				<tr>
   				  <td>${dto.num}</td>
  				  <td colspan="6" align="center">
   				    삭제된 게시물입니다.
   				  </td>
 				</tr>
				</c:otherwise>
				</c:choose>
				</c:forEach>
				<tr>
				<tr align="center">
  				  <td colspan="7">
  				     <c:if test="${page.curPage > 1}">
   				     	<a href="#" onclick="list('1')">[처음]</a>
   				     </c:if>
   					 <c:if test="${page.curBlock > 1}">
    				    <a href="#" onclick="list('${page.prevPage}')">[이전]</a>
   					 </c:if>
  				     <c:forEach var="num" begin="${page.blockStart}" 
    				  end="${page.blockEnd }">
      			  <c:choose>
     			     <c:when test="${num == page.curPage }">
       				     <span style="color:red">${num}</span>
      			    </c:when>
       			  <c:otherwise>
         			   <a href="#" onclick="list('${num}')">${num}</a>
     		      </c:otherwise>
     		      </c:choose>
   			      </c:forEach>
   				  <c:if test="${page.curBlock < page.totBlock }">
   				     <a href="#" onclick="list('${page.nextPage}')">[다음]</a>
   				  </c:if>
   				  <c:if test="${page.curPage < page.totPage}">
    			    <a href="#" onclick="list('${page.totPage}')">[끝]</a>
 				  </c:if>
 				</tr>
			  </tbody>
			</table>
			<button id="btnWrite">글쓰기</button>
            <!-- /.section -->
            
<%@ include file="footer.jsp" %>
        </div>
    </div>
    <c:if test="${sessionScope.userid == null }">
    <script>
      alert("로그인하신 후 사용하세요.");
      location.href="${path}/project/login.jsp";
    </script>
  </c:if>
    
</body>
</html>