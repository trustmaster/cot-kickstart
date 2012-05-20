<!-- BEGIN: MAIN -->

<div class="col_12">
	<h2>{PAGEADD_PAGETITLE}</h2>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<fieldset>
			<legend>{PHP.L.Main}</legend>
			<label class="col_4">{PHP.L.Title}:</label>					{PAGEADD_FORM_TITLE|kick_class($this,'col_12')}
			<label class="col_4">{PHP.L.Description}:</label>			{PAGEADD_FORM_DESC|kick_class($this,'col_12')}
			<label class="col_4">{PHP.L.Alias}:</label>					{PAGEADD_FORM_ALIAS|kick_class($this,'col_8')}
			<div class="col_4"><label>{PHP.L.Category}:</label></div>	<div class="col_8">{PAGEADD_FORM_CAT}</div>
			<div class="col_4"><label>{PHP.L.Author}:</label></div>		<div class="col_8">{PAGEADD_FORM_AUTHOR}</div>
		</fieldset>

		<fieldset>
			<legend>{PHP.L.Text}</legend>
			{PAGEADD_FORM_TEXT}
			<ul class="button-bar">
				<!-- IF {PAGEADD_FORM_PFS} --><li>{PAGEADD_FORM_PFS}</li><!-- ENDIF -->
				<!-- IF {PAGEADD_FORM_SFS} --><li>{PAGEADD_FORM_SFS}</li><!-- ENDIF -->
			</ul>
		</fieldset>
		
		<fieldset>
			<legend>{PHP.L.Options}</legend>
			<div class="col_4"><label>{PHP.L.Keywords}:</label></div>	<div class="col_8">{PAGEADD_FORM_KEYWORDS|kick_class($this,'col_12')}</div>
			<div class="col_4"><label>{PHP.L.Begin}:</label></div>		<div class="col_8">{PAGEADD_FORM_BEGIN}</div>
			<div class="col_4"><label>{PHP.L.Expire}:</label></div>		<div class="col_8">{PAGEADD_FORM_EXPIRE}</div>
			<div class="col_4"><label>{PHP.L.Parser}:</label></div>		<div class="col_8">{PAGEADD_FORM_PARSER}</div>	
			<!-- BEGIN: TAGS -->
			<div class="col_4"><label>{PHP.L.Tags}:</label></div>		<div class="col_8">{PAGEADD_FORM_TAGS|kick_class($this,'col_12')}</div>	
			<!-- END: TAGS -->
		</fieldset>

		<fieldset>
			<legend>{PHP.L.File}</legend>
			<div class="col_4"><label title="{PHP.L.page_filehint}">{PHP.L.page_file}:</label></div>	<div class="col_8">{PAGEADD_FORM_FILE}</div>
			<div class="col_4"><label title="{PHP.L.page_urlhint}">{PHP.L.URL}:</label></div>			<div class="col_8">{PAGEADD_FORM_URL|kick_class($this,'col_8')} {PAGEADD_FORM_PFS_URL_USER} &nbsp; {PAGEADD_FORM_PFS_URL_SITE}</div>
			<div class="col_4"><label title="{PHP.L.page_filesizehint}">{PHP.L.Filesize}:</label></div>	<div class="col_8">{PAGEADD_FORM_SIZE|kick_class($this,'col_8')}</div>
		</fieldset>

		<div class="col_12 center">
			<!-- IF {PHP.usr_can_publish} -->
			<button type="submit" name="rpagestate" value="0">{PHP.L.Publish}</button> 
			<!-- ENDIF -->
			<button type="submit" name="rpagestate" value="2" class="submit">{PHP.L.Saveasdraft}</button>
			<button type="submit" name="rpagestate" value="1">{PHP.L.Submitforapproval}</button>
			<div class="notice warning">{PHP.L.page_formhint}</div>
		</div>
	</form>
</div>

<!-- END: MAIN -->