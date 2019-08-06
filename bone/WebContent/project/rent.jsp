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
			<img style="margin: auto;" src="images/strdw.png" class="img-responsive" alt="...">
            <table class="table table-striped">
			  <thead>
				<tr>
				  <th>주간 대관</th>
				  <th>새벽 대관</th>
				</tr>
			  </thead>
			  <tfoot>
				<tr>
				  <th>0600 ~ 2200</th>
				  <th>2200 ~ 0600</th>
				</tr>
			  </tfoot>
			  <tbody>
				<tr>
				  <td>A Hall - 9,000 / 1h</td>
				  <td>A Hall - 50,000 / 8h</td>
				  </tr>
				<tr>
				  <td>B Hall - 7,000 / 1h</td>
				  <td>B Hall - 35,000 / 8h</td>
				</tr>
				<tr>
				  <td>AB Hall - 16,000 / 1h</td>
				  <td>AB Hall - 80,000 / 8h</td>
				</tr>
			  </tbody>
			</table>
            <!-- /.section -->
            
            <hr>
			
			<p>*카카오톡 sss6205를 친구추가해주세요.<br>대관 문의는 카카오톡 또는 Q&A를 이용해주세요.</p>
		<%@ include file="footer.jsp" %>
        </div>
    </div>
</body>
</html>