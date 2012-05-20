<!-- BEGIN: MAIN -->

<div class="col_12">
	<h2>{USERS_REGISTER_TITLE}</h2>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form name="login" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" >
		<label class="col_5">{PHP.L.Username}:</label>					{USERS_REGISTER_USER|kick_class($this,'col_7')}
		<label class="col_5" title="">{PHP.L.users_validemail}:</label>	{USERS_REGISTER_EMAIL|kick_class($this,'col_7')}
		<label class="col_5">{PHP.L.Password}:</label>					{USERS_REGISTER_PASSWORD|kick_class($this,'col_7')}
		<label class="col_5">{PHP.L.users_confirmpass}:</label>			{USERS_REGISTER_PASSWORDREPEAT|kick_class($this,'col_7')}
		<label class="col_5">{USERS_REGISTER_VERIFYIMG}</label>			{USERS_REGISTER_VERIFYINPUT|kick_class($this,'col_7')}
		<div class="col_12 center">
			<button>{PHP.L.Submit}</button>
		</div>
	</form>
</div>

<!-- END: MAIN -->