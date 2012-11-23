<!-- BEGIN: MAIN -->

<div class="col_8">
	<h2>{LIST_CATTITLE}</h2>

	{LIST_CATPATH}

	<!-- BEGIN: LIST_ROWCAT -->
	<div class="col_6">
		<h4><a href="{LIST_ROWCAT_URL}" title="{LIST_ROWCAT_TITLE}">{LIST_ROWCAT_TITLE}</a> ({LIST_ROWCAT_COUNT})</h4>
		<!-- IF {LIST_ROWCAT_DESC} -->
		<p class="small">{LIST_ROWCAT_DESC}</p>
		<!-- ENDIF -->
	</div>
	<!-- END: LIST_ROWCAT -->

	<!-- BEGIN: LIST_ROW -->
	<h3>{LIST_ROW_SHORTTITLE}</h3>
	<!-- IF {LIST_ROW_DESC} -->
	<p class="small">
		{LIST_ROW_DESC}
	</p>
	<!-- ENDIF -->

	<div class="pagetext">
		{LIST_ROW_TEXT_CUT}
	</div>
	
	<p>
		<a href="{LIST_ROW_URL}" title="{PHP.L.kick_fullstory}">{PHP.L.ReadMore}</a>
	</p>
	<hr />
	<!-- END: LIST_ROW -->
	<!-- IF {LIST_TOP_PAGINATION} -->
	<p class="pagination clear">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</p>
	<!-- ENDIF -->
	<div class="col_12 right">
		<ul class="button-bar">
			<li>{LIST_SUBMITNEWPAGE}</li>
		</ul>
	</div>
</div>

<div class="col_4">
	<h2 class="tags">{PHP.L.Tags}</h2>
	{LIST_TAG_CLOUD}
</div>

<!-- END: MAIN -->