<!-- BEGIN: MAIN -->

<div class="col_8">
	<h2>{PHP.L.tags_Search_tags}</h2>
	<form action="{TAGS_ACTION}" method="post">
		<input id="tags-sq" type="text" name="t" value="{TAGS_QUERY}" />
		<input type="submit" value="&raquo;&raquo;" />
		<select name="order">
			<option value="">{PHP.L.tags_Orderby}</option>
			<option value="">--</option>
			{TAGS_ORDER}
		</select>
	</form>
	<hr />
	<!-- BEGIN: TAGS_CLOUD -->
	<h3>{PHP.L.tags_All}</h3>
	{TAGS_CLOUD_BODY}
	<!-- END: TAGS_CLOUD -->
	<!-- BEGIN: TAGS_RESULT -->
	<h3>{TAGS_RESULT_TITLE}</h3>
	<ol>
		<!-- BEGIN: TAGS_RESULT_ROW -->
		<li>
			<h5><a href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a></h5>
			<div class="compact small">
				{TAGS_RESULT_ROW_PATH}
				<span class="right">{PHP.L.Tags}: {TAGS_RESULT_ROW_TAGS}</span>
			</div>
			<!-- IF {TAGS_RESULT_ROW_TEXT_CUT} -->
			<p>{TAGS_RESULT_ROW_TEXT_CUT}</p>
			<!-- ENDIF -->
		</li>
		<!-- END: TAGS_RESULT_ROW -->
	</ol>
	<!-- BEGIN: TAGS_RESULT_NONE -->
	<div class="notice warning">
		{PHP.L.Noitemsfound}
	</div>
		<!-- END: TAGS_RESULT_NONE -->
	<!-- END: TAGS_RESULT -->
	<!-- IF {TAGS_PAGNAV} --><p class="pagination">{TAGS_PAGEPREV}{TAGS_PAGNAV}{TAGS_PAGENEXT}</p><!-- ENDIF -->
</div>

<div class="col_4">
	<h3>{PHP.L.Tags}</h3>
	<div class="notice">
		{TAGS_HINT}
	</div>
</div>

<!-- END: MAIN -->