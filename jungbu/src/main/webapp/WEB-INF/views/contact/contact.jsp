<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<head>
<title>Contact</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Health medical template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/contact.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/contact_responsive.css">
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
			<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/contact.jpg" data-speed="0.8"></div>

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
														<li><a href="/bibleAllView.do">연대기성경365일</a></li>
														<li><a href="/plan.do">연간계획</a></li>
														<li><a href="/news.do">모임뉴스</a></li>
														<li class="active"><a href="/contact.do">Contact</a></li>
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
								<div class="home_title">Contact</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Google Map -->
		<br>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3173.9908388649064!2d127.00507855122659!3d37.2953509472702!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5cd024ce189b%3A0x183f49b3d4de5c59!2z7IiY7JuQ7KSR67aA6rWQ7ZqM!5e0!3m2!1sko!2skr!4v1486395997701" width="100%" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>

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
									<h3>주일 집회 일정</h3>
								</div>
								<ul class="hours_list">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>
											<h4>교회학교</h4>
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
											<h4>말 씀</h4>
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
											<h4>특별활동</h4>
										</div>
										<div class="ml-auto">
											<h4>14.30 – 16.00</h4>
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
	<script src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
	<script src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
</body>
</html>