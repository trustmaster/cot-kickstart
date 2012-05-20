<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html>
<head>
{POPUP_METAS}
<base href="{PHP.cfg.mainurl}/" />
{POPUP_JAVASCRIPT}
<script type="text/javascript">
//<![CDATA[
function add(text) {
	insertText(document, "{POPUP_C2}", text);
}
//]]>
</script>
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="{PHP.cfg.themes_dir}/kickstart/css/kickstart.css" media="all" />
<link rel="stylesheet" type="text/css" href="{PHP.cfg.themes_dir}/kickstart/style.css" media="all" />
</head>
<body>
	<div class="wrap popup clearfix">
		<div id="main" class="body clearfix">
			{POPUP_BODY}
		</div>
	</div>
</body>
</html>
<!-- END: MAIN -->