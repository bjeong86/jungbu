<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- start: JavaScript-->
<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/jquery-migrate-1.0.0.min.js"></script>
<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
<script src="js/jquery.ui.touch-punch.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src='js/fullcalendar.min.js'></script>
<script src='js/jquery.dataTables.min.js'></script>
<script src="js/excanvas.js"></script>
<script src="js/jquery.flot.js"></script>
<script src="js/jquery.flot.pie.js"></script>
<script src="js/jquery.flot.stack.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<script src="js/jquery.chosen.min.js"></script>
<script src="js/jquery.uniform.min.js"></script>
<script src="js/jquery.cleditor.min.js"></script>
<script src="js/jquery.noty.js"></script>
<script src="js/jquery.elfinder.min.js"></script>
<script src="js/jquery.raty.min.js"></script>
<script src="js/jquery.iphone.toggle.js"></script>
<script src="js/jquery.uploadify-3.1.min.js"></script>
<script src="js/jquery.gritter.min.js"></script>
<script src="js/jquery.imagesloaded.js"></script>
<script src="js/jquery.masonry.min.js"></script>
<script src="js/jquery.knob.modified.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/counter.js"></script>
<script src="js/retina.js"></script>
<script src="js/custom.js"></script>
<!-- end: JavaScript-->

<!-- start: Meta -->
<meta charset="utf-8">
<title>수원중부모임</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="박정훈">
<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="css/style.css" rel="stylesheet">
<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
<!-- end: CSS -->


<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<link id="ie-style" href="css/ie.css" rel="stylesheet">
<![endif]-->

<!--[if IE 9]>
	<link id="ie9style" href="css/ie9.css" rel="stylesheet">
<![endif]-->

<!-- start: Favicon -->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- end: Favicon -->

<title>수원중부모임</title>
</head>
<body>
	<c:set var='test' value='' />
	<c:forEach items="${sessionScope.titles02}" var="titles" varStatus="status">
			<c:set var='test' value="${test} ${titles.title} ${titles.sChapter}장~${titles.eChapter}장 "/>
	</c:forEach>
	<c:set var='test' value='${test}입니다.' />
	<br>
	<!-- start: Header -->
	<div class="container-fluid-full" style="font-size: 100%;">
		<a class="quick-button-small span12" href="/index.do"> <i class="icon-home"></i>
			<p>
				<font size='4'>홈으로 돌아가기</font>
			</p>
		</a>
	</div>
	<br>
	<p>
		<font size='4'>
			<center><i class="icon-globe"></i> 아래 칸에 보낼 메시지를 입력해주세요.<br></center>
			<center>(별도로 입력하지 않으면 아래 메시지가 전송 됩니다.)</center>
		</font>
	</p>
	<div class="box-content">
		<textarea id="textarea2" rows="20" style="font-size: 15px;width: 100%; height: 100px; background-color: white; border: 0; overflow-y: hidden; background: clear;" >${test}</textarea>
	</div>
	<br>
	<div class="container-fluid-full" style="font-size: 100%;">
		<a class="quick-button-small span12" href="javascript:sendLink2()"> <img src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" /></i>
			<p>
				<font size='4' color='yellow'>KaKaoTalk</font> <font size='4'>연대기 성경 링크 보내기</font>
			</p>
		</a>
	</div>
	<br>
	<br>
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
		function sendLink2() {
			Kakao.Link.sendDefault({
				objectType : 'feed',
				content : {
					title : NowTime,
					description : $("#textarea2").val(),
					imageUrl : 'http://swjch.org/img/book-1209805_1920.jpg',
					link : {
						mobileWebUrl : 'http://swjch.org/bible.do',
						webUrl : 'http://swjch.org/bible.do'
					}
				},
				buttons : [ {
					title : '오늘 연대기 말씀 보기',
					link : {
						mobileWebUrl : 'http://swjch.org/bible.do',
						webUrl : 'http://swjch.org/bible.do'
					}
				} ]
			});
		}
		//]]>
	</script>

</body>
</html>