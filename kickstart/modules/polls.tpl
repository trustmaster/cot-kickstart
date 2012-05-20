<!-- BEGIN: POLL_VIEW -->
	<div id="poll_{POLL_ID}">
		<form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax">
			<input type="hidden" name="poll_id" value="{POLL_ID}" />
			<table>
				<!-- BEGIN: POLLTABLE -->
				<tr>
					<td>{POLL_INPUT} {POLL_OPTIONS}</td>
					<td class="center">
						<div class="bar_back">
							<div class="bar_front" style="width:{POLL_PER}%;"></div>
						</div>
					</td>
					<td class="center">{POLL_PER}%</td>
					<td class="center">{POLL_COUNT}</td>
				</tr>
				<!-- END: POLLTABLE -->
				<tr>
					<td class="valid" colspan="4">
						<button type="submit" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				$(function(){
					$(".bar_front").each(function(){
						var percentage = $(this).width();
						if (percentage!=""){$(this).width(0).animate({width: percentage}, "slow");}
					});
				});
			</script>
			<p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
		</form>
	</div>
<!-- END: POLL_VIEW -->

<!-- BEGIN: POLL_VIEW_VOTED -->
	<table>
		<!-- BEGIN: POLLTABLE -->
		<tr>
			<td>{POLL_OPTIONS}</td>
			<td class="center">
				<div class="bar_back">
					<div class="bar_front" style="width:{POLL_PER}%;"></div>
				</div>
			</td>
			<td class="center">{POLL_PER}%</td>
			<td class="center">{POLL_COUNT}</td>
		</tr>
		<!-- END: POLLTABLE -->
		<tr>
			<td class="strong valid" colspan="4">{PHP.L.polls_alreadyvoted}</td>
		</tr>
	</table>
	<script type="text/javascript">
		$(function(){
			$(".bar_front").each(function(){
				var percentage = $(this).width();
				if (percentage!=""){$(this).width(0).animate({width: percentage}, "slow");}
			});
		});
	</script>
	<p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
<!-- END: POLL_VIEW_VOTED -->

<!-- BEGIN: POLL_VIEW_LOCKED -->
	<table>
		<!-- BEGIN: POLLTABLE -->
		<tr>
			<td>{POLL_OPTIONS}</td>
			<td class="center">
				<div class="bar_back">
					<div class="bar_front" style="width:{POLL_PER}%;"></div>
				</div>
			</td>
			<td class="center">{POLL_PER}%</td>
			<td class="center">{POLL_COUNT}</td>
		</tr>
		<!-- END: POLLTABLE -->
		<tr>
			<td class="strong valid" colspan="4">{PHP.L.polls_locked}</td>
		</tr>
	</table>
	<p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
<!-- END: POLL_VIEW_LOCKED -->

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

<!-- BEGIN: MAIN -->

	<!-- BEGIN: POLLS_VIEW -->
	<div class="col_12">
		<h2>{POLLS_TITLE}</h2>
		{POLLS_FORM}
		<h3>{PHP.L.comments_comments}</h3>
		{POLLS_COMMENTS_DISPLAY}
	</div>
	<!-- END: POLLS_VIEW -->

	<!-- BEGIN: POLLS_VIEWALL -->
	<div class="col_12">
		<h2>{PHP.L.polls_viewarchives}</h2>
		<table>
			<!-- BEGIN: POLL_ROW -->
			<tr>
				<td>{POLL_DATE}</td>
				<td><a href="{POLL_HREF}">{POLL_TEXT}</a></td>
				<td>{POLLS_COMMENTS}</td>
			</tr>
			<!-- END: POLL_ROW -->
			<!-- BEGIN: POLL_NONE -->
			<tr>
				<td class="center">{PHP.L.None}</td>
			</tr>
			<!-- END: POLL_NONE -->
		</table>
	</div>
	<!-- END: POLLS_VIEWALL -->

	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<!-- END: MAIN -->