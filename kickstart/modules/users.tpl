<!-- BEGIN: MAIN -->

<div class="col_12">
	<h2>{USERS_TITLE|strip_tags}</h2>
	<table>
		<thead>
			<tr>
				<th>{USERS_TOP_PM}</th>
				<th>{USERS_TOP_NAME}</th>
				<th>{USERS_TOP_GRPTITLE}</th>
				<th>{USERS_TOP_GRPLEVEL}</th>
				<th>{USERS_TOP_COUNTRY}</th>
				<th>{USERS_TOP_REGDATE}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: USERS_ROW -->
			<tr>
				<td>{USERS_ROW_PM}</td>
				<td>{USERS_ROW_NAME}&nbsp;{USERS_ROW_TAG}</td>
				<td>{USERS_ROW_MAINGRP}</td>
				<td>{USERS_ROW_MAINGRPSTARS}</td>
				<td>{USERS_ROW_COUNTRYFLAG} {USERS_ROW_COUNTRY}</td>
				<td>{USERS_ROW_REGDATE}</td>
			</tr>
			<!-- END: USERS_ROW -->
		</tbody>
	</table>
	<p class="pagination"><span>{PHP.L.users_usersperpage}: {USERS_TOP_MAXPERPAGE}</span><span>{PHP.L.users_usersinthissection}: {USERS_TOP_TOTALUSERS}</span>{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</p>
</div>
<div class="col_12">
	<h3>{PHP.L.Filters}</h3>
	<form action="{USERS_TOP_FILTER_ACTION}" method="post">
		{USERS_TOP_FILTERS_COUNTRY}
		{USERS_TOP_FILTERS_MAINGROUP}
		{USERS_TOP_FILTERS_GROUP}
		{USERS_TOP_FILTERS_SEARCH}
		<div class="col_12 center">{USERS_TOP_FILTERS_SUBMIT}</div>
	</form>
</div>

<!-- END: MAIN -->