<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<jsp:useBean id="toDay" class="java.util.Date" />
<!DOCTYPE html>
<head>
<title>수원중부교회</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Health medical template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/news.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/news_responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/responsive.css">
<style>
.menu {
	position: fixed;
	width: 100vw;
	height: 100vh;
	background: rgba(50, 198, 154, 0.95);
	z-index: 101;
	opacity: 0;
	visibility: hidden;
}

.menu.active {
	opacity: 0.98;
	visibility: visible;
}

.menu_content {
	width: 100%;
	height: 100%;
}

.menu_content ul {
	margin-top: 40px;
}

.menu_item {
	position: relative;
	margin-bottom: 3px;
}

.menu_item:last-child {
	margin-bottom: 0px;
}

.menu_item a {
	display: inline-block;
	position: relative;
	font-size: 36px;
	color: #FFFFFF;
	font-weight: 600;
}

.menu_item a::after {
	display: block;
	position: absolute;
	top: 52%;
	left: 0;
	width: 0;
	height: 4px;
	background: #FFFFFF;
	letter-spacing: 2px;
	content: '';
	z-index: 10;
	pointer-events: none;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 400ms ease;
}

.menu_item:hover a::after {
	width: 100%;
}

.menu_close_container {
	position: absolute;
	top: 94px;
	right: 122px;
	width: 21px;
	height: 21px;
	cursor: pointer;
	-webkit-transform: rotate(45deg);
	-moz-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	transform: rotate(45deg);
}

.menu_close {
	top: 9px;
	width: 21px;
	height: 3px;
	background: #FFFFFF;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.menu_close::after {
	display: block;
	position: absolute;
	top: -9px;
	left: 9px;
	content: '';
	width: 3px;
	height: 21px;
	background: #FFFFFF;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.menu_close_container:hover .menu_close, .menu_close_container:hover .menu_close::after
	{
	background: rgba(255, 255, 255, 0.7);
}

.menu_search_form {
	position: relative;
	width: 300px;
}

.menu_search_input {
	width: 100%;
	height: 40px;
	background: rgba(255, 255, 255, 0.9);
	border: none;
	outline: none;
	padding-left: 20px;
}

.menu_search_input::-webkit-input-placeholder {
	font-size: 12px !important;
	font-weight: 400 !important;
	font-style: italic;
	color: #ababab !important;
}

.menu_search_input:-moz-placeholder {
	font-size: 12px !important;
	font-weight: 400 !important;
	font-style: italic;
	color: #ababab !important;
}

.menu_search_input::-moz-placeholder {
	font-size: 12px !important;
	font-weight: 400 !important;
	font-style: italic;
	color: #ababab !important;
}

.menu_search_input:-ms-input-placeholder {
	font-size: 12px !important;
	font-weight: 400 !important;
	font-style: italic;
	color: #ababab !important;
}

.menu_search_input::input-placeholder {
	font-size: 12px !important;
	font-weight: 400 !important;
	font-style: italic;
	color: #ababab !important;
}

.menu_search_button {
	position: absolute;
	top: 0;
	right: 0;
	width: 40px;
	height: 40px;
	background: transparent;
	border: none;
	outline: none;
}

.menu_social {
	position: absolute;
	left: 50%;
	-webkit-transform: translateX(-50%);
	-moz-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	-o-transform: translateX(-50%);
	transform: translateX(-50%);
	bottom: 15px;
}

.menu_social ul {
	display: inline-block;
	margin-left: 25px;
	white-space: nowrap;
}

.menu_social ul li {
	display: inline-block;
}

.menu_social





































 





































ul





































 





































li










































































:not





































 





































(
:last-child





































 





































)
{
margin-right










































































:





































 





































15
px










































































;
}
.menu_social ul li a i {
	color: rgba(255, 255, 255, 0.7);
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
	padding: 5px;
}

.menu_social ul li a i:hover {
	color: rgba(255, 255, 255, 1);
}

/*********************************
10. FAQ
*********************************/
.stuff {
	width: 100%;
	background: #f4f8fb;
	padding-top: 99px;
	padding-bottom: 104px;
}

.faq_title {
	font-size: 36px;
	font-weight: 600;
	color: #404040;
	line-height: 0.75;
}

.faq_subtitle {
	font-size: 11px;
	font-weight: 600;
	color: #838383;
	text-transform: uppercase;
	letter-spacing: 0.2em;
	line-height: 0.75;
	margin-top: 23px;
}

.elements_accordions_tabs {
	margin-top: 115px;
}

.elements_accordions {
	width: 100%;
}

.accordions_tabs {
	width: 100%;
	background: #FFFFFF;
	margin-top: 100px;
}

.accordions {
	margin-top: 100px;
}

.accordion_container












































































:not






































 






































(
:last-child






































 






































)
{
margin-bottom












































































:






































 






































14
px












































































;
}
.accordion {
	height: 49px;
	width: 100%;
	background: #FFFFFF;
	padding-left: 70px;
	cursor: pointer;
	color: #404040;
	font-size: 14px;
	font-weight: 600;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.accordion div {
	max-width: 90%;
	overflow: hidden;
	white-space: nowrap;
}

.accordion::after {
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	position: absolute;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	left: 0;
	width: 50px;
	height: 100%;
	content: '+';
	background: #32c69a;
	font-size: 14px;
	color: #FFFFFF;
	font-weight: 500;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.accordion.active {
	background: #32c69a;
	color: #FFFFFF;
}

.accordion.active::after {
	content: '-';
	color: #FFFFFF;
	background: #404040;
}

.accordion_panel {
	padding-right: 8px;
	max-height: 0px;
	overflow: hidden;
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
}

.accordion_panel>div {
	padding-bottom: 11px;
}

.accordion_panel p {
	font-size: 14px;
	font-weight: 500;
	padding-top: 35px;
	color: #838383;
	line-height: 2.14;
}
</style>
<script type="text/javascript">
	function getBibleByDay(day) {
		$.ajax({

			type : "POST",
			url : "/getBibleByDay.json?day=" + day,
			dataType : "json",
			error : function() {
				alert('통신실패!!');
			},
			success : function(data) {
				//alert("통신데이터 값 : " + data.get("bibleContentsAll").get(0).getDay());

				var scheduleList = data["bibleScheduleAll"];
				var contentsList = data["bibleContentsAll"];
				$("#bibleContents_"+day).empty();
				
				for(var i=0; i<scheduleList.length;i++){
					$("#bibleContents_"+day).append("<font color='black' size='5'>[" + scheduleList[i].title + " " +  scheduleList[i].sChapter+"장 ~ "+ scheduleList[i].eChapter+"장]</font><br>");
				}
				
				for(var i=0; i<contentsList.length;i++){
					if(contentsList[i].verse == 1){
						$("#bibleContents_"+day).append("<br><br><font color='black' size='5'>"+contentsList[i].title + " " + contentsList[i].chapter+" 장</font><br>");
					}
					$("#bibleContents_"+day).append("<font color='black' size='2'>" + contentsList[i].verse+ "</font><font color='black' size='4'>" + " " + contentsList[i].contents+"</font>");
					$("#bibleContents_"+day).append("<br>");
				}
			}

		});

	};
</script>
</head>
<body>
	<div class="super_container">

		<!-- Menu -->

		<div class="menu trans_500">
			<div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
				<div class="menu_close_container">
					<div class="menu_close"></div>
				</div>
				<ul>
					<li class="menu_item"><a href="/">Home</a></li>
					<li class="menu_item"><a href="/bible.do">연대기성경</a></li>
					<li class="menu_item"><a href="/bibleAllView.do">연대기성경365일</a></li>
					<li class="menu_item"><a href="/plan.do">연간계획</a></li>
					<li class="menu_item"><a href="/news.do">모임뉴스</a></li>
					<li class="menu_item"><a href="/contact.do">Contact</a></li>
				</ul>
			</div>
		</div>

		<!-- Home -->

		<div class="home">
			<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/book-1209805_1920.jpg" data-speed="0.8"></div>

			<!-- Header -->

			<header class="header" id="header">
				<div>
					<div class="header_top">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="header_top_content d-flex flex-row align-items-center justify-content-start">
										<div class="logo">
											<a href="/">수원중부교회</a>
										</div>
										<div class="header_top_extra d-flex flex-row align-items-center justify-content-start ml-auto">
											<div class="header_top_phone">
												<i class="fa fa-phone" aria-hidden="true"></i> <span>031-245-9101 </span>
											</div>
										</div>
										<div class="hamburger ml-auto">
											<i class="fa fa-bars" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="header_nav" id="header_nav_pin">
						<div class="header_nav_inner">
							<div class="header_nav_container">
								<div class="container">
									<div class="row">
										<div class="col">
											<div class="header_nav_content d-flex flex-row align-items-center justify-content-start">
												<nav class="main_nav">
													<ul class="d-flex flex-row align-items-center justify-content-start">
														<li><a href="/">Home</a></li>
														<li><a href="/bible.do">연대기성경</a></li>
														<li class="active"><a href="/bibleAllView.do">연대기성경365일</a></li>
														<li><a href="/plan.do">연간계획</a></li>
														<li><a href="/news.do">모임뉴스</a></li>
														<li><a href="/contact.do">Contact</a></li>
													</ul>
												</nav>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>

			<div class="home_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_content">
								<div class="home_title">연대기성경365일</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- FAQ & News -->

		<div class="stuff">
			<div class="container">
				<div class="row">

					<!-- FAQ -->
					<div class="col-lg-10">
						<div class="faq">
							<div class="faq_title">연대기성경 전체 말씀</div>
							<div class="elements_accordions">
								<div class="accordions">
									<c:forEach var="i" begin="1" end="365" step="1">
										<div class="accordion_container">
											<div class="accordion d-flex flex-row align-items-center" onClick="javascript:getBibleByDay(${i});">
												<div>${i}일차 연대기말씀보기</div>
											</div>
											<div class="accordion_panel">
												<div id="bibleContents_${i}">
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
													<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
												</div>
											</div>
										</div>
										<br>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->

		<footer class="footer">
			<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/footer_1.jpg" data-speed="0.8"></div>
			<div class="footer_content">
				<div class="container">
					<div class="row">

						<!-- Footer About -->
						<div class="col-lg-6 footer_col">
							<div class="footer_about">
								<div class="logo">
									<a href="#">수원중부교회</a>
								</div>
								<div class="footer_about_text">
									<h4>
										경기도 수원시 장안구 송정로90번길 3, 6층 <br>(지번) 경기도 수원시 장안구 정자2동 9-5, 6층
									</h4>
								</div>
								<div class="copyright">
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright &copy;
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									All rights reserved
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</div>
							</div>
						</div>

						<!-- Footer Hours -->
						<div class="col-lg-6 footer_col">
							<div class="footer_hours">
								<div class="footer_hours_title">
									<h3>주일 예배 일정</h3>
								</div>
								<ul class="hours_list">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>
											<h4>교회학교(학생부/성인부)</h4>
										</div>
										<div class="ml-auto">
											<h4>9.00 – 10.30</h4>
										</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>
											<h4>예 배</h4>
										</div>
										<div class="ml-auto">
											<h4>11.00 - 12.00</h4>
										</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>
											<h4>말 씀 / 연대기성경공부</h4>
										</div>
										<div class="ml-auto">
											<h4>12.00 – 13.00</h4>
										</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>
											<h4>애 찬</h4>
										</div>
										<div class="ml-auto">
											<h4>13.00 – 14.00</h4>
										</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>
											<h4>소그룹 활동/찬양집회</h4>
										</div>
										<div class="ml-auto">
											<h4>14.00 – 16.00</h4>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer_bar">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="footer_bar_content d-flex flex-sm-row flex-column align-items-lg-center align-items-start justify-content-start">
								<nav class="footer_nav">
									<ul class="d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
										<li class="active"><a href="/">Home</a></li>
										<li><a href="/bible.do">연대기성경</a></li>
										<li><a href="/bibleAllView.do">연대기성경365일</a></li>
										<li><a href="/plan.do">연간계획</a></li>
										<li><a href="/news.do">모임뉴스</a></li>
										<li><a href="/contact.do">Contact</a></li>
									</ul>
								</nav>
								<div class="footer_phone ml-lg-auto">
									<i class="fa fa-phone" aria-hidden="true"></i> <span>031-245-9101 </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/styles/bootstrap4/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/news.js"></script>
</body>
</html>