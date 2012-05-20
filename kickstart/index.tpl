<!-- BEGIN: MAIN -->

<div class="col_8">
	<!-- IF {INDEX_NEWS} -->
	<!--<h2>{PHP.L.kick_blog}</h2>-->
	{INDEX_NEWS}
	<!-- ENDIF -->
</div>

<div class="col_4 sidebar">
	<!-- IF {INDEX_PAGEARCHIVE} -->
	<h3>{PHP.L.kick_archive}</h3>
	{INDEX_PAGEARCHIVE}
	<hr />
	<!-- ENDIF -->
	<!-- IF {INDEX_POLLS} -->
	<h3>{PHP.L.Polls}</h3>
	{INDEX_POLLS}
	<hr />
	<!-- ENDIF -->
	<!-- IF {INDEX_TAG_CLOUD} -->
	<h3>{PHP.L.Tags}</h3>
	{INDEX_TAG_CLOUD}
	<hr />
	<!-- ENDIF -->
</div>

<!-- END: MAIN -->