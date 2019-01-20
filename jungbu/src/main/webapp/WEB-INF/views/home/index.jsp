<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/responsive.css">
<script type="text/javascript">
	$(document).ready(function() {

	});

	function showIntro() {
		$('#short_intro').hide();
		$('#long_intro').show();
	};

	function hideIntro() {
		$('#short_intro').show();
		$('#long_intro').hide();
	}

	function showBrethern() {
		$('#short_brethern').hide();
		$('#long_brethern').show();
	};

	function hideBrethern() {
		$('#short_brethern').show();
		$('#long_brethern').hide();
	}
</script>
<style>
</style>
</head>
<body>
	<form id="" name="" method="post" onsubmit="return false;">
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
						<li class="menu_item"><a href="/jubo.do">주보</a></li>
						<li class="menu_item"><a href="/plan.do">연간계획</a></li>
						<li class="menu_item"><a href="/news.do">모임뉴스</a></li>
						<li class="menu_item"><a href="/contact.do">Contact</a></li>
					</ul>
				</div>
			</div>

			<!-- Home -->

			<div class="home">
				<div class="background_image" style="background-image:url(${pageContext.request.contextPath}/resources/images/main_2.jpeg)"></div>

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
															<li class="active"><a href="/">Home</a></li>
															<li><a href="/bible.do">연대기성경</a></li>
															<li><a href="/bibleAllView.do">연대기성경365일</a></li>
															<li><a href="/jubo.do">주보</a></li>
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
			</div>

			<!-- CTA -->

			<div class="cta">
				<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/slideImage.jpg" data-speed="0.8"></div>
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="cta_container d-flex flex-xl-row flex-column align-items-xl-start align-items-center justify-content-xl-start justify-content-center">
								<div class="cta_content text-xl-left text-center">
									<div class="cta_title">그리스도를 닮아 가는 교회</div>
									<div class="cta_subtitle">
										<h4>하나님이 미리 아신 자들을 또한 그 아들의 형상을 본받게 하기 위하여 미리 정하셨으니 이는 그로 많은 형제 중에서 맏아들이 되게 하려 하심이니라. (롬 8:29)</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Info Boxes -->

			<div class="info">
				<div class="container">
					<div class="row">
						<div class="col text-center">
							<div class="section_title">교회소개</div>
						</div>
					</div>
					<br> <br>
					<div class="row row-eq-height">
						<!-- Info Box -->
						<div class="col-lg-6 info_box_col">
							<div class="info_box">
								<div class="info_content">
									<div class="info_title">수원중부교회</div>
									<div id="short_intro" style="display: block;">
										<div class="info_text">${fn:substring(intro,0,399)}...</div>
										<div class="button info_button">
											<a href="javascript:showIntro();"><span>read more</span><span>read more</span></a>
										</div>
									</div>
									<div id="long_intro" style="display: none;">
										<div class="info_text">${intro}</div>
										<div class="button info_button">
											<a href="javascript:hideIntro();"><span>close</span><span>close</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Info Box -->
						<div class="col-lg-6 info_box_col">
							<div class="info_box">
								<div class="info_content">
									<div class="info_title">형제운동이란?</div>
									<div id="short_brethern" style="display: block;">
										<div class="info_text">${fn:substring(brethern,0,399)}...</div>
										<div class="button info_button">
											<a href="javascript:showBrethern();"><span>read more</span><span>read more</span></a>
										</div>
									</div>
									<div id="long_brethern" style="display: none;">
										<div class="info_text">${brethern}</div>
										<div class="button info_button">
											<a href="javascript:hideBrethern();"><span>close</span><span>close</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- Services -->

			<div class="services">
				<div class="container">
					<div class="row">
						<div class="col text-center">
							<div class="section_title">집회일정</div>
						</div>
					</div>
					<div class="row icon_boxes_row">

						<!-- Icon Box -->
						<div class="col-xl-4 col-lg-6">
							<div class="icon_box">
								<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_title">
										<h3>일요일</h3>
									</div>
								</div>
								<div class="icon_box_text">
									<h4>
										. 09.00 - 10.30 : 교회학교<br> <br> . 11.00 - 12.00 : 예 배<br> <br> . 12.00 - 13.00 : 말 씀<br> <br> . 13.00 - 14.00 : 애 찬<br> <br> . 14.30 - 16.00 : 특별활동
									</h4>
								</div>
							</div>
						</div>

						<!-- Icon Box -->
						<div class="col-xl-4 col-lg-6">
							<div class="icon_box">
								<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_title">
										<h3>화요일</h3>
									</div>
								</div>
								<div class="icon_box_text">
									<h4>. 10.30 - 12.30 : 자매회</h4>
								</div>
							</div>
						</div>

						<!-- Icon Box -->
						<div class="col-xl-4 col-lg-6">
							<div class="icon_box">
								<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_title">
										<h3>수요일</h3>
									</div>
								</div>
								<div class="icon_box_text">
									<h4>
										. 20.00 - 21:00 : 말씀집회<br> <br>. 21.00 - 22.00 : 기도집회
									</h4>
								</div>
							</div>
						</div>

						<!-- Icon Box -->
						<div class="col-xl-4 col-lg-6">
							<div class="icon_box">
								<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_title">
										<h3>금요일</h3>
									</div>
								</div>
								<div class="icon_box_text">
									<h4>. 20.00 - 22.00 : 양육반 / 가정집회</h4>
								</div>
							</div>
						</div>

						<!-- Icon Box -->
						<div class="col-xl-4 col-lg-6">
							<div class="icon_box">
								<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_title">
										<h3>토요일</h3>
									</div>
								</div>
								<div class="icon_box_text">
									<h4>. 19.00 - 21.00 : 청년부<br> <br>. 20.30 - 21.30 : 일꾼회의</h4>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- Departments -->

			<div class="departments">
				<div class="container">
					<div class="row">
						<div class="col text-center">
							<div class="section_title">말씀 영상</div>
						</div>
					</div>
					<div class="row dept_row">
						<div class="col">
							<div class="dept_slider_container_outer">
								<div class="dept_slider_container">

									<!-- Slider -->
									<div class="owl-carousel owl-theme dept_slider">

										<!-- Slide -->
										<div class="owl-item dept_item">
											<iframe width="100%" height="100%" src="//www.youtube.com/embed/WikPr50lLoM" frameborder="0" allowfullscreen></iframe>
											<div class="dept_content">
												<div class="dept_title">이런교회되게하소서</div>
												<div class="dept_link">
													<h4>2018 여름수양회말씀 이억용br</h4>
												</div>
											</div>
										</div>

										<!-- Slide -->
										<div class="owl-item dept_item">
											<iframe width="100%" height="100%" src="//www.youtube.com/embed/659HqOv9nTk" frameborder="0" allowfullscreen></iframe>
											<div class="dept_content">
												<div class="dept_title">성경적 신앙생활 1강 : 성경에 대해서</div>
												<div class="dept_link">
													<h4>GNTV 송찬호</h4>
												</div>
											</div>
										</div>

										<!-- Slide -->
										<div class="owl-item dept_item">
											<iframe width="100%" height="100%" src="//www.youtube.com/embed/iq65CCdQSYY" frameborder="0" allowfullscreen></iframe>
											<div class="dept_content">
												<div class="dept_title">성경적 신앙생활 2강 : 신앙에 대해서</div>
												<div class="dept_link">
													<h4>
														GNTV 송찬호
														</h45>
												</div>
											</div>
										</div>

										<!-- Slide -->
										<div class="owl-item dept_item">
											<iframe width="100%" height="100%" src="//www.youtube.com/embed/uYk5FssUu18" frameborder="0" allowfullscreen></iframe>
											<div class="dept_content">
												<div class="dept_title">성경적 신앙생활 3강 : 생활에 대해서</div>
												<div class="dept_link">
													<h4>GNTV 송찬호</h4>
												</div>
											</div>
										</div>

									</div>

								</div>

								<!-- Dept Slider Nav -->
								<div class="dept_slider_nav">
									<i class="fa fa-chevron-right" aria-hidden="true"></i>
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
											document.write(new Date()
													.getFullYear());
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
											<li><a href="/jubo.do">주보</a></li>
											<li><a href="/plan.do">연간계획</a></li>
											<li><a href="/news.do">모임뉴스</a></li>
											<li><a href="/contact.do">Contact</a></li>
											<li><a href="/student.do">student</a></li>
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
		<script src="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
		<script src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
		<script src="${pageContext.request.contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
	</form>
</body>
</html>