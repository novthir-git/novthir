<%@ page pageEncoding="UTF-8"%>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" lang="en"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" lang="en"><![endif]-->
<!--[if gt IE 8]><!-->
<%@ include file="/WEB-INF/views/include.inc.jsp"%>
<html>
<!--<![endif]-->
<head>
<title>${contextPath }----</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="format-detection" content="telephone=no">
</head>
<body>
	<div id="loading-overlay" style="display: none;"></div>
	<div id="loading" style="display: none;">
		<span>加载中...</span>
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
	<section id="toolbar">
		<div class="container_12">
			<div class="left">
				<ul class="breadcrumb">
					<li><a href="javascript:void(0);">XXXX系统</a></li>
					<li><a href="javascript:void(0);">主页</a></li>
				</ul>
			</div>
			<div class="right">
				<ul>
					<li><a href="pages_profile.html"><span
							class="icon i14_admin-user"></span>用户信息</a></li>
					<li><a href="#" class="with_red"><span>3</span>短消息</a>
						<div class="popup"
							style="display: none; top: 27px; left: -77.5px;">
							<h3>新消息</h3>
							<a class="button flat left grey"
								onclick="$(this).parent().fadeToggle($$.config.fxSpeed)">关闭</a>
							<a class="button flat right" href="tables_dynamic.html">收件箱</a>
							<div class="content mail">
								<ul>
									<li>
										<div class="avatar">
											<img
												src="${contextPath }/styles/admin/img/elements/mail/avatar.png"
												height="40" width="40/">
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
											<img
												src="${contextPath }/styles/admin/img/elements/mail/mail.png"
												height="40" width="40/">
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
											<img
												src="${contextPath }/styles/admin/img/elements/mail/mail.png"
												height="40" width="40/">
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
					<li class="red"><a href="${contextPath }/logout">退出</a></li>
				</ul>
			</div>
		</div>
	</section>
	<header class="container_12">
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
	<div role="main" id="main" class="container_12 clearfix">
		<section class="toolbar">
			<div class="user">
				<div class="avatar">
					<img src="${contextPath }/styles/admin/img/layout/content/toolbar/user/avatar.png"> <span>3</span>
				</div>
				<span>${login_user.realname }</span>
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
				placeholder="查找..." autocomplete="off" class="tooltip"
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
	</div>
</body>
</html>
