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
<script type="text/javascript">
	$(document).ready(function() {

	});

	function showYesterday() {
		$('#yesterday_bible').show();
		$('#today_bible').hide();
		$('#tomorrow_bible').hide();
	};

	function showToday() {
		$('#yesterday_bible').hide();
		$('#today_bible').show();
		$('#tomorrow_bible').hide();
	};

	function showTomorrow() {
		$('#yesterday_bible').hide();
		$('#today_bible').hide();
		$('#tomorrow_bible').show();
	};
</script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
	var Now = new Date();
	var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
	var today = new Date().getDay();
	var todayLabel = week[today];

	var NowTime = Now.getFullYear() + '년 ';
	NowTime += Now.getMonth() + 1;
	NowTime += '월 ' + Now.getDate() + '일 ';
	NowTime += todayLabel + ' 성경읽기는';
	//<![CDATA[
	// // 사용할 앱의 JavaScript 키를 설정해 주세요.
	// Kakao.init('29e7a3c5ee8cf7a79c5052c6b71c6ec4'); // local
	Kakao.init('34b1e6d89790af6e320e1806e42e48d6');
	// // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
	function sendLink() {
		Kakao.Link
				.sendDefault({
					objectType : 'feed',
					content : {
						title : '[' + $("#day").val() + '일차] ' + NowTime,
						description : $("#kakaoMsg").val(),
						imageUrl : 'http://swjch.org/resources/images/book-1209805_1920.jpg',
						link : {
							mobileWebUrl : 'http://swjch.org/bible.do?day='
									+ $("#day").val(),
							webUrl : 'http://swjch.org/bible.do?day='
									+ $("#day").val()
						}
					},
					buttons : [ {
						title : '오늘 연대기 말씀 보기',
						link : {
							mobileWebUrl : 'http://swjch.org/bible.do?day='
									+ $("#day").val(),
							webUrl : 'http://swjch.org/bible.do?day='
									+ $("#day").val()
						}
					} ]
				});
	}
	//]]>
</script>
<style>
</style>
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
														<li class="active"><a href="/bible.do">연대기성경</a></li>
														<li><a href="/bibleAllView.do">연대기성경365일</a></li>
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
								<div class="home_title">연대기성경</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- News -->

		<div class="news">
			<div class="container">
				<div class="row">
					<div class="button news_post_button" style="width: 20%">
						<c:if test="${isToday eq true }">
							<a href="javascript:showYesterday();"><span>어제말씀</span><span><font color="blue">어제말씀</font></span></a>
						</c:if>
						<c:if test="${isToday eq false }">
							<a href="javascript:showYesterday();"><span>이전말씀</span><span><font color="blue">이전말씀</font></span></a>
						</c:if>
					</div>
					<div class="button news_post_button" style="width: 40%">
						<c:if test="${isToday eq true }">
							<a href="javascript:showToday();"><span>오늘말씀(${dayCount}일차) </span><span><font color="blue">오늘말씀(${dayCount}일차) </font></span></a>
						</c:if>
						<c:if test="${isToday eq false }">
							<a href="javascript:showToday();"><span>${dayCount}일차말씀 </span><span><font color="blue">${dayCount}일차 말씀 </font></span></a>
						</c:if>
					</div>
					<div class="button news_post_button" style="width: 20%">
						<c:if test="${isToday eq true }">
							<a href="javascript:showTomorrow();"><span>내일말씀</span><span><font color="blue">내일말씀</font></span></a>
						</c:if>
						<c:if test="${isToday eq false }">
							<a href="javascript:showTomorrow();"><span>다음말씀</span><span><font color="blue">다음말씀</font></span></a>
						</c:if>
					</div>
					<div class="button news_post_button" style="width: 20%">
						<a href="/bibleAllView.do"><span>전체보기</span><span><font color="blue">전체보기</font></span></a>
					</div>

					<!-- News Posts -->
					<div id="yesterday_bible" style="display: none;">
						<div class="col-lg-12">
							<div class="news_posts">

								<!-- News Post -->
								<div class="news_post">
									<div class="news_post_content">
										<div class="news_post_title">
											<a href="#"><c:forEach items="${bibleScheduleBf}" var="schedule" varStatus="status">
													<font size="4">[ ${schedule.title} ${schedule.sChapter} ~ ${schedule.eChapter}장 ]<br></font>
												</c:forEach> </a>
										</div>
										<div class="news_post_text">
											<p>
												<font color="black"> <c:forEach items="${bibleContentsBf}" var="bible" varStatus="status">
														<c:if test="${bible.verse eq '1'}">
															<br>
															<h3>
																<b>${bible.title} ${bible.chapter}장</b>
															</h3>
														</c:if>
														<h4>
															<font size="1">${bible.verse}</font> ${bible.contents}
														</h4>
													</c:forEach>
												</font>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- News Posts -->
					<div id="today_bible" style="display: block;">
						<div class="col-lg-12">
							<div class="news_posts">

								<!-- News Post -->
								<div class="news_post">
									<div class="news_post_content">
										<div class="news_post_title">
											<a href="#"> <c:if test="${isToday eq true }">
													<font size=3>- ${dayCount}일차 , <fmt:formatDate value="${toDay}" pattern="MM월dd일 E요일" /> -
													</font>
													<br>
												</c:if> <c:if test="${isToday eq false }">
													<font size=3>- ${dayCount}일차 - </font>
													<br>
												</c:if> <c:forEach items="${bibleSchedule}" var="schedule" varStatus="status">
													<font size="4">[ ${schedule.title} ${schedule.sChapter} ~ ${schedule.eChapter}장 ]<br></font>
												</c:forEach>
											</a>
										</div>
										<div class="news_post_text">
											<p>
												<font color="black"> <c:forEach items="${bibleContents}" var="bible" varStatus="status">
														<c:if test="${bible.verse eq '1'}">
															<br>
															<h3>
																<b>${bible.title} ${bible.chapter}장</b>
															</h3>
														</c:if>
														<h4>
															<font size="1">${bible.verse}</font> ${bible.contents}
														</h4>
													</c:forEach>
												</font>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- News Posts -->
					<div id="tomorrow_bible" style="display: none;">
						<div class="col-lg-12">
							<div class="news_posts">

								<!-- News Post -->
								<div class="news_post">
									<div class="news_post_content">
										<div class="news_post_title">
											<a href="#"> <c:forEach items="${bibleScheduleAf}" var="schedule" varStatus="status">
													<font size="4">[ ${schedule.title} ${schedule.sChapter} ~ ${schedule.eChapter}장 ]<br></font>
												</c:forEach>
											</a>
										</div>
										<div class="news_post_text">
											<p>
												<font color="black"> <c:forEach items="${bibleContentsAf}" var="bible" varStatus="status">
														<c:if test="${bible.verse eq '1'}">
															<br>
															<h3>
																<b>${bible.title} ${bible.chapter}장</b>
															</h3>
														</c:if>
														<h4>
															<font size="1">${bible.verse}</font> ${bible.contents}
														</h4>
													</c:forEach>
												</font>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					오늘방문하신분: ${connectingCount} ( 누적방문자: ${connectingTotalCount} )
					<div class="button news_post_button" style="width: 100%">
						<a href="javascript:sendLink()"><span><font color="yellow">카카오톡으로 공유하기</font></span><span>카카오톡으로 공유하기</span></a>
						<c:set var='kakaoMsg' value='' />
						<c:forEach items="${bibleSchedule}" var="schedule" varStatus="status">
							<c:set var='kakaoMsg' value="${kakaoMsg} ${schedule.title} ${schedule.sChapter}장~${schedule.eChapter}장 " />
						</c:forEach>
						<c:set var='kakaoMsg' value='${kakaoMsg}입니다.' />
						<input type="hidden" id="kakaoMsg" value="${kakaoMsg}" /> <input type="hidden" id="day" value="${dayCount}" />
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
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/news.js"></script>
</body>
</html>