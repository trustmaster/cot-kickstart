<!-- BEGIN: MAIN -->
<div class="col_12">
	<!-- BEGIN: COMMENTS_TITLE -->
	<h2><a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a></h2>
	<!-- END: COMMENTS_TITLE -->

	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

	<!-- BEGIN: COMMENTS_FORM_EDIT -->

	<form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
		<fieldset>
			<div class="col_3">{COMMENTS_POSTER_TITLE}</div>	<div class="col_9">{COMMENTS_POSTER}</div>
			<div class="col_3">{COMMENTS_IP_TITLE}</div>		<div class="col_9">{COMMENTS_IP}</div>
			<div class="col_3">{COMMENTS_DATE_TITLE}</div>		<div class="col_9">{COMMENTS_DATE}</div>
		</fieldset>

		<fieldset>
			<legend>{PHP.L.Text}</legend>
			<div>{COMMENTS_FORM_TEXT}</div>
			<ul class="button-bar">
				<!-- IF {COMMENTS_FORM_PFS} --><li>{COMMENTS_FORM_PFS}</li><!-- ENDIF -->
				<!-- IF {COMMENTS_FORM_SFS} --><li>{COMMENTS_FORM_SFS}</li><!-- ENDIF -->
			</ul>
		</fieldset>

		<div class="col_12 center">
			<button>{COMMENTS_FORM_UPDATE_BUTTON}</button>
		</div>
	</form>
	<!-- END: COMMENTS_FORM_EDIT -->
</div>
<!-- END: MAIN -->

<!-- BEGIN: COMMENTS -->

<a name="comments"></a>

<!-- BEGIN: COMMENTS_ROW -->
<div class="col_2">
	{COMMENTS_ROW_AUTHOR_AVATAR}
</div>
<div class="col_10">
	<h5><a href="{COMMENTS_ROW_URL}" id="c{COMMENTS_ROW_ID}">#{COMMENTS_ROW_ORDER}</a> {COMMENTS_ROW_DATE}</h5>
	<p>{COMMENTS_ROW_TEXT}</p>
	{COMMENTS_ROW_ADMIN}{COMMENTS_ROW_EDIT}
</div>
<hr />
<!-- END: COMMENTS_ROW -->

<!-- BEGIN: PAGNAVIGATOR -->
	<!-- IF {COMMENTS_PAGES_PAGNAV} -->
	<p class="pagination">{COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</p>
	<!-- ENDIF -->
<!-- END: PAGNAVIGATOR -->

<!-- BEGIN: COMMENTS_NEWCOMMENT -->
<h4>{PHP.L.Newcomment}</h4>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment">
	<!-- BEGIN: GUEST -->
	<label class="col_5">{PHP.L.Name}:</label> {COMMENTS_FORM_AUTHOR}
	<!-- END: GUEST -->
	<div>
		{COMMENTS_FORM_TEXT}
		<ul class="button-bar">
			<!-- IF {COMMENTS_FORM_PFS} --><li>{COMMENTS_FORM_PFS}</li><!-- ENDIF -->
			<!-- IF {COMMENTS_FORM_SFS} --><li>{COMMENTS_FORM_SFS}</li><!-- ENDIF -->
		</ul>
	</div>

	<!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFYIMG} -->
	<label class="col_5">{COMMENTS_FORM_VERIFYIMG}:</label> {COMMENTS_FORM_VERIFY}</div>
	<!-- ENDIF -->
	<div class="center">
		<button type="submit">{PHP.L.Submit}</button>
	</div>
</form>
<div class="notice warning">{COMMENTS_FORM_HINT}</div>
<!-- END: COMMENTS_NEWCOMMENT -->

<!-- BEGIN: COMMENTS_EMPTY -->
<div class="notice warning">{COMMENTS_EMPTYTEXT}</div>
<!-- END: COMMENTS_EMPTY -->

<!-- BEGIN: COMMENTS_CLOSED -->
<div class="notice error">{COMMENTS_CLOSED}</div>
<!-- END: COMMENTS_CLOSED -->

<!-- END: COMMENTS -->