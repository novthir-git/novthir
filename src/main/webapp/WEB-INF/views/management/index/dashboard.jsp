<%@ page pageEncoding="UTF-8"%>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" lang="en"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" lang="en"><![endif]-->
<!--[if gt IE 8]><!-->
<%@ include file="/WEB-INF/views/include.inc.jsp"%>
<html
	class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths webkit wf-ptsans-n4-active wf-ptsans-n7-active wf-active"
	lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>${contextPath }----</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description"
	content="Mango is a slick and responsive Admin Template build with modern techniques like HTML5 and CSS3 to be used for backend solutions of any size.">
<meta name="author" content="Simon Stamm &amp; Markus Siemens">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="format-detection" content="telephone=no">
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=PT+Sans:400,700">
<style>
#haloword-pron {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-94px -34px;
}

#haloword-pron:hover {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-111px -34px;
}

#haloword-open {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-94px -17px;
}

#haloword-open:hover {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-111px -17px;
}

#haloword-close {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-94px 0;
}

#haloword-close:hover {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-111px 0;
}

#haloword-add {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-94px -51px;
}

#haloword-add:hover {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-111px -51px;
}

#haloword-remove {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-94px -68px;
}

#haloword-remove:hover {
	background:
		url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg)
		-111px -68px;
}
</style>
</head>
<body>
	<div id="loading-overlay" style="display: none;"></div>
	<div id="loading" style="display: none;">
		<span>Loading...</span>
	</div>
	<div id="lock-screen" title="Screen Locked">
		<a href="login.html" class="header right button grey flat">Logout</a>
		<p>Due to the inactivity of this session, your account was
			temporarily locked.</p>
		<p>To unlock your account, simply slide the button and enter your
			password.</p>
		<div class="actions">
			<div id="slide_to_unlock">
				<img src="${contextPath }/styles/admin/img/elements/slide-unlock/lock-slider.png" alt="slide me"
					class="ui-draggable" style="position: relative;"> <span>slide
					to unlock</span>
			</div>
			<form action="#" method="GET">
				<input type="password" name="pwd" id="pwd"
					placeholder="Enter your password here..." autocorrect="off"
					autocapitalize="off"> <input type="submit" name="send"
					value="Unlock" disabled=""> <input type="reset" value="X">
			</form>
		</div>
	</div>
	<div id="settings" class="settings-content" data-width="450">
		<ul class="tabs center-elements">
			<li><a href="#settings-1"><img
					src="${contextPath }/styles/admin/img/icons/packs/fugue/24x24/user-business.png" alt=""><span>Account
						Settings</span></a></li>
			<li><a href="#settings-2"><img
					src="${contextPath }/styles/admin/img/icons/packs/fugue/24x24/balloon.png" alt=""><span>Notifications</span></a></li>
			<li><a href="#settings-3"><img
					src="${contextPath }/styles/admin/img/icons/packs/fugue/24x24/credit-card.png" alt=""><span>Invoicing</span></a></li>
		</ul>
		<div class="change_password">
			<form action="#" method="GET" class="validate" id="settings_password"
				novalidate="novalidate">
				<p>
					<label for="settings-password">New Password:</label>
				<div class="passwordmeter-wrapper">
					<div class="passwordmeter" style="opacity: 0;"></div>
					<input type="password" id="settings-password"
						class="required strongpw small password meter">
				</div>
				</p>
			</form>
			<div class="actions">
				<div class="right">
					<input form="settings_password" type="reset" value="Cancel"
						class="grey"> <input form="settings_password"
						type="submit" value="OK">
				</div>
			</div>
		</div>
		<div class="content">
			<div id="settings-1">
				<form action="#" method="GET">
					<p>
						<label for="settings-name">Name:</label> <input type="text"
							id="settings-name" class="medium">
					</p>
					<p>
						<label for="settings-descr">Descripton:</label> <input type="text"
							id="settings-descr" class="medium">
					</p>
					<p class="divider"></p>
					<p>
						<label for="settings-pw">Password: </label> <input
							class="grey change_password_button" type="button"
							id="settings-pw" value="Change Password..."
							data-lang-changed="Password changed">
					</p>
				</form>
			</div>
			<div id="settings-2">
				Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
				nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
				erat, sed diam voluptua.
				<form action="#" method="GET">
					<div class="spacer"></div>
					<p class="divider"></p>
					<div class="spacer"></div>
					<p>
						<label for="settings-email">Email Address:</label> <input
							type="text" id="settings-email" class="medium">
					</p>
					<p>
						<label for="settings-interval">Interval: </label> <select
							name="settings-interval" id="settings-interval"
							data-placeholder="Choose an Interval" style="display: none;"
							class="chzn-done">
							<option value=""></option>
							<option value="Never">Never</option>
							<option value="Daily">Daily</option>
							<option value="Weekly">Weekly</option>
							<option value="Monthly">Monthly</option>
							<option value="Yearly">Yearly</option>
						</select>
					<div id="settings_interval_chzn"
						class="chzn-container chzn-container-single chzn-container-single-nosearch"
						style="width: 100%;">
						<a href="javascript:void(0)" class="chzn-single chzn-default"><span>Choose
								an Interval</span>
						<div>
								<b></b>
							</div></a>
						<div class="chzn-drop" style="left: -9000px; top: 0px;">
							<div class="chzn-search">
								<input type="text" autocomplete="off">
							</div>
							<ul class="chzn-results">
								<li id="settings_interval_chzn_o_1" class="active-result"
									style="">Never</li>
								<li id="settings_interval_chzn_o_2" class="active-result"
									style="">Daily</li>
								<li id="settings_interval_chzn_o_3" class="active-result"
									style="">Weekly</li>
								<li id="settings_interval_chzn_o_4" class="active-result"
									style="">Monthly</li>
								<li id="settings_interval_chzn_o_5" class="active-result"
									style="">Yearly</li>
							</ul>
						</div>
					</div>
					</p>
				</form>
			</div>
			<div id="settings-3">
				<form action="#" method="GET">
					<p>
						<label for="settings-card-number">Card number:</label> <input
							type="text" id="settings-card-number" class="medium">
					</p>
					<p>
						<label for="settings-cvv">CVV:</label> <input type="text"
							id="settings-cvv" class="medium">
					</p>
					<p>
						<label for="settings-expiration">Expiration: </label> <select
							sname="settings-expiration" id="settings-expiration"
							data-placeholder="Choose an Expiration" style="display: none;"
							class="chzn-done">
							<option value=""></option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
						</select>
					<div id="settings_expiration_chzn"
						class="chzn-container chzn-container-single chzn-container-single-nosearch"
						style="width: 100%;">
						<a href="javascript:void(0)" class="chzn-single chzn-default"><span>Choose
								an Expiration</span>
						<div>
								<b></b>
							</div></a>
						<div class="chzn-drop" style="left: -9000px; top: 0px;">
							<div class="chzn-search">
								<input type="text" autocomplete="off">
							</div>
							<ul class="chzn-results">
								<li id="settings_expiration_chzn_o_1" class="active-result"
									style="">2012</li>
								<li id="settings_expiration_chzn_o_2" class="active-result"
									style="">2013</li>
								<li id="settings_expiration_chzn_o_3" class="active-result"
									style="">2014</li>
								<li id="settings_expiration_chzn_o_4" class="active-result"
									style="">2015</li>
							</ul>
						</div>
					</div>
					</p>
				</form>
			</div>
		</div>
		<div class="actions">
			<div class="left">
				<button class="grey cancel">Cancel</button>
			</div>
			<div class="right">
				<button class="save">Save</button>
				<button class="hide saving" disabled="">Saving...</button>
			</div>
		</div>
	</div>
	<script>
		$$.ready(function() {
			$("#dialog_add_client").dialog({
				autoOpen : false,
				modal : true,
				width : 400,
				open : function() {
					$(this).parent().css('overflow', 'visible');
					$$.utils.forms.resize()
				}
			}).find('button.submit').click(function() {
				var $el = $(this).parents('.ui-dialog-content');
				if ($el.validate().form()) {
					$el.find('form')[0].reset();
					$el.dialog('close');
				}
			}).end().find('button.cancel').click(function() {
				var $el = $(this).parents('.ui-dialog-content');
				$el.find('form')[0].reset();
				$el.dialog('close');
				;
			});
			$(".open-add-client-dialog").click(function() {
				$("#dialog_add_client").dialog("open");
				return false;
			});
		});
	</script>
	<script>
		$$.ready(function() {
			$("#dialog_message").dialog({
				autoOpen : false,
				width : 500,
				modal : true
			}).find('button').click(function() {
				$(this).parents('.ui-dialog-content').dialog('close');
			});
			$(".open-message-dialog").click(function() {
				$("#dialog_message").dialog("open");
				return false;
			});
		});
	</script>
	<section id="toolbar">
		<div class="container_12">
			<div class="left">
				<ul class="breadcrumb">
					<li><a href="dashboard.html">Mango</a></li>
					<li><a href="javascript:void(0);">Dashboard</a></li>
				</ul>
			</div>
			<div class="right">
				<ul>
					<li><a href="pages_profile.html"><span
							class="icon i14_admin-user"></span>Profile</a></li>
					<li><a href="#" class="with_red"><span>3</span>Messages</a>
						<div class="popup"
							style="display: none; top: 27px; left: -77.5px;">
							<h3>New Messages</h3>
							<a class="button flat left grey"
								onclick="$(this).parent().fadeToggle($$.config.fxSpeed)">Close</a>
							<a class="button flat right" href="tables_dynamic.html">Inbox</a>
							<div class="content mail">
								<ul>
									<li>
										<div class="avatar">
											<img src="${contextPath }/styles/admin/img/elements/mail/avatar.png" height="40"
												width="40/">
										</div>
										<div class="info">
											<strong>John Doe</strong> <span>Thanks for your theme!</span>
											<small>09:32 am</small>
										</div>
										<div class="text">
											<p>Hey Admin!</p>
											<p>I've purchased your admin template and it's great :)</p>
											<p>A happy customer</p>
											<div class="actions">
												<a href="javascript:void(0);"
													class="left open-message-dialog">Reply</a> <a
													onclick="$(this).parent().parent().parent().slideToggle($$.config.fxSpeed)"
													class="red right" href="javascript:void(0);">Delete</a>
											</div>
										</div>
									</li>
									<li>
										<div class="avatar">
											<img src="${contextPath }/styles/admin/img/elements/mail/mail.png" height="40" width="40/">
										</div>
										<div class="info">
											<strong>System</strong> <span>New comment</span> <small>08:47
												am</small>
										</div>
										<div class="text">
											<p>Hello,</p>
											<p>There is one new comment on your theme.</p>
											<p>Go to Comments page to see it.</p>
											<div class="actions">
												<a href="javascript:void(0);"
													class="left open-message-dialog">Reply</a> <a
													onclick="$(this).parent().parent().parent().slideToggle($$.config.fxSpeed)"
													class="red right" href="javascript:void(0);">Delete</a>
											</div>
										</div>
									</li>
									<li>
										<div class="avatar">
											<img src="${contextPath }/styles/admin/img/elements/mail/mail.png" height="40" width="40/">
										</div>
										<div class="info">
											<strong>Stranger</strong> <span>[SPAM] ---</span> <small>Yesterday</small>
										</div>
										<div class="text">
											<p>[...]</p>
											<div class="actions">
												<a href="javascript:void(0);"
													class="left open-message-dialog">Read</a> <a
													onclick="$(this).parent().parent().parent().slideToggle($$.config.fxSpeed)"
													class="red right" href="javascript:void(0);">Delete</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="space"></li>
					<li><a href="javascript:void(0);" id="btn-lock"
						class="with_red"><span>09:48</span>Lock screen</a></li>
					<li class="red"><a href="login.html">Logout</a></li>
				</ul>
			</div>
			<div class="phone">
				<li><a href="pages_profile.html"><span
						class="icon icon-user"></span></a></li>
				<li><a class="navigation" href="#"><span
						class="icon icon-list"></span></a></li>
			</div>
		</div>
	</section>
	<header class="container_12">
		<a href="dashboard.html"><img src="${contextPath }/styles/admin/img/logo.png" alt="Mango"
			width="191" height="60"></a> <a class="phone-title"
			href="dashboard.html"><img src="${contextPath }/styles/admin/img/logo-mobile.png" alt="Mango"
			height="22" width="70"></a>
		<div class="buttons">
			<a href="statistics.html"> <span class="icon icon-sitemap"></span>
				Statistics
			</a> <a href="forms.html"> <span class="icon icon-list-alt"></span>
				Forms
			</a> <a href="tables_dynamic.html"> <span class="icon icon-table"></span>
				Tables
			</a>
		</div>
	</header>
	<nav class="phone">
		<ul class="">
			<li class="current"><a href="dashboard.html">Dashboard</a></li>
			<li><a href="javascript:void(0);" class="with-sub">UI
					Widgets</a>
				<ul>
					<li><a href="ui_general.html">General</a></li>
					<li><a href="ui_extras.html">Extras</a></li>
					<li><a href="ui_icons.html">Icons</a></li>
					<li><a href="ui_grid.html">Grid</a></li>
				</ul></li>
			<li><a href="javascript:void(0);" class="with-sub">Form
					Elements</a>
				<ul>
					<li><a href="forms.html">General</a></li>
					<li><a href="forms_validation.html">Validation</a></li>
					<li><a href="forms_extras.html">Fileuploader &amp; Wizard</a></li>
				</ul></li>
			<li><a href="javascript:void(0);" class="with-sub">Statistics
					/ Charts</a>
				<ul>
					<li><a href="statistics.html">Statistics Elements</a></li>
					<li><a href="charts.html">Charts</a></li>
				</ul></li>
			<li><a href="javascript:void(0);" class="with-sub">Tables</a>
				<ul>
					<li><a href="tables_static.html">Static</a></li>
					<li><a href="tables_dynamic.html">Dynamic</a></li>
					<li><a href="tables_full.html">Full</a></li>
				</ul></li>
			<li><a href="javascript:void(0);" class="with-sub">Other
					Pages</a>
				<ul>
					<li><a href="login.html">Login</a></li>
					<li><a href="pages_profile.html">Profile</a></li>
					<li><a href="pages_invoice.html">Invoice</a></li>
					<li><a href="pages_faq.html">FAQ</a></li>
					<li><a href="pages_search.html">Search</a></li>
					<li><a href="pages_error_404.html">Error Page (404)</a></li>
				</ul></li>
		</ul>
	</nav>
	<div role="main" id="main" class="container_12 clearfix">
		<section class="toolbar">
			<div class="user">
				<div class="avatar">
					<img src="${contextPath }/styles/admin/img/layout/content/toolbar/user/avatar.png"> <span>3</span>
				</div>
				<span>Administrator</span>
				<ul>
					<li><a href="javascript:$$.settings();">Settings</a></li>
					<li><a href="pages_profile.html">Profile</a></li>
					<li class="line"></li>
					<li><a href="login.html">Logout</a></li>
				</ul>
			</div>
			<ul class="shortcuts">
				<li><a href="javascript:void(0);"><span
						class="icon i24_user-business"></span></a>
					<div class="small">
						<h3>Create a User</h3>
						<button class="button flat left grey"
							onclick="$(this).parent().fadeToggle($$.config.fxSpeed).parent().removeClass('active')">Close</button>
						<button class="button flat right"
							onclick="$(this).parent().fadeToggle($$.config.fxSpeed).parent().removeClass('active')">Create</button>
						<div class="content">
							<form class="full grid">
								<div class="row no-bg">
									<p class="_100 small">
										<label for="p1_username">Username</label> <input type="text"
											name="p1_username" id="p1_username">
									</p>
								</div>
								<div class="row no-bg">
									<p class="_50 small">
										<label for="p1_firstname">Firstname</label> <input type="text"
											name="p1_firstname" id="p1_firstname">
									</p>
									<p class="_50 small">
										<label for="p1_lastname">Lastname</label> <input type="text"
											name="p1_lastname" id="p1_lastname">
									</p>
								</div>
							</form>
						</div>
					</div></li>
				<li><a href="javascript:void(0);"><span
						class="icon i24_inbox-document"></span></a>
					<div class="small">
						<h3>Write a Message</h3>
						<button class="button flat left grey"
							onclick="$(this).parent().fadeToggle($$.config.fxSpeed).parent().removeClass('active')">Close</button>
						<button class="button flat right"
							onclick="$(this).parent().fadeToggle($$.config.fxSpeed).parent().removeClass('active')">Send</button>
						<div class="content">
							<form class="full grid">
								<div class="row no-bg">
									<p class="_100 small">
										<input type="text" name="p2_recipient" id="p2_recipient"
											placeholder="Recipient">
									</p>
									<p class="_100 small">
										<input type="text" name="p2_subject" id="p2_subject"
											placeholder="Subject">
									</p>
									<p class="_100 small">
										<textarea rows="5"
											style="overflow: hidden; height: 45px; width: 100%; box-sizing: border-box;"
											name="p2_message" id="p2_message" placeholder="Message"></textarea>
									<div
										style="position: absolute; display: none; word-wrap: break-word; white-space: pre-wrap; border: 1px solid rgb(160, 160, 160); font-weight: normal; width: 100%; font-family: sans-serif; line-height: normal; font-size: 12px; padding: 5px;">&nbsp;</div>
									</p>
								</div>
							</form>
						</div>
					</div></li>
				<li><a href="javascript:void(0);"><span
						class="icon i24_application-blue"></span></a>
					<div class="small">
						<h3>Information</h3>
						<button class="button flat left grey"
							onclick="$(this).parent().fadeToggle($$.config.fxSpeed).parent().removeClass('active')">Close</button>
						<div class="content">
							<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
								sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
								aliquyam erat, sed diam voluptua.</p>
						</div>
					</div></li>
			</ul>
			<input type="search" data-source="extras/search.php"
				placeholder="Search..." autocomplete="off" class="tooltip"
				data-gravity="s" original-title="e.g. Peach">
			<ul class="searchResults"></ul>
		</section>
		<aside style="min-height: 647px;">
			<div class="top">
				<nav>
					<ul class="collapsible accordion" style="height: 409px;">
						<li class="current"><a href="dashboard.html"><img
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/dashboard.png" alt=""
								height="16" width="16">Dashboard</a></li>
						<li><a href="javascript:void(0);" class="with_sub"><img
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/ui-layered-pane.png" alt=""
								height="16" width="16">UI Widgets<span class="badge">4</span></a>
							<ul class="sub" style="display: none;">
								<li class="with-icon"><a href="ui_general.html"><span
										class="icon icon-list"></span>General</a></li>
								<li class="with-icon"><a href="ui_extras.html"><span
										class="icon icon-cog"></span>Extras</a></li>
								<li class="with-icon"><a href="ui_icons.html"><span
										class="icon icon-picture"></span>Icons</a></li>
								<li class="with-icon"><a href="ui_grid.html"><span
										class="icon icon-th"></span>Grid</a></li>
							</ul></li>
						<li><a href="javascript:void(0);" class="with_sub"><img
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/application-form.png" alt=""
								height="16" width="16">Form Elements</a>
							<ul class="sub" style="display: none;">
								<li class="with-icon"><a href="forms.html"><span
										class="icon icon-list-alt"></span>General</a></li>
								<li class="with-icon"><a href="forms_validation.html"><span
										class="icon icon-warning-sign"></span>Validation</a></li>
								<li class="with-icon"><a href="forms_extras.html"><span
										class="icon icon-magic"></span>Fileuploader &amp; Wizard</a></li>
							</ul></li>
						<li><a href="javascript:void(0);" class="with_sub"><img
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/chart.png" alt="" height="16"
								width="16">Statistics / Charts<span class="badge">2</span></a>
							<ul class="sub" style="display: none;">
								<li class="with-icon"><a href="statistics.html"><span
										class="icon icon-sitemap"></span>Statistics Elements</a></li>
								<li class="with-icon"><a href="charts.html"><span
										class="icon icon-bar-chart"></span>Charts</a></li>
							</ul></li>
						<li><a href="javascript:void(0);" class="with_sub"><img
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/table.png" alt="" height="16"
								width="16">Tables</a>
							<ul class="sub" style="display: none;">
								<li class="with-icon"><a href="tables_static.html"><span
										class="icon icon-check-empty"></span>Static</a></li>
								<li class="with-icon"><a href="tables_dynamic.html"><span
										class="icon icon-table"></span>Dynamic</a></li>
								<li class="with-icon"><a href="tables_full.html"><span
										class="icon icon-fullscreen"></span>Full</a></li>
							</ul></li>
						<li><a href="javascript:void(0);" class="with_sub"><img
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/document-horizontal.png" alt=""
								height="16" width="16">Other Pages</a>
							<ul class="sub" style="display: none;">
								<li><a href="login.html">Login</a></li>
								<li><a href="pages_profile.html">Profile</a></li>
								<li><a href="pages_invoice.html">Invoice<span
										class="badge grey">1 open</span></a></li>
								<li><a href="pages_faq.html">FAQ</a></li>
								<li><a href="pages_search.html">Search</a></li>
								<li><a href="pages_error_404.html">Error Page (404)</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
			<div class="bottom sticky"
				style="position: absolute; left: 0px; top: 457px;">
				<div class="divider"></div>
				<div class="progress">
					<div class="bar" data-title="Space" data-value="1285"
						data-max="5120" data-format="0,0 MB">
						<strong>Space</strong><small>1,285 MB / 5,120 MB</small>
						<div class="clearfix"></div>
						<div
							class="small ui-progressbar ui-widget ui-widget-content ui-corner-all"
							role="progressbar" aria-valuemin="0" aria-valuemax="5120"
							aria-valuenow="1285">
							<div
								class="ui-progressbar-value ui-widget-header ui-corner-left blue"
								style="display: block; width: 25%;"></div>
						</div>
					</div>
					<div class="bar" data-title="Traffic" data-value="8.61"
						data-max="14" data-format="0.00 GB">
						<strong>Traffic</strong><small>8.61 GB / 14.00 GB</small>
						<div class="clearfix"></div>
						<div
							class="small ui-progressbar ui-widget ui-widget-content ui-corner-all"
							role="progressbar" aria-valuemin="0" aria-valuemax="14"
							aria-valuenow="8.61">
							<div
								class="ui-progressbar-value ui-widget-header ui-corner-left orange"
								style="display: block; width: 62%;"></div>
						</div>
					</div>
					<div class="bar" data-title="Budget" data-value="20000"
						data-max="20000" data-format="$0,0">
						<strong>Budget</strong><small>$20,000 / $20,000</small>
						<div class="clearfix"></div>
						<div
							class="small ui-progressbar ui-widget ui-widget-content ui-corner-all"
							role="progressbar" aria-valuemin="0" aria-valuemax="20000"
							aria-valuenow="20000">
							<div
								class="ui-progressbar-value ui-widget-header ui-corner-left ui-corner-right red"
								style="display: block; width: 100%;"></div>
						</div>
					</div>
				</div>
				<div class="divider"></div>
				<div class="buttons">
					<a href="javascript:void(0);"
						class="button grey open-add-client-dialog">Add New Client</a> <a
						href="javascript:void(0);"
						class="button grey open-add-client-dialog">Open a Ticket</a>
				</div>
			</div>
		</aside>
		<section id="content" class="container_12 clearfix ui-sortable"
			data-sort="true">
			<ul class="stats not-on-phone">
				<li><strong>61263</strong> <small>Total Visits</small> <span
					class="green">+26%</span></li>
				<li><strong>23</strong> <small>Orders</small> <span
					class="green">+16%</span></li>
				<li><strong>$2165.57</strong> <small>Total Volume</small> <span
					class="red">-8%</span></li>
				<li><strong>0</strong> <small>Overdue Tickets</small> <span>0%</span>
				</li>
				<li><strong>7</strong> <small>Reported Bugs</small> <span
					class="red">+17%</span></li>
			</ul>
			<h1 class="grid_12 margin-top no-margin-top-phone">
				<span>Dashboard</span>
			</h1>
			<!--[if gt IE 8]><!-->
			<div class="grid_12 center-elements">
				<div class="full-stats">
					<div class="stat minichart" data-total="16525"
						data-values="[4,6,7,7,4,3,2,1,4]" data-title="Visits"
						data-format="+0,0;-0,0" data-change="22">
						<div class="left" style="height: 51px;">
							<div class="title">Visits</div>
							<div class="total green">+16,525</div>
						</div>
						<div class="right" style="height: 51px;">
							<div class="minichart">
								<canvas width="44" height="12"
									style="display: inline-block; width: 44px; height: 12px; vertical-align: top;"></canvas>
							</div>
							<div class="change green">+22%</div>
						</div>
					</div>
				</div>
				<div class="full-stats">
					<div class="stat minichart negative" data-total="-17"
						data-values="[2,5,8,7,3,0,-1,-2,-4]" data-title="Users"
						data-format="+0,0;-0,0" data-change="-6">
						<div class="left" style="height: 51px;">
							<div class="title">Users</div>
							<div class="total red">-17</div>
						</div>
						<div class="right" style="height: 51px;">
							<div class="minichart">
								<canvas width="44" height="12"
									style="display: inline-block; width: 44px; height: 12px; vertical-align: top;"></canvas>
							</div>
							<div class="change red">-6%</div>
						</div>
					</div>
				</div>
				<div class="full-stats">
					<div class="stat minichart" data-total="0"
						data-values="[0,0,0,1,2,1,-2,-2,-1]" data-title="Orders"
						data-change="0">
						<div class="left" style="height: 51px;">
							<div class="title">Orders</div>
							<div class="total grey">0</div>
						</div>
						<div class="right" style="height: 51px;">
							<div class="minichart">
								<canvas width="44" height="12"
									style="display: inline-block; width: 44px; height: 12px; vertical-align: top;"></canvas>
							</div>
							<div class="change grey">0%</div>
						</div>
					</div>
				</div>
			</div>
			<!--<![endif]-->
			<div class="grid_12">
				<div class="box">
					<div class="header">
						<h2>
							<img class="icon"
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/chart-up-color.png">Charts
						</h2>
						<a href="javascript:void(0);" class="menu icon-cog"></a>
						<menu>
							<a href="javascript:void(0);"
								class="open-add-client-dialog with-icon"><span
								class="icon icon-plus"></span>Add Client</a>
							<a href="javascript:void(0);" class="with-icon"><div
									class="icon icon-pencil"></div>Edit</a>
							<a href="javascript:void(0);" class="with-icon"><div
									class="icon icon-remove"></div>Remove</a>
						</menu>
					</div>
					<div class="content" style="height: 250px;">
						<div class="chart" style="height: 250px;">
							<div class="legend">
								<table style="font-size: smaller; color: #ededed">
									<tbody>
										<tr>
											<td class="legendColorBox"><div
													style="border: 1px solid #ccc; padding: 1px">
													<div
														style="width: 4px; height: 0; border: 5px solid rgb(136, 187, 200); overflow: hidden"></div>
												</div></td>
											<td class="legendLabel">First Label</td>
										</tr>
										<tr>
											<td class="legendColorBox"><div
													style="border: 1px solid #ccc; padding: 1px">
													<div
														style="width: 4px; height: 0; border: 5px solid rgb(238, 121, 81); overflow: hidden"></div>
												</div></td>
											<td class="legendLabel">Second Label</td>
										</tr>
										<tr>
											<td class="legendColorBox"><div
													style="border: 1px solid #ccc; padding: 1px">
													<div
														style="width: 4px; height: 0; border: 5px solid rgb(187, 204, 119); overflow: hidden"></div>
												</div></td>
											<td class="legendLabel">Third Label</td>
										</tr>
										<tr>
											<td class="legendColorBox"><div
													style="border: 1px solid #ccc; padding: 1px">
													<div
														style="width: 4px; height: 0; border: 5px solid rgb(229, 199, 0); overflow: hidden"></div>
												</div></td>
											<td class="legendLabel">Fourth Label</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="graph"
								style="height: 185px; padding: 0px; position: relative;">
								<canvas class="base" width="921" height="185"></canvas>
								<canvas class="overlay" width="921" height="185"
									style="position: absolute; left: 0px; top: 0px;"></canvas>
								<div class="tickLabels" style="font-size: smaller">
									<div class="xAxis x1Axis" style="color: #939393">
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 11px; top: 155px; width: 30px">Label
											1</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 122px; top: 155px; width: 30px">Label
											2</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 234px; top: 155px; width: 30px">Label
											3</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 345px; top: 155px; width: 30px">Label
											4</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 457px; top: 155px; width: 30px">Label
											5</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 568px; top: 155px; width: 30px">Label
											6</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 679px; top: 155px; width: 30px">Label
											7</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 791px; top: 155px; width: 30px">Label
											8</div>
										<div class="tickLabel"
											style="position: absolute; text-align: center; left: 902px; top: 155px; width: 30px">Label
											9</div>
									</div>
									<div class="yAxis y1Axis" style="color: #939393">
										<div class="tickLabel"
											style="position: absolute; text-align: right; top: 143px; right: 900px; width: 21px">0</div>
										<div class="tickLabel"
											style="position: absolute; text-align: right; top: 113px; right: 900px; width: 21px">50</div>
										<div class="tickLabel"
											style="position: absolute; text-align: right; top: 84px; right: 900px; width: 21px">100</div>
										<div class="tickLabel"
											style="position: absolute; text-align: right; top: 55px; right: 900px; width: 21px">150</div>
										<div class="tickLabel"
											style="position: absolute; text-align: right; top: 26px; right: 900px; width: 21px">200</div>
										<div class="tickLabel"
											style="position: absolute; text-align: right; top: -3px; right: 900px; width: 21px">250</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="grid_6">
				<div class="box">
					<div class="header">
						<h2>
							<img class="icon"
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/receipt-invoice.png">Invoices
							statistics
						</h2>
					</div>
					<div class="content">
						<div class="spacer"></div>
						<div class="full-stats flexiwidth">
							<div class="stat hlist"
								data-list="[{&quot;val&quot;:17621,&quot;format&quot;:&quot;$0,0;-$0,0&quot;,&quot;title&quot;:&quot;already paid&quot;,&quot;color&quot;:&quot;green&quot;},{&quot;val&quot;:1125,&quot;format&quot;:&quot;$0,0;-$0,0&quot;,&quot;title&quot;:&quot;not paid yet&quot;,&quot;color&quot;:&quot;red&quot;},{&quot;val&quot;:18746,&quot;format&quot;:&quot;$0,0;-$0,0&quot;,&quot;title&quot;:&quot;total taxes&quot;}]"
								data-flexiwidth="true">
								<ul>
									<li class="green" style="width: 33.33333333333333%;"><div
											class="value">$17,621</div>
										<div class="title">already paid</div></li>
									<li class="red" style="width: 33.33333333333333%;"><div
											class="value">$1,125</div>
										<div class="title">not paid yet</div></li>
									<li style="width: 33.33333333333333%;"><div class="value">$18,746</div>
										<div class="title">total taxes</div></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="progress-title">90%</div>
						<div
							class="ui-progressbar ui-widget ui-widget-content ui-corner-all blue"
							data-value="90" data-showtitle="percentage" data-color="blue"
							data-showvalue="true" role="progressbar" aria-valuemin="0"
							aria-valuemax="100" aria-valuenow="90">
							<div class="ui-progressbar-value ui-widget-header ui-corner-left"
								style="width: 90%;"></div>
						</div>
						<div class="progress-value">90 / 100</div>
					</div>
					<div class="actions">
						<div class="left">
							<a href="#" class="button grey">Print invoices</a>
						</div>
						<div class="right">
							<a href="#" class="button">Generate report</a>
						</div>
					</div>
				</div>
				<form class="box validate" novalidate="novalidate">
					<div class="header">
						<h2>
							<img class="icon" src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/newspaper.png">Messages
						</h2>
					</div>
					<div class="content">
						<div class="spacer"></div>
						<div class="messages full chat">
							<div class="msg reply">
								<img src="${contextPath }/styles/admin/img/icons/packs/iconsweets2/25x25/user-2.png">
								<div class="content">
									<h3>
										<a href="pages_profile.html">John Doe</a> <span>says:</span><small>3
											hours ago</small>
									</h3>
									<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
										sed diam nonumy eirmod tempor invidunt ut labore et dolore
										magna aliquyam erat, sed diam voluptua.</p>
								</div>
							</div>
							<div class="msg">
								<img src="${contextPath }/styles/admin/img/icons/packs/iconsweets2/25x25/user-2.png">
								<div class="content">
									<h3>
										<a href="pages_profile.html">Peter Doe</a> <span>says:</span><small>5
											hours ago</small>
									</h3>
									<p>At vero eos et accusam et justo duo dolores et ea rebum.
										Stet clita kasd gubergren, no sea takimata sanctus est Lorem
										ipsum dolor sit amet.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="actions">
						<div class="left">
							<label for="fb_pin" class="inline" style="top: 5.5px;">Message
								to John Doe:</label> <input type="text" class="required" name="fb_pin"
								id="fb_pin" style="padding-left: 115px;">
						</div>
						<div class="right">
							<input type="reset" value="Cancel" class="grey"> <input
								type="submit" value="Send" name="send">
						</div>
					</div>
				</form>
			</div>
			<div class="grid_6">
				<div class="box">
					<div class="header">
						<h2>
							<img class="icon"
								src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/calendar-select.png">Calendar
						</h2>
					</div>
					<div class="content calendar demo fc">
						<div class="fc-header" style="width: 100%">
							<div class="fc-header-left">
								<span
									class="fc-button fc-button-prev fc-state-default fc-corner-left"><span
									class="fc-button-inner"><span class="fc-button-content">&nbsp;◄&nbsp;</span><span
										class="fc-button-effect"><span></span></span></span></span><span
									class="fc-button fc-button-next fc-state-default fc-corner-right"><span
									class="fc-button-inner"><span class="fc-button-content">&nbsp;►&nbsp;</span><span
										class="fc-button-effect"><span></span></span></span></span>
							</div>
							<div class="fc-header-center">
								<span class="fc-header-title"><h2>September 2013</h2></span>
							</div>
							<div class="fc-header-right">
								<span
									class="fc-button fc-button-month fc-state-default fc-corner-left fc-state-active"><span
									class="fc-button-inner"><span class="fc-button-content">month</span><span
										class="fc-button-effect"><span></span></span></span></span><span
									class="fc-button fc-button-agendaWeek fc-state-default"><span
									class="fc-button-inner"><span class="fc-button-content">week</span><span
										class="fc-button-effect"><span></span></span></span></span><span
									class="fc-button fc-button-agendaDay fc-state-default fc-corner-right"><span
									class="fc-button-inner"><span class="fc-button-content">day</span><span
										class="fc-button-effect"><span></span></span></span></span>
							</div>
						</div>
						<div class="fc-content"
							style="position: relative; min-height: 1px;">
							<div class="fc-view fc-view-month fc-grid"
								style="position: relative;" unselectable="on">
								<table class="fc-border-separate" style="width: 100%"
									cellspacing="0">
									<thead>
										<tr class="fc-first fc-last">
											<th class="fc-sun fc-widget-header fc-first"
												style="width: 134px;">Sun</th>
											<th class="fc-mon fc-widget-header" style="width: 133px;">Mon</th>
											<th class="fc-tue fc-widget-header" style="width: 133px;">Tue</th>
											<th class="fc-wed fc-widget-header" style="width: 133px;">Wed</th>
											<th class="fc-thu fc-widget-header" style="width: 133px;">Thu</th>
											<th class="fc-fri fc-widget-header" style="width: 133px;">Fri</th>
											<th class="fc-sat fc-widget-header fc-last">Sat</th>
										</tr>
									</thead>
									<tbody>
										<tr class="fc-week0 fc-first">
											<td class="fc-sun fc-widget-content fc-day0 fc-first"><div
													style="min-height: 111px;">
													<div class="fc-day-number">1</div>
													<div class="fc-day-content">
														<div style="position: relative; height: 48px;">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-mon fc-widget-content fc-day1"><div>
													<div class="fc-day-number">2</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-tue fc-widget-content fc-day2"><div>
													<div class="fc-day-number">3</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-wed fc-widget-content fc-day3"><div>
													<div class="fc-day-number">4</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-thu fc-widget-content fc-day4"><div>
													<div class="fc-day-number">5</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td
												class="fc-fri fc-widget-content fc-day5 fc-state-highlight fc-today"><div>
													<div class="fc-day-number">6</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-sat fc-widget-content fc-day6 fc-last"><div>
													<div class="fc-day-number">7</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
										</tr>
										<tr class="fc-week1">
											<td class="fc-sun fc-widget-content fc-day7 fc-first"><div
													style="min-height: 110px;">
													<div class="fc-day-number">8</div>
													<div class="fc-day-content">
														<div style="position: relative; height: 24px;">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-mon fc-widget-content fc-day8"><div>
													<div class="fc-day-number">9</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-tue fc-widget-content fc-day9"><div>
													<div class="fc-day-number">10</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-wed fc-widget-content fc-day10"><div>
													<div class="fc-day-number">11</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-thu fc-widget-content fc-day11"><div>
													<div class="fc-day-number">12</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-fri fc-widget-content fc-day12"><div>
													<div class="fc-day-number">13</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-sat fc-widget-content fc-day13 fc-last"><div>
													<div class="fc-day-number">14</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
										</tr>
										<tr class="fc-week2">
											<td class="fc-sun fc-widget-content fc-day14 fc-first"><div
													style="min-height: 110px;">
													<div class="fc-day-number">15</div>
													<div class="fc-day-content">
														<div style="position: relative; height: 0px;">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-mon fc-widget-content fc-day15"><div>
													<div class="fc-day-number">16</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-tue fc-widget-content fc-day16"><div>
													<div class="fc-day-number">17</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-wed fc-widget-content fc-day17"><div>
													<div class="fc-day-number">18</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-thu fc-widget-content fc-day18"><div>
													<div class="fc-day-number">19</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-fri fc-widget-content fc-day19"><div>
													<div class="fc-day-number">20</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-sat fc-widget-content fc-day20 fc-last"><div>
													<div class="fc-day-number">21</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
										</tr>
										<tr class="fc-week3">
											<td class="fc-sun fc-widget-content fc-day21 fc-first"><div
													style="min-height: 110px;">
													<div class="fc-day-number">22</div>
													<div class="fc-day-content">
														<div style="position: relative; height: 24px;">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-mon fc-widget-content fc-day22"><div>
													<div class="fc-day-number">23</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-tue fc-widget-content fc-day23"><div>
													<div class="fc-day-number">24</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-wed fc-widget-content fc-day24"><div>
													<div class="fc-day-number">25</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-thu fc-widget-content fc-day25"><div>
													<div class="fc-day-number">26</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-fri fc-widget-content fc-day26"><div>
													<div class="fc-day-number">27</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-sat fc-widget-content fc-day27 fc-last"><div>
													<div class="fc-day-number">28</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
										</tr>
										<tr class="fc-week4">
											<td class="fc-sun fc-widget-content fc-day28 fc-first"><div
													style="min-height: 110px;">
													<div class="fc-day-number">29</div>
													<div class="fc-day-content">
														<div style="position: relative; height: 24px;">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-mon fc-widget-content fc-day29"><div>
													<div class="fc-day-number">30</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-tue fc-widget-content fc-day30 fc-other-month"><div>
													<div class="fc-day-number">1</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-wed fc-widget-content fc-day31 fc-other-month"><div>
													<div class="fc-day-number">2</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-thu fc-widget-content fc-day32 fc-other-month"><div>
													<div class="fc-day-number">3</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-fri fc-widget-content fc-day33 fc-other-month"><div>
													<div class="fc-day-number">4</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td
												class="fc-sat fc-widget-content fc-day34 fc-last fc-other-month"><div>
													<div class="fc-day-number">5</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
										</tr>
										<tr class="fc-week5 fc-last">
											<td
												class="fc-sun fc-widget-content fc-day35 fc-first fc-other-month"><div
													style="min-height: 114px;">
													<div class="fc-day-number">6</div>
													<div class="fc-day-content">
														<div style="position: relative; height: 0px;">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-mon fc-widget-content fc-day36 fc-other-month"><div>
													<div class="fc-day-number">7</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-tue fc-widget-content fc-day37 fc-other-month"><div>
													<div class="fc-day-number">8</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-wed fc-widget-content fc-day38 fc-other-month"><div>
													<div class="fc-day-number">9</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-thu fc-widget-content fc-day39 fc-other-month"><div>
													<div class="fc-day-number">10</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td class="fc-fri fc-widget-content fc-day40 fc-other-month"><div>
													<div class="fc-day-number">11</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
											<td
												class="fc-sat fc-widget-content fc-day41 fc-last fc-other-month"><div>
													<div class="fc-day-number">12</div>
													<div class="fc-day-content">
														<div style="position: relative">&nbsp;</div>
													</div>
												</div></td>
										</tr>
									</tbody>
								</table>
								<div style="position: absolute; z-index: 8; top: 0; left: 0">
									<div
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left fc-corner-right"
										style="position: absolute; z-index: 8; left: 2px; width: 524px; top: 44px;">
										<div class="fc-event-inner fc-event-skin">
											<span class="fc-event-title">Long Event</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
									</div>
									<div
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left fc-corner-right"
										style="position: absolute; z-index: 8; left: 673px; width: 121px; top: 44px;">
										<div class="fc-event-inner fc-event-skin">
											<span class="fc-event-time">10:30a</span><span
												class="fc-event-title">Meeting</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
									</div>
									<div
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left fc-corner-right"
										style="position: absolute; z-index: 8; left: 807px; width: 123px; top: 44px;">
										<div class="fc-event-inner fc-event-skin">
											<span class="fc-event-time">7p</span><span
												class="fc-event-title">Birthday Party</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
									</div>
									<div
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left fc-corner-right"
										style="position: absolute; z-index: 8; left: 2px; width: 122px; top: 68px;">
										<div class="fc-event-inner fc-event-skin">
											<span class="fc-event-title">All Day Event</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
									</div>
									<div
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left fc-corner-right"
										style="position: absolute; z-index: 8; left: 673px; width: 121px; top: 68px;">
										<div class="fc-event-inner fc-event-skin">
											<span class="fc-event-time">12p</span><span
												class="fc-event-title">Lunch</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
									</div>
									<div
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left fc-corner-right"
										style="position: absolute; z-index: 8; left: 271px; width: 121px; top: 68px;">
										<div class="fc-event-inner fc-event-skin">
											<span class="fc-event-time">4p</span><span
												class="fc-event-title">Repeating Event</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
									</div>
									<div
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left fc-corner-right"
										style="position: absolute; z-index: 8; left: 271px; width: 121px; top: 156px;">
										<div class="fc-event-inner fc-event-skin">
											<span class="fc-event-time">4p</span><span
												class="fc-event-title">Repeating Event</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
									</div>
									<a href="http://google.com/"
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-left"
										style="position: absolute; z-index: 8; left: 807px; width: 126px; top: 378px;"><div
											class="fc-event-inner fc-event-skin">
											<span class="fc-event-title">Click for Google</span>
										</div></a><a href="http://google.com/"
										class="fc-event fc-event-skin fc-event-hori fc-event-draggable fc-corner-right"
										style="position: absolute; z-index: 8; left: 0px; width: 124px; top: 489px;"><div
											class="fc-event-inner fc-event-skin">
											<span class="fc-event-title">Click for Google</span>
										</div>
										<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="grid_12">
				<div class="box with-table">
					<div class="header">
						<h2>
							<img class="icon" src="${contextPath }/styles/admin/img/icons/packs/fugue/16x16/table.png">Table
						</h2>
					</div>
					<div class="content">
						<div class="toggleFilter"></div>
						<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper"
							role="grid">
							<div class="filters">
								<div class="dataTables_filter" id="DataTables_Table_0_filter">
									<label><span class="text">Search:</span> <input
										type="text" aria-controls="DataTables_Table_0"></label>
								</div>
								<div id="DataTables_Table_0_length" class="dataTables_length">
									<label><span class="text">Show entries:</span> <select
										size="1" name="DataTables_Table_0_length"
										aria-controls="DataTables_Table_0" id="selRKH"
										style="display: none;" class="chzn-done"><option
												value="5" selected="selected">5</option>
											<option value="10">10</option>
											<option value="25">25</option>
											<option value="50">50</option>
											<option value="-1">All</option></select>
									<div id="selRKH_chzn"
											class="chzn-container chzn-container-single chzn-container-single-nosearch"
											style="">
											<a href="javascript:void(0)" class="chzn-single"><span>5</span>
											<div>
													<b></b>
												</div></a>
											<div class="chzn-drop" style="left: -9000px; top: 0px;">
												<div class="chzn-search">
													<input type="text" autocomplete="off">
												</div>
												<ul class="chzn-results">
													<li id="selRKH_chzn_o_0"
														class="active-result result-selected" style="">5</li>
													<li id="selRKH_chzn_o_1" class="active-result" style="">10</li>
													<li id="selRKH_chzn_o_2" class="active-result" style="">25</li>
													<li id="selRKH_chzn_o_3" class="active-result" style="">50</li>
													<li id="selRKH_chzn_o_4" class="active-result" style="">All</li>
												</ul>
											</div>
										</div></label>
								</div>
							</div>
							<div class="tabletools">
								<div class="left">
									<a class="open-add-client-dialog" href="javascript:void(0);"><i
										class="icon-plus"></i>New Client</a>
								</div>
								<div class="right">
									<div class="DTTT_container">
										<a class="DTTT_button DTTT_button_copy"
											id="ToolTables_DataTables_Table_0_0"><span>Copy</span>
										<div
												style="position: absolute; left: 0px; top: 0px; width: 38px; height: 18px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_1"
													src="${contextPath }/styles/admin/extras/datatables/copy_csv_xls_pdf.swf" loop="false"
													menu="false" quality="best" bgcolor="#ffffff" width="38"
													height="18" name="ZeroClipboard_TableToolsMovie_1"
													align="middle" allowscriptaccess="always"
													allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=1&amp;width=38&amp;height=18"
													wmode="transparent">
											</div></a><a class="DTTT_button DTTT_button_csv"
											id="ToolTables_DataTables_Table_0_1"><span>CSV</span>
										<div
												style="position: absolute; left: 0px; top: 0px; width: 32px; height: 18px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_2"
													src="${contextPath }/styles/admin/extras/datatables/copy_csv_xls_pdf.swf" loop="false"
													menu="false" quality="best" bgcolor="#ffffff" width="32"
													height="18" name="ZeroClipboard_TableToolsMovie_2"
													align="middle" allowscriptaccess="always"
													allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=2&amp;width=32&amp;height=18"
													wmode="transparent">
											</div></a><a class="DTTT_button DTTT_button_xls"
											id="ToolTables_DataTables_Table_0_2"><span>Excel</span>
										<div
												style="position: absolute; left: 0px; top: 0px; width: 44px; height: 18px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_3"
													src="${contextPath }/styles/admin/extras/datatables/copy_csv_xls_pdf.swf" loop="false"
													menu="false" quality="best" bgcolor="#ffffff" width="44"
													height="18" name="ZeroClipboard_TableToolsMovie_3"
													align="middle" allowscriptaccess="always"
													allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=3&amp;width=44&amp;height=18"
													wmode="transparent">
											</div></a><a class="DTTT_button DTTT_button_pdf"
											id="ToolTables_DataTables_Table_0_3"><span>PDF</span>
										<div
												style="position: absolute; left: 0px; top: 0px; width: 32px; height: 18px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_4"
													src="${contextPath }/styles/admin/extras/datatables/copy_csv_xls_pdf.swf" loop="false"
													menu="false" quality="best" bgcolor="#ffffff" width="32"
													height="18" name="ZeroClipboard_TableToolsMovie_4"
													align="middle" allowscriptaccess="always"
													allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=4&amp;width=32&amp;height=18"
													wmode="transparent">
											</div></a>
									</div>
								</div>
							</div>
							<table class="dynamic styled dataTable"
								data-table-tools="{&quot;display&quot;:true}"
								id="DataTables_Table_0"
								aria-describedby="DataTables_Table_0_info">
								<thead>
									<tr role="row">
										<th class="sorting_asc" role="columnheader" tabindex="0"
											aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
											aria-sort="ascending"
											aria-label="Rendering engine: activate to sort column descending"
											style="width: 174px;">Rendering engine</th>
										<th class="sorting" role="columnheader" tabindex="0"
											aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
											aria-label="Browser: activate to sort column ascending"
											style="width: 229px;">Browser</th>
										<th class="sorting" role="columnheader" tabindex="0"
											aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
											aria-label="Platform(s): activate to sort column ascending"
											style="width: 150px;">Platform(s)</th>
										<th class="sorting" role="columnheader" tabindex="0"
											aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
											aria-label="Engine version: activate to sort column ascending"
											style="width: 155px;">Engine version</th>
										<th class="sorting" role="columnheader" tabindex="0"
											aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
											aria-label="CSS grade: activate to sort column ascending"
											style="width: 104px;">CSS grade</th>
									</tr>
								</thead>
								<tbody role="alert" aria-live="polite" aria-relevant="all">
									<tr class="gradeA odd">
										<td class=" sorting_1">Gecko</td>
										<td class=" ">Firefox 1.0</td>
										<td class=" ">Win 98+ / OSX.2+</td>
										<td class="center ">1.7</td>
										<td class="center ">A</td>
									</tr>
									<tr class="gradeA even">
										<td class=" sorting_1">Gecko</td>
										<td class=" ">Firefox 1.5</td>
										<td class=" ">Win 98+ / OSX.2+</td>
										<td class="center ">1.8</td>
										<td class="center ">A</td>
									</tr>
									<tr class="gradeA odd">
										<td class=" sorting_1">Gecko</td>
										<td class=" ">Firefox 2.0</td>
										<td class=" ">Win 98+ / OSX.2+</td>
										<td class="center ">1.8</td>
										<td class="center ">A</td>
									</tr>
									<tr class="gradeA even">
										<td class=" sorting_1">Gecko</td>
										<td class=" ">Firefox 3.0</td>
										<td class=" ">Win 2k+ / OSX.3+</td>
										<td class="center ">1.9</td>
										<td class="center ">A</td>
									</tr>
									<tr class="gradeA odd">
										<td class=" sorting_1">Gecko</td>
										<td class=" ">Camino 1.0</td>
										<td class=" ">OSX.2+</td>
										<td class="center ">1.8</td>
										<td class="center ">A</td>
									</tr>
								</tbody>
							</table>
							<div class="footer">
								<div class="dataTables_info" id="DataTables_Table_0_info">Showing
									1 to 5 of 11 entries</div>
								<div class="dataTables_paginate paging_full_numbers"
									id="DataTables_Table_0_paginate">
									<a tabindex="0"
										class="first paginate_button paginate_button_disabled"
										id="DataTables_Table_0_first">First</a><a tabindex="0"
										class="previous paginate_button paginate_button_disabled"
										id="DataTables_Table_0_previous">Previous</a><span><a
										tabindex="0" class="paginate_active">1</a><a tabindex="0"
										class="paginate_button">2</a><a tabindex="0"
										class="paginate_button">3</a></span><a tabindex="0"
										class="next paginate_button" id="DataTables_Table_0_next">Next</a><a
										tabindex="0" class="last paginate_button"
										id="DataTables_Table_0_last">Last</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<footer class="container_12">
		<ul class="grid_6">
			<li><a href="#">About</a></li>
			<li><a href="#">Jobs</a></li>
			<li><a href="#">@StammTec.de</a></li>
		</ul>
		<span class="grid_6"> Copyright © 2012 YourCompany </span>
	</footer>
	<script>$$.loaded();</script>
	<!--[if lt IE 7 ]><script defer src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script> <script defer>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script><![endif]-->
	<div id="haloword-lookup" class="ui-widget-content ui-draggable">
		<div id="haloword-title">
			<span id="haloword-word"></span><a herf="#" id="haloword-pron"
				class="haloword-button" title="发音"></a>
			<audio id="haloword-audio"></audio>
			<div id="haloword-control-container">
				<a herf="#" id="haloword-add" class="haloword-button" title="加入单词表"></a><a
					herf="#" id="haloword-remove" class="haloword-button" title="移出单词表"></a><a
					href="#" id="haloword-open" class="haloword-button"
					title="查看单词详细释义" target="_blank"></a><a herf="#"
					id="haloword-close" class="haloword-button" title="关闭查询窗"></a>
			</div>
			<br style="clear: both;">
		</div>
		<div id="haloword-content"></div>
	</div>
	<a href="#top" id="gotoTop" style="display: inline;"></a>
	<div
		class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable"
		tabindex="-1" role="dialog"
		aria-labelledby="ui-dialog-title-dialog_add_client"
		style="display: none; z-index: 1000; outline: 0px; top: 2120px; left: 4217px;">
		<div
			class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix">
			<span class="ui-dialog-title" id="ui-dialog-title-dialog_add_client">Add
				Client Example Dialog</span><a href="#"
				class="ui-dialog-titlebar-close ui-corner-all" role="button"><span
				class="ui-icon ui-icon-closethick">close</span></a>
		</div>
		<div style="" id="dialog_add_client"
			class="ui-dialog-content ui-widget-content">
			<form action="" class="full validate no-box" novalidate="novalidate">
				<div class="row">
					<label for="d2_username" style="width: 0px;"> <strong>Username</strong>
					</label>
					<div style="margin-left: 15px; height: 40px;">
						<input class="required" type="text" name="d2_username"
							id="d2_username">
					</div>
				</div>
				<div class="row">
					<label for="d2_email" style="width: 0px;"> <strong>Email
							Address</strong>
					</label>
					<div style="margin-left: 15px; height: 40px;">
						<input class="required" type="text" name="d2_email" id="d2_email">
					</div>
				</div>
				<div class="row">
					<label for="d2_role" style="width: 0px;"> <strong>Role</strong>
					</label>
					<div style="margin-left: 15px; height: 40px;">
						<select style="padding-bottom: 10px; display: none;"
							name="d2_role" id="d2_role" class="search required chzn-done"
							data-placeholder="Choose a Role">
							<option value=""></option>
							<option value="Applicant">Applicant</option>
							<option value="Member">Member</option>
							<option value="Moderator">Moderator</option>
							<option value="Administrator">Administrator</option>
						</select>
						<div id="d2_role_chzn"
							class="chzn-container chzn-container-single" style="width: 100%;">
							<a href="javascript:void(0)" class="chzn-single chzn-default"><span>Choose
									a Role</span>
							<div>
									<b></b>
								</div></a>
							<div class="chzn-drop" style="left: -9000px; top: 0px;">
								<div class="chzn-search">
									<input type="text" autocomplete="off">
								</div>
								<ul class="chzn-results">
									<li id="d2_role_chzn_o_1" class="active-result" style="">Applicant</li>
									<li id="d2_role_chzn_o_2" class="active-result" style="">Member</li>
									<li id="d2_role_chzn_o_3" class="active-result" style="">Moderator</li>
									<li id="d2_role_chzn_o_4" class="active-result" style="">Administrator</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</form>
			<div class="actions">
				<div class="left">
					<button class="grey cancel">Cancel</button>
				</div>
				<div class="right">
					<button class="submit">Add User</button>
				</div>
			</div>
		</div>
	</div>
	<div
		class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable"
		tabindex="-1" role="dialog"
		aria-labelledby="ui-dialog-title-dialog_message"
		style="display: none; z-index: 1000; outline: 0px; top: 785px; left: 4217px;">
		<div
			class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix">
			<span class="ui-dialog-title" id="ui-dialog-title-dialog_message">Conversation:
				John Doe</span><a href="#" class="ui-dialog-titlebar-close ui-corner-all"
				role="button"><span class="ui-icon ui-icon-closethick">close</span></a>
		</div>
		<div style="" id="dialog_message"
			class="ui-dialog-content ui-widget-content">
			<div class="spacer"></div>
			<div class="messages full chat">
				<div class="msg reply">
					<img src="${contextPath }/styles/admin/img/icons/packs/iconsweets2/25x25/user-2.png">
					<div class="content">
						<h3>
							<a href="pages_profile.html">John Doe</a> <span>says:</span><small>3
								hours ago</small>
						</h3>
						<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
							sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
							aliquyam erat, sed diam voluptua.</p>
					</div>
				</div>
				<div class="msg">
					<img src="${contextPath }/styles/admin/img/icons/packs/iconsweets2/25x25/user-2.png">
					<div class="content">
						<h3>
							<a href="pages_profile.html">Peter Doe</a> <span>says:</span><small>5
								hours ago</small>
						</h3>
						<p>At vero eos et accusam et justo duo dolores et ea rebum.
							Stet clita kasd gubergren, no sea takimata sanctus est Lorem
							ipsum dolor sit amet.</p>
					</div>
				</div>
			</div>
			<div class="actions">
				<div class="left">
					<input style="width: 330px;" type="text" name="d3_message"
						id="d3_message" placeholder="Type your message...">
				</div>
				<div class="right">
					<button>Send</button>
					<button class="grey">Cancel</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>