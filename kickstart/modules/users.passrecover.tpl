<!-- BEGIN: MAIN -->

<div class="col_12">
	<h2>{PASSRECOVER_TITLE}</h2>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<!-- IF {PHP.msg} == 'request' --><p>{PHP.L.pasrec_mailsent}</p><!-- ENDIF -->
	<!-- IF {PHP.msg} == 'auth' --><p>{PHP.L.pasrec_mailsent2}</p><!-- ENDIF -->
	<!-- IF !{PHP.msg} -->
	<ol>
		<li>{PHP.L.pasrec_explain1}</li>
		<li>{PHP.L.pasrec_explain2}</li>
		<li>{PHP.L.pasrec_explain3}</li>
	</ol>
	<form name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post">
		<label for="email" class="col_5">{PHP.L.pasrec_youremail}</label>	<input type="text" class="text col_7" name="email" id="email" value="" size="20" maxlength="64" />
		<div class="col_12 center">
			<button>{PHP.L.pasrec_request}</button>
		</div>
	</form>
	<p>{PHP.L.pasrec_explain4}</p>
	<!-- ENDIF -->
</div>

<!-- END: MAIN -->