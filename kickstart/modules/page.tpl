<!-- BEGIN: MAIN -->

<div class="col_12">
	<h2>{PAGE_SHORTTITLE}</h2>

	{PAGE_TITLE}

	<p class="small right">{PAGE_DESC}</p>

	<div class="pagetext">
		{PAGE_TEXT}
	</div>

	<!-- BEGIN: PAGE_MULTI -->
	<div class="block">
		<h4>{PHP.L.Summary}:</h4>
		{PAGE_MULTI_TABTITLES}
		<p class="paging">{PAGE_MULTI_TABNAV}</p>
	</div>
	<!-- END: PAGE_MULTI -->

	<p class="tags">
		<strong>{PHP.L.Tags}:</strong>
		<!-- BEGIN: PAGE_TAGS_ROW -->
			<!-- IF {PHP.tag_i} > 0 -->,<!-- ENDIF -->
			<a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
		<!-- END: PAGE_TAGS_ROW -->
		<!-- BEGIN: PAGE_NO_TAGS -->
			{PAGE_NO_TAGS}
		<!-- END: PAGE_NO_TAGS -->
	</p>

	<!-- BEGIN: PAGE_FILE -->
	<div class="download">
		<!-- BEGIN: MEMBERSONLY -->
		<p>{PAGE_SHORTTITLE}</p>
		<!-- END: MEMBERSONLY -->
		<!-- BEGIN: DOWNLOAD -->
		<p>{PHP.L.Download}: <a class="strong" href="{PAGE_FILE_URL}">{PAGE_SHORTTITLE}</a></p>
		<!-- END: DOWNLOAD -->
		<p>{PHP.L.Filesize}, kB: {PAGE_FILE_SIZE}{PHP.L.kb}</p>
		<p>{PHP.L.Downloaded}: {PAGE_FILE_COUNT}</p>
	</div>
	<!-- END: PAGE_FILE -->
</div>

<!-- BEGIN: PAGE_ADMIN -->
<div class="col_12 right">
	<h5>{PHP.L.Administration}</h5>
	<ul class="button-bar">
		<li><a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a></li>
		<li>{PAGE_ADMIN_EDIT}</li>
		<li>{PAGE_ADMIN_UNVALIDATE}</li>	
	</ul>
</div>
<!-- END: PAGE_ADMIN -->

<!-- IF {PAGE_COMMENTS_DISPLAY} -->
<div class="col_12">
	<h3>{PHP.L.comments_comments}</h3>
	{PAGE_COMMENTS_DISPLAY}
</div>
<!-- ENDIF -->

<!-- END: MAIN -->