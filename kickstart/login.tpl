<!-- BEGIN: MAIN -->

<div class="col_12">
	<h2>{USERS_AUTH_TITLE}</h2>
	<form name="login" action="{USERS_AUTH_SEND}" method="post">
		<div class="col_12">
			<label for="rusername" class="col_6">{PHP.L.users_nameormail}</label> {USERS_AUTH_USER}
			<label for="rpassword" class="col_6">{PHP.L.Password}</label> {USERS_AUTH_PASSWORD}
			<label for="rremember" class="col_6">{PHP.L.users_rememberme}</label> {USERS_AUTH_REMEMBER}
		</div>
		<div class="col_6 right">
			<button class="green" type="submit" name="rlogin" value="0">{PHP.L.Login}</button>
		</div>
		<div class="col_6 left">
			<a class="button" href="{PHP|cot_url('users','m=passrecover')}">{PHP.L.users_lostpass}</a>
		</div>
	</form>
</div>

<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
<div class="col_12 clearfix">
	<h2>{PHP.L.users_maintenance1}</h4>
	<p class="notice error">
		{PHP.L.users_maintenance2}
	</p>
</div>
<!-- END: USERS_AUTH_MAINTENANCE -->

<!-- END: MAIN -->