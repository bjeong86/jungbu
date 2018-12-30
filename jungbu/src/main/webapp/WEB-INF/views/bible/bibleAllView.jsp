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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/bible_all_view.css">
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
				
				$("#bibleContents_"+day).append("<br>");
				for(var i=0; i<scheduleList.length;i++){
					$("#bibleContents_"+day).append("<font color='black' size='2'><b>[ " + scheduleList[i].title + " " +  scheduleList[i].sChapter+"장 ~ "+ scheduleList[i].eChapter+"장 ]</b></font><br>");
				}
				
				for(var i=0; i<contentsList.length;i++){
					if(contentsList[i].verse == 1){
						$("#bibleContents_"+day).append("<br><br><font color='black' size='3'><b>"+contentsList[i].title + " " + contentsList[i].chapter+" 장</b></font><br>");
					}
					$("#bibleContents_"+day).append("<font color='black' size='2'>" + contentsList[i].verse+ "</font><font color='black' size='3'>" + " " + contentsList[i].contents+"</font>");
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
												<div>${i}일차연대기말씀보기</div>
											</div>
											<div class="accordion_panel">
												<div id="bibleContents_${i}">
													<c:forEach var="j" begin="1" end="300" step="1">
														<br>
													</c:forEach>
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