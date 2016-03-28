<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="shortcut icon" href="favicon.gif">
<!---CSS Files-->
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/login.css">
<!---jQuery Files-->
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/jquery.spinner.js" type="text/javascript"></script>
<script type="text/javascript" src="js/forms/jquery.validate.min.js"></script>
<link rel="shortcut icon" href="favicon.gif">
<!---CSS Files-->
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/iphone-check.css">
<link href="js/sh/shThemeDefault.css" rel="stylesheet" type="text/css" />
<link href="js/sh/shCore.css" rel="stylesheet" type="text/css" />
<!---jQuery Files-->
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.8.17.min.js" type="text/javascript"></script>
<script src="js/styler.js" type="text/javascript"></script>
<script src="js/jquery.tipTip.js" type="text/javascript"></script>
<script src="js/colorpicker.js" type="text/javascript"></script>
<script src="js/sticky.full.js" type="text/javascript"></script>
<script src="js/global.js" type="text/javascript"></script>
<script src="js/forms/fileinput.js" type="text/javascript"></script>
<script src="js/forms/iphone-check.js" type="text/javascript"></script>
<script src="js/forms/jquery.validate.min.js" type="text/javascript"></script>
<script src="js/sh/shCore.js" type="text/javascript"></script>
<script src="js/sh/shBrushXml.js" type="text/javascript"></script>
<!---Fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'
	rel='stylesheet' type='text/css'>
<!---Fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
	rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
<!---FadeIn Effect, Validation and Spinner-->
<script type="text/javascript">
	$(document).ready(function() {
		$('div.wrapper').hide();
		$('div.wrapper').fadeIn(1200);
		$('#lg-form').validate();
		$('.submit').click(function() {
			var $this = $(this);
			$this.spinner();
			setTimeout(function() {
				$this.spinner('remove');
			}, 1000);
		});
	});
</script>
<style type="text/css">
#promt:VISITED{
	color: black;
}
#promt:HOVER{
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="logo">
			<h1>登录</h1>
		</div>
		<div style="margin:150px auto; width:100%;  text-align: center;"><a href="index.html" id="promt" style="color=black;">登录成功，点击跳转至推荐</a></div>
		<div class="clear"></div>
	</div>
	<!--      </div> -->
	<script type="text/javascript">
		/* SCRIPTS */

		$(function() {

			$('#tip-left').tipTip({
				attribute : "value",
				delay : "100",
				defaultPosition : "left"
			});
			$('#tip-top').tipTip({
				attribute : "value",
				delay : "100",
				defaultPosition : "top"
			});
			$('#tip-right').tipTip({
				attribute : "value",
				delay : "100",
				defaultPosition : "right"
			});
			$('#tip-bottom').tipTip({
				attribute : "value",
				delay : "100",
				defaultPosition : "bottom"
			});

			$('#slider').slider({
				range : "min",
				value : 50
			});

			$('#range-slider').slider({
				range : true,
				min : 0,
				max : 400,
				values : [ 100, 300 ]
			});

			$("#eq > span").each(function() {
				var value = parseInt($(this).text(), 10);
				$(this).empty().slider({
					value : value,
					range : "min",
					animate : true,
					orientation : "vertical"
				});
			});

			$("#accordion").accordion({
				fillSpace : true
			});

			$("#tabs").tabs();

			$("#progressbar").progressbar({
				value : 1
			});
			$("#progressbar .ui-progressbar-value").addClass("ui-corner-right");

			new_width = "100%";
			loop_width = "1%";
			$("#progressbar .ui-progressbar-value").animate({
				width : new_width
			}, 60000);

			$("#dialog").dialog({
				autoOpen : false,
				resizable : false,
				buttons : {
					Close : function() {
						$(this).dialog("close");
					}
				}
			});

			$("#open-dialog").click(function() {
				$("#dialog").dialog("open");
				return false;
			});

			$("#modal-dialog").dialog({
				autoOpen : false,
				resizable : false,
				modal : true,
				buttons : {
					Close : function() {
						$(this).dialog("close");
					}
				}
			});

			$("#open-modal-dialog").click(function() {
				$("#modal-dialog").dialog("open");
				return false;
			});

			$('#open-notif').click(function() {
				$.sticky('I am a simple notification.')
			});

			$('#open-comp-notif')
					.click(
							function() {
								$
										.sticky('<b>I am a complex notification.</b><br><br><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>')
							});

			SyntaxHighlighter.all()

			$('#iphone-check').iphoneStyle();

			$("#datepicker").datepicker();

			$("#colorpicker").ColorPicker();

		});
	</script>
</body>
</html>