<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>testweb</title>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="/resources/assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img
				src="/resources/images/logo.svg" alt="" /></span>
			<h1>테스트웹페이지</h1>
			<p>
				비버의 웹페이지<br /> built by <a href="">@beaver</a> for <a
					href="https://html5up.net">HTML5 UP</a>.
			</p>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="/member/login" class="active">로그인</a></li>
				<li><a href="/member/join">회원가입</a></li>
				<li><a href="#second">게시판</a></li>
				<li><a href="#cta">아무거나</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section id="intro" class="main">
				<div class="spotlight">
					<div class="content">
						<header class="major">
							<h2>로그인</h2>
						</header>
						<p>
						<form id="join_form" method="post" >
							<div class="row gtr-uniform">
								<div class="col-12">아이디</div>
								<div class="col-12">
									<input type="text" name="memberId" class="id_input" id="demo_id" placeholder="id" />
									 <span id="idck"></span>
								</div>
								<div class="col-12">비밀번호</div>
								<div class="col-12">
									<input type="text" name="memberPw" class="pw_input" placeholder="pw" />
								</div>
								<div class원격 불끄기="col-12">비밀번호 재확인</div>
								<div class="col-12">
									<input type="text" id="demo_pwck" class="pwck_input" placeholder="pwck" />
								</div>
								<div class="col-12">이름</div>
								<div class="col-12">
									<input type="text" name="memberName" class="user_input" placeholder="name" />
								</div>
								<div class="col-12">이메일</div>
								<div class="col-12">
									<input type="text" name="memberMail" class="mail_input"
										placeholder="email" />
								</div>
								<div class="mail_check_wrap">
									<div class="col-6 col-12-small">
										<input type="text" class="mail_check_input_box" disabled="disabled" />
									</div>
									<div class="col-6 col-12-small">
									<br>
										<span class="button primary" id="email_button" onclick="emailCheck()">인증번호전송</span>
										<span id="mail_check_input_box_wran"></span>
									</div>
								</div>
								<div class="col-12">주소</div>
								<div class="col-6 col-12-small">
									<input type="text" name="memberAddr1" id="demo-address1"
										/>
								</div>
								<div class="col-6 col-12-small">
									<a class="button primary">주소찾기</a>
								</div>
								<div class="col-12">
									<input type="text" name="memberAddr2" id="demo-address2"
										/>
								</div>
								<div class="col-12">
									<input type="text" name="memberAddr3" id="demo-address3"
										 />
								</div>
								<div class="col-12">
									<input type="submit" value="가입하기" class="join_button primary" />
								</div>
							</div>
						</form>
						</p>
					</div>
				</div>
			</section>
		</div>

	</div>
	<!-- Footer -->
	<footer id="footer">
		<section>
			<h2>Aliquam sed mauris</h2>
			<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat
				consequat magna adipiscing tempus etiam dolore veroeros. eget
				dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin, ligula
				erat egestas velit, vitae tincidunt odio.</p>
			<ul class="actions">
				<li><a href="generic.html" class="button">Learn More</a></li>
			</ul>
		</section>
		<section>
			<h2>Etiam feugiat</h2>
			<dl class="alt">
				<dt>Address</dt>
				<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
				<dt>Phone</dt>
				<dd>(000) 000-0000 x 0000</dd>
				<dt>Email</dt>
				<dd>
					<a href="">information@untitled.tld</a>
				</dd>
			</dl>
			<ul class="icons">
				<li><a href="" class="icon brands fa-twitter alt"><span
						class="label">Twitter</span></a></li>
				<li><a href="" class="icon brands fa-facebook-f alt"><span
						class="label">Facebook</span></a></li>
				<li><a href="" class="icon brands fa-instagram alt"><span
						class="label">Instagram</span></a></li>
				<li><a href="" class="icon brands fa-github alt"><span
						class="label">GitHub</span></a></li>
				<li><a href="" class="icon brands fa-dribbble alt"><span
						class="label">Dribbble</span></a></li>
			</ul>
		</section>
		<p class="copyright">
			&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.
		</p>
	</footer>

	</div>


	</div>

	<!-- Scripts -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	var code="";
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".join_button").click(function(){
			$("#join_form").attr("action", "/member/join");
			$("#join_form").submit();
		});
	});
	$('.id_input').on("propertychange change keyup paste input", function(){

		//console.log("keyup 테스트");	
		var memberId = $('.id_input').val();			// .id_input에 입력되는 값
		var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
		
		$.ajax({
			type : "post",
			url : "/member/memberIdChk",
			data : data,
			success : function(result){
				if(result != 'fail'){
					$('#idck').css("color","green");
					$('#idck').text("사용가능한 아이디입니다");				
				} else {
					$('#idck').css("color","red");
					$('#idck').text("중복된 아이디입니다");			
				}
				
			}// success 종료
		}); // ajax 종료

	});// function 종료
	/* 인증번호 이메일 전송 */
	function emailCheck(){
		var email = $(".mail_input").val();
		 var cehckBox = $(".mail_check_input");        // 인증번호 입력란
		  var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 박스
		  $.ajax({
		        
		        type:"GET",
		        url:"mailCheck?email=" + email,
		        success:function(data){
		        	console.log("data : " + data);
		        	boxWrap.attr("disabled",false);
				 	$('#email_button').text('인증번호확인');
		        	$('#email_button').removeAttr("onclick");
		        	$('#email_button').attr("onclick","emailCodeCheck()");
		        	code=data;
		        }
		                
		    });
	    
	};
	/* 인증번호 비교 */
function emailCodeCheck(){
    
    var inputCode = $(".mail_check_input_box").val();        // 입력코드    
    var checkResult = $("#mail_check_input_box_wran");    // 비교 결과     
    if(inputCode == code){                            // 일치할 경우
        checkResult.html("인증번호가 일치합니다.");
        checkResult.css("color", "green");        
    } else {                                            // 일치하지 않을 경우
        checkResult.html("인증번호를 다시 확인해주세요.");
        checkResult.css("color", "red");
    }        
};
	</script>
	<!-- Scripts -->
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="/resources/assets/js/browser.min.js"></script>
	<script src="/resources/assets/js/breakpoints.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<script src="/resources/assets/js/main.js"></script>


</body>
</html>