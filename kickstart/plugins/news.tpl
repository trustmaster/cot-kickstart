<!-- BEGIN: NEWS -->

<!-- BEGIN: PAGE_ROW -->
<h3>{PAGE_ROW_SHORTTITLE}</h3>
<!-- IF {PAGE_ROW_DESC} -->
<p class="small">
	{PAGE_ROW_DESC}
</p>
<!-- ENDIF -->

<div class="compact">
	{PAGE_ROW_CATPATH}
	<span class="right small">{PAGE_ROW_DATE}</span>
</div>

<div class="pagetext">
	{PAGE_ROW_TEXT_CUT}
</div>

<p>
	<a href="{PAGE_ROW_URL}" title="{PHP.L.kick_fullstory}">{PHP.L.ReadMore}</a>
</p>

<!-- IF {PHP.usr.isadmin} -->
<div class="col_12 right">
	<ul class="button-bar">
		<li>{PAGE_ROW_ADMIN_EDIT}</li>
	</ul>
</div>
<!-- ENDIF -->

<hr />
<!-- END: PAGE_ROW -->

<p class="pagination">{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}</p>

<!-- END: NEWS -->