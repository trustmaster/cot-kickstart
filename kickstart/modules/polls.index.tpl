<!-- BEGIN: POLL_VIEW -->
<div id="poll_{POLL_ID}">
	<form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax&poll_theme=index">
		<input type="hidden" name="poll_id" value="{POLL_ID}" />
		<ul class="alt">
			<!-- BEGIN: POLLTABLE -->
			<li>{POLL_INPUT} {POLL_OPTIONS}</li>
			<!-- END: POLLTABLE -->
		</ul>
		<button type="submit" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
	</form>
</div>
<!-- END: POLL_VIEW -->

<!-- BEGIN: POLL_VIEW_VOTED -->
<table>
	<!-- BEGIN: POLLTABLE -->
	<tr>
		<td>{POLL_OPTIONS}</td>
		<td class="right">{POLL_PER}% ({POLL_COUNT})</td>
	</tr>
	<tr>
		<td colspan="2">
			<div class="bar_back">
				<div class="bar_front" style="width:{POLL_PER}%;"></div>
			</div>
		</td>
	</tr>
	<!-- END: POLLTABLE -->
</table>
<script type="text/javascript">
	$(function(){
		$(".bar_front").each(function(){
			var percentage = $(this).width();
			if (percentage!=""){$(this).width(0).animate({width: percentage}, "slow");}
		});
	});
</script>
<p class="small">{PHP.L.Votes}: {POLL_VOTERS}</p>
<!-- END: POLL_VIEW_VOTED -->

<!-- BEGIN: POLL_VIEW_DISABLED -->
<table>
	<!-- BEGIN: POLLTABLE -->
	<tr>
		<td>{POLL_OPTIONS}</td>
	</tr>
	<!-- END: POLLTABLE -->
	<tr>
		<td>{PHP.L.rat_registeredonly}</td>
	</tr>
</table>
<!-- END: POLL_VIEW_DISABLED -->

<!-- BEGIN: POLL_VIEW_LOCKED -->
<table>
	<!-- BEGIN: POLLTABLE -->
	<tr>
		<td>{POLL_OPTIONS}</td>
		<td class="right">{POLL_PER}% ({POLL_COUNT})</td>
	</tr>
	<tr>
		<td colspan="2" class="right">
			<div class="bar_back">
				<div class="bar_front" style="width:{POLL_PER}%;"></div>
			</div>
		</td>
	</tr>
	<!-- END: POLLTABLE -->
</table>
<p>{PHP.L.Date} {POLL_SINCE_SHORT} {PHP.L.Votes} {POLL_VOTERS} </p>
<!-- END: POLL_VIEW_LOCKED -->

<!-- BEGIN: INDEXPOLLS -->
<!-- BEGIN: POLL -->
<h5><a class="strong" href="{IPOLLS_URL}">{IPOLLS_TITLE}</a></h5>
{IPOLLS_FORM}
<!-- END: POLL -->
<!-- BEGIN: ERROR -->
<p class="small strong">{IPOLLS_ERROR}</p>
<!-- END: ERROR -->
<p class="small"><a href="{IPOLLS_ALL}">{PHP.L.polls_viewarchives}</a></p>
<!-- END: INDEXPOLLS -->