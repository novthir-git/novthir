<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!-- Consider adding a manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
	<meta charset="utf-8">
	<!-- Use the .htaccess and remove these lines to avoid edge case issues.
	   More info: h5bp.com/b/378 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Login - Mango: Slick and Responsive Admin Template</title>
	<meta name="description" content="Mango is a slick and responsive Admin Template build with modern techniques like HTML5 and CSS3 to be used for backend solutions of any size.">
	<meta name="author" content="Simon Stamm &amp; Markus Siemens">
	<!-- Mobile viewport optimized: h5bp.com/viewport -->
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<!-- iPhone: Don't render numbers as call links -->
	<meta name="format-detection" content="telephone=no">
	<%@ include file="/WEB-INF/views/include.inc.jsp"%>
	
	<!-- end scripts -->
	
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><style>#haloword-pron { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -34px; }#haloword-pron:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -34px; }#haloword-open { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -17px; }#haloword-open:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -17px; }#haloword-close { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px 0; }#haloword-close:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px 0; }#haloword-add { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -51px; }#haloword-add:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -51px; }#haloword-remove { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -68px; }#haloword-remove:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -68px; }</style></head>
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