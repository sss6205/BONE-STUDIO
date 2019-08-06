<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(function(){
	//모달을 전역변수로 선언
    var modalContents = $(".modal-contents");
    var modal = $("#defaultModal");
     
    $('.onlyAlphabetAndNumber').keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
        }
    });
     
    $(".onlyNumber").keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi,''));
        }
    });
     
    //------- 검사하여 상태를 class에 적용
    $('#userid').keyup(function(event){
         
        var divId = $('#divId');
         
        if($('#userid').val()==""){
            divId.removeClass("has-success");
            divId.addClass("has-error");
        }else{
            divId.removeClass("has-error");
            divId.addClass("has-success");
        }
    });
     
    $('#passwd').keyup(function(event){
         
        var divPassword = $('#divPassword');
         
        if($('#passwd').val()==""){
            divPassword.removeClass("has-success");
            divPassword.addClass("has-error");
        }else{
            divPassword.removeClass("has-error");
            divPassword.addClass("has-success");
        }
    });
     
    $('#passwordCheck').keyup(function(event){
         
        var passwordCheck = $('#passwordCheck').val();
        var passwd = $('#passwd').val();
        var divPasswordCheck = $('#divPasswordCheck');
         
        if((passwordCheck=="") || (passwd!=passwordCheck)){
            divPasswordCheck.removeClass("has-success");
            divPasswordCheck.addClass("has-error");
        }else{
            divPasswordCheck.removeClass("has-error");
            divPasswordCheck.addClass("has-success");
        }
    });
     
    $('#name').keyup(function(event){
         
        var divName = $('#divName');
         
        if($.trim($('#name').val())==""){
            divName.removeClass("has-success");
            divName.addClass("has-error");
        }else{
            divName.removeClass("has-error");
            divName.addClass("has-success");
        }
    });
     
     
    $('#email').keyup(function(event){
         
        var divEmail = $('#divEmail');
         
        if($.trim($('#email').val())==""){
            divEmail.removeClass("has-success");
            divEmail.addClass("has-error");
        }else{
            divEmail.removeClass("has-error");
            divEmail.addClass("has-success");
        }
    });
     
    $('#hp').keyup(function(event){
         
        var divPhoneNumber = $('#divPhoneNumber');
         
        if($.trim($('#hp').val())==""){
            divPhoneNumber.removeClass("has-success");
            divPhoneNumber.addClass("has-error");
        }else{
            divPhoneNumber.removeClass("has-error");
            divPhoneNumber.addClass("has-success");
        }
    });
     
     
    //------- validation 검사
    $( "form" ).submit(function( event ) {
         
        var provision = $('#provision');
        var memberInfo = $('#memberInfo');
        var divId = $('#divId');
        var divPassword = $('#divPassword');
        var divPasswordCheck = $('#divPasswordCheck');
        var divName = $('#divName');
        var divNickname = $('#divNickname');
        var divEmail = $('#divEmail');
        var divPhoneNumber = $('#divPhoneNumber');
         
        //아이디 검사
        if($('#userid').val()==""){
            modalContents.text("아이디를 입력하여 주시기 바랍니다.");
            modal.modal('show');
             
            divId.removeClass("has-success");
            divId.addClass("has-error");
            $('#userid').focus();
            return false;
        }else{
            divId.removeClass("has-error");
            divId.addClass("has-success");
        }
         
        //패스워드 검사
        if($('#passwd').val()==""){
            modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
            modal.modal('show');
             
            divPassword.removeClass("has-success");
            divPassword.addClass("has-error");
            $('#passwd').focus();
            return false;
        }else{
            divPassword.removeClass("has-error");
            divPassword.addClass("has-success");
        }
         
        //패스워드 확인
        if($('#passwordCheck').val()==""){
            modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
            modal.modal('show');
             
            divPasswordCheck.removeClass("has-success");
            divPasswordCheck.addClass("has-error");
            $('#passwordCheck').focus();
            return false;
        }else{
            divPasswordCheck.removeClass("has-error");
            divPasswordCheck.addClass("has-success");
        }
         
        //패스워드 비교
        if($('#passwd').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
            modalContents.text("패스워드가 일치하지 않습니다.");
            modal.modal('show');
             
            divPasswordCheck.removeClass("has-success");
            divPasswordCheck.addClass("has-error");
            $('#passwordCheck').focus();
            return false;
        }else{
            divPasswordCheck.removeClass("has-error");
            divPasswordCheck.addClass("has-success");
        }
         
        //이름
        if($('#name').val()==""){
            modalContents.text("이름을 입력하여 주시기 바랍니다.");
            modal.modal('show');
             
            divName.removeClass("has-success");
            divName.addClass("has-error");
            $('#name').focus();
            return false;
        }else{
            divName.removeClass("has-error");
            divName.addClass("has-success");
        }
         
        //이메일
        if($('#email').val()==""){
            modalContents.text("이메일을 입력하여 주시기 바랍니다.");
            modal.modal('show');
             
            divEmail.removeClass("has-success");
            divEmail.addClass("has-error");
            $('#email').focus();
            return false;
        }else{
            divEmail.removeClass("has-error");
            divEmail.addClass("has-success");
        }
         
        //휴대폰 번호
        if($('#hp').val()==""){
            modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
            modal.modal('show');
             
            divPhoneNumber.removeClass("has-success");
            divPhoneNumber.addClass("has-error");
            $('#hp').focus();
            return false;
        }else{
            divPhoneNumber.removeClass("has-error");
            divPhoneNumber.addClass("has-success");
        }
    });
});



$(function(){
	$("#btnJoin").click(function(){
	  var userid=$("#userid").val(); //id가 userid인 태그에 입력된 값
	  var passwd=$("#passwd").val();
	  var name=$("#name").val();
	  var email=$("#email").val();
	  var hp=$("#hp").val();
	  //파라미터 구성{"변수명":값, "변수명":값}
	  var param={"userid": userid, "passwd": passwd, "name": name, "email": email, "hp": hp};
	  $.ajax({
		 type: "post",
		 url: "/jsp02/session2_servlet/join.do",
		 data: param,
		 success: function(){ alert("회원가입완료");
		 location.href="login.jsp";
		 }
	  });
  });	
});

</script>
</head>
<body>
   <div id="wrapper">

        <div class="nav-wrapper">
          
            <div class="container">

  <form>
             <div class="form-group" id="divId">
                <label for="inputId" class="col-lg-2 control-label">아이디</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyAlphabetAndNumber" id="userid" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="passwd" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPasswordCheck">
                <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divName">
                <label for="inputName" class="col-lg-2 control-label">이름</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                </div>
            </div>
             
            <div class="form-group" id="divEmail">
                <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                <div class="col-lg-10">
                    <input type="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
                </div>
            </div>
            <div class="form-group" id="divPhoneNumber">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                <div class="col-lg-10">
                    <input type="tel" class="form-control onlyNumber" id="hp" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">성별</label>
                <div class="col-lg-10">
                    <select class="form-control" id="gender">
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button id="btnJoin" type="button" class="btn btn-default">Sign in</button>
                </div>
            </div>
  	</form>
 </div>
</div>
</div>
</body>
</html>