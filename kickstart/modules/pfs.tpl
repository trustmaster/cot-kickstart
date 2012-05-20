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

			<!-- IF {PFS_SUBTITLE} --><p class="small">{PFS_SUBTITLE}</p><!-- ENDIF -->
			<!-- BEGIN: PFS_ERRORS -->
			<ul>
				<!-- BEGIN: PFS_ERRORS_ROW -->
				<li>{PFS_ERRORS_ROW_MSG}</li>
				<!-- END: PFS_ERRORS_ROW -->
			</ul>
<!-- END: PFS_ERRORS -->
			<h4>{PFF_FOLDERCOUNT} {PHP.L.Folders} / {PFF_FILESCOUNT} {PHP.L.Files} ({PHP.L.pfs_onpage}: {PFF_ONPAGE_FOLDERS} {PHP.L.Folders} / {PFF_ONPAGE_FILES} {PHP.L.Files})</h4>
			<table>
				<thead>
					<tr>
						<th>&nbsp;</th>
						<th>{PHP.L.Folder} / {PHP.L.Gallery}</th>
						<th>{PHP.L.Public}</th>
						<th>{PHP.L.Files}</th>
						<th>{PHP.L.Size}</th>
						<th>{PHP.L.Updated}</th>
						<th>{PHP.L.Action}</th>
					</tr>
				</thead>
				<tbody>
					<!-- BEGIN: PFF_ROW -->
					<tr>
						<td class="centerall"><a href="{PFF_ROW_URL}">{PFF_ROW_ICON}</a></td>
						<td>
							<p class="strong"><a href="{PFF_ROW_URL}">{PFF_ROW_TITLE}</a></p>
							<p class="small">{PFF_ROW_DESC}</p>
						</td>
						<td class="centerall">{PFF_ROW_ISPUBLIC}</td>
						<td class="centerall">{PFF_ROW_FCOUNT}</td>
						<td class="centerall">{PFF_ROW_FSIZE}</td>
						<td class="centerall">{PFF_ROW_UPDATED}</td>
						<td class="centerall">
							<a href="{PFF_ROW_EDIT_URL}">{PHP.L.Edit}</a>
							<a href="{PFF_ROW_DELETE_URL}" class="confirmLink">x</a>
						</td>
					</tr>
					<!-- END: PFF_ROW -->
				</tbody>
			</table>
			<p class="pagination">{PFF_PAGING_PREV}{PFF_PAGING_CURRENT}{PFF_PAGING_NEXT}</p>

			<h4>{PFS_FILESCOUNT} {PHP.L.Files} {PFS_INTHISFOLDER} ({PHP.L.pfs_onpage}: {PFS_ONPAGE_FILES} {PHP.L.Files}) {PFS_SHOWTHUMBS}</h4>
			<table>
				<thead>
					<tr>
						<th>&nbsp;</th>
						<th>{PHP.L.File}</th>
						<th>{PHP.L.Hits}</th>
						<th>{PHP.L.Size}</th>
						<th>{PHP.L.Date}</th>
						<th>{PHP.L.Action}</th>
					</tr>
				</thead>
				<tbody>
					<!-- BEGIN: PFS_ROW -->
					<tr>
						<td class="centerall">{PFS_ROW_ICON}</td>
						<td>
							<p class="strong"><a href={PFS_ROW_FILE_URL}>{PFS_ROW_FILE}</a></p>
							<p class="small">{PFS_ROW_TYPE} / {PFS_ROW_DESC}</p>
						</td>
						<td class="centerall">{PFS_ROW_COUNT}</td>
						<td class="centerall">{PFS_ROW_SIZE}</td>
						<td class="centerall">{PFS_ROW_DATE}</td>
						<td class="centerall">
							<input type="checkbox" name="folderid[{PFS_ROW_ID}]" />
							<a href="{PFS_ROW_DELETE_URL}" class="confirmLink">{PHP.L.Delete}</a>
							<a href="{PFS_ROW_EDIT_URL}">{PHP.L.Edit}</a>
							<br />{PFS_ROW_INSERT}
						</td>
					</tr>
					<!-- END: PFS_ROW -->
				</tbody>
			</table>
			<p class="pagination">{PFS_PAGING_PREV}{PFS_PAGING_CURRENT}{PFS_PAGING_NEXT}</p>

			<div style="padding:10px 20px; border:2px dashed red">
				<p>{PHP.L.pfs_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL} ({PFS_PERCENTAGE}%)</p>
				<div class="bar_back">
					<div class="bar_front" style="width:{PFS_PERCENTAGE}%;"></div>
				</div>
				<p>{PHP.L.pfs_maxsize}: {PFS_MAXFILESIZE}</p>
			</div>

			<h4>{PHP.L.pfs_newfile}</h4>
			<!-- BEGIN: PFS_UPLOAD_FORM -->
			<form enctype="multipart/form-data" action="{PFS_UPLOAD_FORM_ACTION}" method="post">
				<input type="hidden" name="MAX_FILE_SIZE" value="{PFS_UPLOAD_FORM_MAX_SIZE}" />
				<div class="col_4"><label>{PHP.L.Folder}:</label></div>	<div class="col_8">{PFS_UPLOAD_FORM_FOLDERS}</div>
				<table>
					<thead>
						<tr>
							<th>&nbsp;</th>
							<th>{PHP.L.Description}</th>
							<th>{PHP.L.File}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN: PFS_UPLOAD_FORM_ROW -->
						<tr>
							<td style="text-align:center">#{PFS_UPLOAD_FORM_ROW_NUM}</td>
							<td><input type="text" class="text" name="ndesc[{PFS_UPLOAD_FORM_ROW_ID}]" value="" size="40" maxlength="255" /></td>
							<td><input name="userfile[{PFS_UPLOAD_FORM_ROW_ID}]" type="file" class="file" size="24" /></td>
						</tr>
						<!-- END: PFS_UPLOAD_FORM_ROW -->
					</tbody>
					<tfoot>
						<tr>
							<td colspan="3" class="valid">
								<button type="submit">{PHP.L.Upload}</button>
							</td>
						</tr>
					</tfoot>
				</table>
			</form>
			<!-- END: PFS_UPLOAD_FORM -->

			<!-- BEGIN: PFS_NEWFOLDER_FORM -->
			<h4>{PHP.L.pfs_newfolder}</h4>
			<form id="newfolder" action="{NEWFOLDER_FORM_ACTION}" method="post">
				<label class="col_4">{PHP.L.Title}:</label>			<input type="text" class="text col_8" name="ntitle" value="" size="32" maxlength="64" />
				<label class="col_4">{PHP.L.Description}:</label>	<input type="text" class="text col_8" name="ndesc" value="" size="32" maxlength="255" />
				<div class="col_4"><label>{PHP.L.pfs_ispublic}</label></div>	<div class="col_8"><input type="radio" class="radio" name="nispublic" value="1" />{PHP.L.Yes} 
							<input type="radio" class="radio" name="nispublic" value="0" checked="checked" />{PHP.L.No}</div>
				<div class="col_4"><label>{PHP.L.pfs_isgallery}</label></div>	<div class="col_8"><input type="radio" class="radio" name="nisgallery" value="1" />{PHP.L.Yes} 
							<input type="radio" class="radio" name="nisgallery" value="0" checked="checked" />{PHP.L.No}</div>
				<div class="col_12 center clearfix">
					<input type="submit" class="submit" value="{PHP.L.Create}" />
				</div>
			</form>
		<!-- END: PFS_NEWFOLDER_FORM -->

			<h4>{PHP.L.pfs_extallowed}</h4>
<!-- BEGIN: ALLOWED_ROW -->
			<div class="col_4">
				<span>{ALLOWED_ROW_ICON}</span> {ALLOWED_ROW_EXT} {ALLOWED_ROW_DESC}
			</div>
<!-- END: ALLOWED_ROW -->

	</div>
<!-- BEGIN: STANDALONE_FOOTER -->
	<div class="col_12">
		{PHP.R.pfs_icon_pastethumb} {PHP.L.pfs_pastethumb} &nbsp; 
		{PHP.R.pfs_icon_pasteimage} {PHP.L.pfs_pasteimage} &nbsp; 
		{PHP.R.pfs_icon_pastefile} {PHP.L.pfs_pastefile}
	</div>

</div>
</div>
</body>
</html>
<!-- END: STANDALONE_FOOTER -->

<!-- END: MAIN -->
