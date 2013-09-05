<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!-- Consider adding a manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]--><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="author" content="novthir">
<!-- Mobile viewport optimized: h5bp.com/viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- iPhone: Don't render numbers as call links -->
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon" href="favicon.ico" />
<!-- Layout Styles -->
<link rel="stylesheet" href="styles/admin/css/style.css" />
<!-- Icon Styles -->
<!--[if IE 8]><link rel="stylesheet" href="css/fonts/font-awesome-ie7.css"><![endif]-->
<!-- External Styles -->
<link rel="stylesheet"	href="styles/admin/css/jquery.plupload.queue.css" />

<!-- Load Webfont loader -->
<script type="text/javascript">window.WebFontConfig={google:{families:['PT Sans:400,700']},active:function(){$(window).trigger('fontsloaded')}};</script>
<script defer async src="https://ajax.googleapis.com/ajax/libs/webfont/1.0.28/webfont.js"></script>

<!-- Essential polyfills -->
<script	src="styles/admin/js/mylibs/polyfills/modernizr-2.6.1.min.js"></script>
<script	src="styles/admin/js/mylibs/polyfills/respond.js"></script>
<script>
//<![CDATA[
window.matchMedia=window.matchMedia||(function(doc,undefined){var bool,docElem=doc.documentElement,refNode=docElem.firstElementChild||docElem.firstChild,fakeBody=doc.createElement('body'),div=doc.createElement('div');div.id='mq-test-1';div.style.cssText="position:absolute;top:-100em";fakeBody.style.background="none";fakeBody.appendChild(div);return function(q){div.innerHTML='&shy;<style media="'+q+'"> #mq-test-1 { width: 42px; }</style>';docElem.insertBefore(fakeBody,refNode);bool=div.offsetWidth===42;docElem.removeChild(fakeBody);return{matches:bool,media:q};};}(document));
//]]>
</script>
<!--[if lt IE 9]><script src="js/mylibs/polyfills/selectivizr-min.js"></script><![endif]-->
<!--[if lt IE 10]><script src="js/mylibs/charts/excanvas.js"></script><![endif]-->
<!--[if lt IE 10]><script src="js/mylibs/polyfills/classlist.js"></script><![endif]-->
<!-- Grab frameworks from CDNs -->
<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<!-- Do the same with jQuery UI -->
<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js"></script>
<!-- Do the same with Lo-Dash.js -->
<script	src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/0.4.2/lodash.min.js"></script>
<!-- Forms -->
<script	src="styles/admin/js/mylibs/forms/jquery.autosize.js"></script>
<script	src="styles/admin/js/mylibs/forms/jquery.checkbox.js"></script>
<script	src="styles/admin/js/mylibs/forms/jquery.fileinput.js"></script>
<script	src="styles/admin/js/mylibs/forms/jquery.validate.js"></script>

<!-- Do not touch! -->
<script	src="styles/admin/js/mango.js"></script>
<script	src="styles/admin/js/plugins.js"></script>
<script	src="styles/admin/js/script.js"></script>

<!-- Your custom JS goes here -->
<script>//<![CDATA[
(function($,window,document,undefined){})(jQuery,this,document);
jQuery(document).ready(function(){
	$("#captcha").click(function(){
		$(this).attr("src", "Captcha.jpg?time=" + new Date());
		return false;
	});
});
//]]>

</script>

<!-- end scripts -->

<title>Login</title>
</head>

<body class=login>

	<!-- Some dialogs etc. -->
	<!-- The loading box -->
	<div id="loading-overlay"></div>
	<div id="loading">
		<span>Loading...</span>
	</div>
	<!-- End of loading box -->
	<!--------------------------------->
	<!-- Now, the page itself begins -->
	<!--------------------------------->
	<!-- The toolbar at the top -->
	<section id="toolbar">
	<div class="container_12">
		<!-- Left side -->
		<div class="left">
			<ul class="breadcrumb">
			</ul>
		</div>
		<!-- End of .left -->

		<!-- Right side -->
		<div class="right">
			<ul>
			</ul>
		</div>
		<!-- End of .right -->

		<!-- Phone only items -->
		<div class="phone">

			<!-- User Link -->
			<li><a href="#"><span class="icon icon-home"></span></a></li>
			<!-- Navigation -->
			<li><a href="#"><span class="icon icon-heart"></span></a></li>

		</div>
		<!-- End of .phone -->

	</div>
	<!-- End of .container_12 --> </section>
	<!-- End of #toolbar -->

	<!-- The header containing the logo -->
	<header class="container_12">

	<div class="container">

		<!-- Your logos -->
		<a href="/tf-mango/"><img src="styles/admin/img/logo-light.png" alt="Mango"
			width="210" height="67"></a> <a class="phone-title"
			href="login.html"><img
			src="styles/admin/img/logo-mobile.png"
			alt="Mango" height="22" width="70" /></a>

		<!-- Right link -->
		<div class="right">
			<span>Got no account?</span> <a href="javascript:void(0);">Register</a>
		</div>
	</div>
	<!-- End of .container --> </header>
	<!-- End of header -->
	<!-- The container of the sidebar and content box -->
	<section id="login" class="container_12 clearfix">
	<form action="login" method="post" class="box validate">
		<div class="header">
			<h2>
				<span class="icon icon-lock"></span>
				<fmt:message key="label.login" />
			</h2>
		</div>
		<div class="content">

			<!-- Login messages -->
			<div class="login-messages">
				<div class="message welcome">${msg }</div>
				<div class="message failure"></div>
			</div>

			<!-- The form -->
			<div class="form-box">

				<div class="row">
					<label for="login_name"><strong>
					<fmt:message key="label.password" />
					</strong></label>
					<div>
						<input tabindex=1 type="text" class="required noerror"
							name="username" id="login_name" />
					</div>
				</div>

				<div class="row">
					<label for="login_pw"> <strong>
					<fmt:message key="label.password" />
					</strong></small>
					</label>
					<div>
						<input tabindex=2 type="password" class="required noerror" name="password" id=login_pw />
					</div>
				</div>
				<!-- <div class="row">
					<label for="login_pw"> <strong>Captcha</strong></small>
					</label>
					<div>
						<input tabindex=3 type="text" class="required noerror" style="width: 200px;" name="captcha_key" />
						<span><img src="Captcha.jpg" width="75" height="24" id="captcha"/></span>
					</div>
				</div> -->
			</div>
			<!-- End of .form-box -->
		</div>
		<!-- End of .content -->
		<div class="actions">
			<div class="left">
				<div class="rememberme">
				</div>
			</div>
			<div class="right">
				<input tabindex=3 type="submit" value="Sign In" name="login_btn" />
			</div>
		</div>
		<!-- End of .actions -->
	</form>
	<!-- End of form --> </section>
	<!-- Spawn $$.loaded -->
	<script>$$.loaded();</script>
	<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
	   chromium.org/developers/how-tos/chrome-frame-getting-started -->
	<!--[if lt IE 7 ]>
	<script defer src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
	<script defer>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
	<![endif]-->

</body>
</html>