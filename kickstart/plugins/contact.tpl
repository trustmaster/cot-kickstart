<!-- BEGIN: MAIN -->

<div class="col_12">
	<h2>{PHP.L.contact_title}</h2>
	<!-- IF {PHP.cfg.plugin.contact.about} -->
	<p>{PHP.cfg.plugin.contact.about}</p>
	<!-- ENDIF -->
	<!-- IF {PHP.cfg.plugin.contact.map} -->
	<p>{PHP.cfg.plugin.contact.map}</p>
	<!-- ENDIF -->
	
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- BEGIN: FORM -->
	<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
		<label class="col_6">{PHP.L.Username}:</label> {CONTACT_FORM_AUTHOR}
		<label class="col_6">{PHP.L.Email}:</label> {CONTACT_FORM_EMAIL}
		<label class="col_6">{PHP.L.Subject}:</label> {CONTACT_FORM_SUBJECT}
		<label class="col_12">{PHP.L.Message}:</label>
		<div class="col_12">{CONTACT_FORM_TEXT}</div>
<!-- BEGIN: EXTRAFLD -->
		<label class="col_6">{CONTACT_FORM_EXTRAFLD_TITLE}:</label> {CONTACT_FORM_EXTRAFLD}
<!-- END: EXTRAFLD -->
<!-- BEGIN: CAPTCHA -->
		<label class="col_6">{CONTACT_FORM_VERIFY_IMG}</label> {CONTACT_FORM_VERIFY}
<!-- END: CAPTCHA -->
		<div class="col_12 center">
			<button type="submit">{PHP.L.Submit}</button>
		</div>
	</form>
<!-- END: FORM -->
</div>

<!-- END: MAIN -->