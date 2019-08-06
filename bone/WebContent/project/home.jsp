<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                    <div class="col-md-3">
                        <a href="genre.jsp" class="thumbnail">
                            <img src="images/strd.jpg" alt="">
                        </a>
                        <h3>Genre</h3>
                        <p>B-boy  Poppin  Hiphop  Rocking  Waacking  Krump  House</p>
                        <a href="genre.jsp" class="btn btn-primary btn-sm">Read More</a>
                    </div>
                    <div class="col-md-3">
                        <a href="rent.jsp" class="thumbnail">
                            <img src="images/strd.png" alt="">
                        </a>
                        <h3>Rent</h3>
                        <p>Click here to use the <br>practice room hall</p>
                        <a href="rent.jsp" class="btn btn-primary btn-sm">Read More</a>
                    </div>
                    <div class="col-md-3">
                        <a href="qna.jsp" class="thumbnail">
                            <img src="images/strd1.jpg" alt="">
                        </a>
                        <h3>Q & A</h3>
                        <p>a free bulletin board<br>Feel free to ask questions.</p>
                        <a href="qna.jsp" class="btn btn-primary btn-sm">Read More</a>
                    </div>
                    <div class="col-md-3">
                        <a href="about.jsp" class="thumbnail">
                            <img src="images/road.jpg" alt="">
                        </a>
                        <h3>About</h3>
                        <p>Everything in <br>B.ONE</p>
                        <a href="about.jsp" class="btn btn-primary btn-sm">Read More</a>
                    </div>
                </div>
            </div>
            <!-- /.section -->
            
            <hr>
		 <%@ include file="footer.jsp" %>
        </div>
    </div>
    <%@ include file="../include/header.jsp" %>

</body>
</html>