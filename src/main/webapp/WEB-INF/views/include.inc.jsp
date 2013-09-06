<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<link href="http://fonts.googleapis.com" rel="dns-prefetch">
<link href="http://themes.googleusercontent.com" rel="dns-prefetch">
<link href="http://ajax.googleapis.com" rel="dns-prefetch">
<link href="http://cdnjs.cloudflare.com" rel="dns-prefetch">
<link href="http://agorbatchev.typepad.com" rel="dns-prefetch">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/style.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/grid.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/layout.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/icons.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/fonts/font-awesome.css">
<!--[if IE 8]><link rel="stylesheet" href="${contextPath}/styles/admin/css/fonts/font-awesome-ie7.css"><![endif]-->
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery-ui-1.8.21.custom.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery.chosen.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery.cleditor.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery.colorpicker.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery.elfinder.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery.fancybox.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery.jgrowl.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/jquery.plupload.queue.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/syntaxhighlighter/shCore.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/external/syntaxhighlighter/shThemeDefault.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/elements.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/forms.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/print-invoice.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/typographics.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/media-queries.css">
<link rel="stylesheet" href="${contextPath}/styles/admin/css/ie-fixes.css">
<script type="text/javascript">
	window.WebFontConfig = {
		google : {
			families : [ 'PT Sans:400,700' ]
		},
		active : function() {
			$(window).trigger('fontsloaded')
		}
	};
</script>
<script defer="" async="" src="https://ajax.googleapis.com/ajax/libs/webfont/1.0.28/webfont.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/polyfills/modernizr-2.6.1.min.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/polyfills/respond.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/polyfills/matchmedia.js"></script>
<!--[if lt IE 9]><script src="${contextPath}/styles/admin/js/mylibs/polyfills/selectivizr-min.js"></script><![endif]-->
<!--[if lt IE 10]><script src="${contextPath}/styles/admin/js/mylibs/polyfills/excanvas.js"></script><![endif]-->
<!--[if lt IE 10]><script src="${contextPath}/styles/admin/js/mylibs/polyfills/classlist.js"></script><![endif]-->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/libs/jquery-1.7.2.min.js"><\/script>')
</script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js"></script>
<script>
	window.jQuery.ui
			|| document
					.write('<script src="js/libs/jquery-ui-1.8.21.min.js"><\/script>')
</script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/0.4.2/lodash.min.js"></script>
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=PT+Sans:400,700">
<script>
	window._
			|| document
					.write('<script src="js/libs/lo-dash.min.js"><\/script>')
</script>
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js"></script>
<script	src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/0.4.2/lodash.min.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/jquery.hashchange.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/jquery.idle-timer.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/jquery.plusplus.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/jquery.jgrowl.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/jquery.scrollTo.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/jquery.ui.touch-punch.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/jquery.ui.multiaccordion.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/number-functions.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.autosize.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.checkbox.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.chosen.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.cleditor.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.colorpicker.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.ellipsis.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.fileinput.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.fullcalendar.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.maskedinput.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.mousewheel.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.placeholder.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.pwdmeter.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.ui.datetimepicker.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.ui.spinner.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/jquery.validate.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/uploader/plupload.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/uploader/plupload.html5.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/uploader/plupload.html4.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/uploader/plupload.flash.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/forms/uploader/jquery.plupload.queue/jquery.plupload.queue.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/charts/jquery.flot.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/charts/jquery.flot.orderBars.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/charts/jquery.flot.pie.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/charts/jquery.flot.resize.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/explorer/jquery.elfinder.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/fullstats/jquery.css-transform.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/fullstats/jquery.animate-css-rotate-scale.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/fullstats/jquery.sparkline.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/syntaxhighlighter/shCore.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/syntaxhighlighter/shAutoloader.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/dynamic-tables/jquery.dataTables.js"></script>
<script	src="${contextPath}/styles/admin/js/mylibs/dynamic-tables/jquery.dataTables.tableTools.zeroClipboard.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/dynamic-tables/jquery.dataTables.tableTools.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/gallery/jquery.fancybox.js"></script>
<script src="${contextPath}/styles/admin/js/mylibs/tooltips/jquery.tipsy.js"></script>
<script src="${contextPath}/styles/admin/js/mango.js"></script>
<script src="${contextPath}/styles/admin/js/plugins.js"></script>
<script src="${contextPath}/styles/admin/js/script.js"></script>
<script src="${contextPath}/styles/admin/js/app.js"></script>