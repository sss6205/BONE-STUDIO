<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<div class="nav-wrapper">
            <div class="container">
                
                <nav class="navbar navbar-default navbar-inverse" role="navigation">
                  <div class="container-fluid">
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="${path}/project/home.jsp">B.ONE</a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav">
                        <li><a href="${path}/project/home.jsp">HOME</a></li>
                        <li class="dropdown">
                          <a href="${path}/project/genre.jsp" class="dropdown-toggle" data-toggle="dropdown">GENRE<span class="caret"></span></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="${path}/project/genre.jsp">B-BOY</a></li>
                            <li class="divider"></li>
                            <li><a href="${path}/project/genre.jsp">POPPIN</a></li>
                            <li class="divider"></li>
                            <li><a href="${path}/project/genre.jsp">HIPHOP</a></li>
                            <li class="divider"></li>
                            <li><a href="${path}/project/genre.jsp">ROCKING</a></li>
                            <li class="divider"></li>
                            <li><a href="${path}/project/genre.jsp">WAACKING</a></li>
                            <li class="divider"></li>
                            <li><a href="${path}/project/genre.jsp">KRUMP</a></li>
                            <li class="divider"></li>
                            <li><a href="${path}/project/genre.jsp">HOUSE</a></li>
                          </ul>
                        </li>
                        <li><a href="${path}/project/rent.jsp">RENT</a></li>
                        <li><a href="${path}/project/qna.jsp">Q&A</a></li>
                        <li><a href="${path}/project/about.jsp">ABOUT</a></li>
                      </ul>
                      
             		<c:if test="${userid == null }">
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="${path}/project/login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                      </ul>
                    </c:if>
                    <c:if  test="${userid != null }">
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="#" id="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                      </ul>
                    </c:if>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>

            </div>
            <!-- /.container -->
        </div>
        <!-- /.nav-wrapper -->
        
          <c:if test="${param.message == 'logout' }">
    <script>
      alert("로그아웃되었습니다.");
    </script>
  </c:if> 
    <c:if test="${param.message == 'login' }">
    <script>
      alert("환영합니다.");
    </script>
  </c:if> 
</body>
<script type="text/javascript">
$(function(){
	$("#logout").click(function(){
		 location.href="/jsp02/session2_servlet/logout.do";
		 });
	  });
</script>
</body>
</html>