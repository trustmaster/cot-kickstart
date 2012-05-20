<!-- BEGIN: MAIN -->

<!-- BEGIN: STANDALONE_HEADER -->
<!DOCTYPE html>
<html>
<head>
<title>{PHP.L.pfs_title} - {PHP.cfg.maintitle}</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<base href="{PHP.cfg.mainurl}/" />
{PFS_HEAD}
<script type="text/javascript">
//<![CDATA[
{PFS_HEADER_JAVASCRIPT}
//]]>
</script>
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="{PHP.cfg.themes_dir}/kickstart/css/kickstart.css" media="all" />
<link rel="stylesheet" type="text/css" href="{PHP.cfg.themes_dir}/kickstart/style.css" media="all" />
</head>
<body>
<div class="wrap popup clearfix">
	<div id="main" class="body clearfix">
<!-- END: STANDALONE_HEADER -->

		<div class="col_12">
			{PFS_TITLE}

			<p class="small">{PFS_SUBTITLE}</p>
			{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<form id="editfolder" action="{PFS_ACTION}" method="post">
				<div class="col_4"><label>{PHP.L.Folder}:</label></div>			<div class="col_8">{PFF_TITLE}</div>
				<div class="col_4"><label>{PHP.L.Description}:</label></div>	<div class="col_8">{PFF_DESC}</div>
				<div class="col_4">{PHP.L.Date}:</div>							<div class="col_8">{PFF_DATE}</div>
				<div class="col_4">{PHP.L.Updated}:</div>						<div class="col_8">{PFF_UPDATED}</div>
				<div class="col_4"><label>{PHP.L.pfs_ispublic}:</label></div>	<div class="col_8">{PFF_ISPUBLIC}</div>
				<div class="col_4"><label>{PHP.L.pfs_isgallery}:</label></div>	<div class="col_8">{PFF_ISGALLERY}</div>
				<div class="col_12">
					<button type="submit">{PHP.L.Update}</button>
				</div>
			</form>
		</div>
<!-- BEGIN: STANDALONE_FOOTER -->
	</body>
</html>
<!-- END: STANDALONE_FOOTER -->

<!-- END: MAIN -->
