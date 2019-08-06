<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
    .carousel-inner img {
	  width: 80%;
	  margin: auto;
  }     
    
    img {
	  margin: auto;
  }  
  
  
  </style>
</head>
<body>

    <div id="wrapper">

        <%@ include file="nav.jsp" %>
		
		<div id="mainCarousel" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#mainCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#mainCarousel" data-slide-to="1"></li>
              </ol>
              
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="images/ahall.jpg" alt="...">
                  <div class="carousel-caption">
                    <h3>A HALL</h3>
                  </div>
                </div>
                <div class="item">
                  <img src="images/bhall.jpg" alt="...">
                  <div class="carousel-caption">
                    <h3>B HALL</h3>
                  </div>
                </div>
              </div>

              <!-- Controls -->
              <a class="left carousel-control" href="#mainCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#mainCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
              </a>
        </div>
		
        <div class="container">
          
        	<div class="section">
                <div class="row">
                    <div class="col-md-7">
                        <h1>주소</h1>
                        <p>서울시 송파구 삼전로1길 22 롯데아트빌라 102호<span class="fa fa-heart"></span></p>
                        <p>대표전화 : 010-9128-9663<span class="fa fa-heart"></span></p>
                        <p>1. 지하철 이용시<br>
						  1) 삼전역 4번 출구 / 도보5분<br>
						  삼전역 4번 출구로나와서 학여울역 방면으로 직진<br>
						  2. 버스 이용시<br>
						  1) 340, 350, 3012, 3314, 3417번이용
                    </div>
                    <div class="col-md-5">
                        <img src="images/road.jpg" class="img-responsive" alt="">
                    </div>
                </div>
            </div>
            <a class="btn btn-danger btn-lg btn-block" href="https://maps.google.co.kr/maps?q=%EC%84%9C%EC%9A%B8&ie=UTF8&hnear=Seoul&t=m&z=11" 
              target="_blank" role="button">구글맵으로 찾기</a>
            <hr>

            <%@ include file="footer.jsp" %>
        </div>
    </div>
</body>
</html>