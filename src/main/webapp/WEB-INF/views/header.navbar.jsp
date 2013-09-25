<%@ page contentType="text/html;charset=UTF-8" %>
<div class="page-sidebar nav-collapse collapse">
	<!-- BEGIN SIDEBAR MENU -->        
	<ul class="page-sidebar-menu">
		<li>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			<div class="sidebar-toggler hidden-phone"></div>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		</li>
		<li>
			<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
			<form class="sidebar-search">
				<div class="input-box">
					<a href="javascript:;" class="remove"></a>
					<input type="text" placeholder="Search..." />
					<input type="button" class="submit" value=" " />
				</div>
			</form>
			<!-- END RESPONSIVE QUICK SEARCH FORM -->
		</li>
		<li class="start active">
			<a href="index.html">
			<i class="icon-home"></i> 
			<span class="title">Dashboard</span>
			<span class="selected"></span>
			<span class="arrow open"></span>
			</a>
		</li>
		<li >
			<a href="javascript:;">
			<i class="icon-cogs"></i> 
			<span class="title">Layouts</span>
			<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li >
					<a href="#">
					<span class="badge badge-roundless badge-important">new</span>Language Switch Bar</a>
				</li>
				<li >
					<a href="#">
					Horizontal & Sidebar Menu</a>
				</li>
				<li >
					<a href="#">
					Horizontal Menu 1</a>
				</li>
				<li >
					<a href="#">
					Email Templates</a>
				</li>
				
			</ul>
		</li>				
		<!-- BEGIN FRONT DEMO -->
		<li class="tooltips" data-placement="right" data-original-title="Frontend&nbsp;Theme&nbsp;For&nbsp;Metronic&nbsp;Admin">
			<a href="http://keenthemes.com/preview/index.php?theme=metronic_frontend" target="_blank">
			<i class="icon-gift"></i> 
			<span class="title">Frontend Theme</span>
			</a>
		</li>
		<!-- END FRONT DEMO -->
		<li>
			<a href="javascript:;">
			<i class="icon-bookmark-empty"></i> 
			<span class="title">UI Features</span>
			<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li >
					<a href="ui_general.html">
					General</a>
				</li>
				<li >
					<a href="ui_buttons.html">
					Buttons</a>
				</li>
				<li >
					<a href="ui_modals.html">
					Enhanced Modals</a>
				</li>
				<li >
					<a href="ui_nestable.html">
					Nestable List</a>
				</li>
			</ul>
		</li>
		<li class="last">
			<a href="charts.html">
			<i class="icon-bar-chart"></i> 
			<span class="title">Visual Charts</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
			<i class="icon-magnet"></i>
			<span class="title">安全管理</span>
			<span calss="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li >
					<a href="${ctx }/management/security/user/list">
					用户管理</a>
				</li>
				<li >
					<a href="ui_buttons.html">
					角色管理</a>
				</li>
				<li >
					<a href="ui_modals.html">
					模块管理</a>
				</li>
			</ul>
		</li>
	</ul>
	<!-- END SIDEBAR MENU -->
</div>
