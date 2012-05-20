<!-- BEGIN: MAIN -->
<div class="col_12">
	<h2>{PLUGIN_TITLE}</h2>

	<form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" method="get">
		<input type="hidden" name="e" value="search" />

		<div class="col_8">{PLUGIN_SEARCH_TEXT|kick_id($this,'search-sq')} <button class="medium"><span class="icon medium" data-icon="s"></span>{PHP.L.plu_search_key}</button></div>
		<div class="col_4">
			<ul class="button-bar">
				<li><a href="{PHP|cot_url('plug','e=search')}">{PHP.L.plu_tabs_all}</a></li>
				<li><a class="red" href="{PHP|cot_url('plug','e=search&tab=pag')}">{PHP.L.Pages}</a></li>
				<li><a href="{PHP|cot_url('plug','e=search&tab=frm')}">{PHP.L.Forums}</a></li>
			</ul>
		</div>

		<ul class="tabs left">
			<li><a href="#tabres">{PHP.L.plu_result}</a></li>
			<li><a href="#tabopt">{PHP.L.Options}</a></li>
		</ul>

		<div id="tabres" class="tab-content">
			{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

			<!-- BEGIN: RESULTS -->
			<!-- BEGIN: PAGES -->
			<h4>{PHP.L.plu_tabs_pag}</h4>
			<!-- BEGIN: ITEM -->
			<div class="col_12 {PLUGIN_PR_ODDEVEN}">
				<h5>{PLUGIN_PR_TITLE}</h5>
				<p>{PLUGIN_PR_TEXT}</p>
				<div class="col_6 small left">{PHP.L.plu_last_date}: {PLUGIN_PR_TIME}</div>
				<div class="col_6 small right">{PHP.L.plu_section}: {PLUGIN_PR_CATEGORY}</div>
			</div>
			<!-- END: ITEM -->
			<!-- END: PAGES -->

			<!-- BEGIN: FORUMS -->
			<h4>{PHP.L.plu_tabs_frm}</h4>
			<!-- BEGIN: ITEM -->
			<div class="col_12 {PLUGIN_PR_ODDEVEN}">
				<h5>{PLUGIN_FR_TITLE}</h5>
				<!-- IF {PLUGIN_FR_TEXT} -->
				<p>{PLUGIN_FR_TEXT}</p>
				<!-- ENDIF -->
				<div class="col_6 small left">{PHP.L.plu_last_date}: {PLUGIN_FR_TIME}</div>
				<div class="col_6 small right">{PHP.L.plu_section}: {PLUGIN_FR_CATEGORY}</div>
			<!-- END: ITEM -->
			<!-- END: FORUMS -->
			<!-- END: RESULTS -->
			<p class="pagination">{PLUGIN_PAGEPREV}{PLUGIN_PAGENAV}{PLUGIN_PAGENEXT}</p>
		</div>

		<div id="tabopt" class="tab-content">

			<fieldset>
				<legend>{PHP.L.Main}</legend>
				<div class="col_3">{PHP.L.plu_other_date}:</div>
				<div class="col_9">{PLUGIN_SEARCH_DATE_SELECT} {PLUGIN_SEARCH_DATE_FROM} - {PLUGIN_SEARCH_DATE_TO}</div>
				<div class="col_3">{PHP.L.plu_other_userfilter}:</div>
				<div class="col_9">{PLUGIN_SEARCH_USER}</div>
			</fieldset>

			<!-- BEGIN: PAGES_OPTIONS -->
			<fieldset>
				<legend>{PHP.L.Pages}</legend>
				<div class="col_6">
					<h6>{PHP.L.plu_pag_set_sec}</h6>
					<p>{PLUGIN_PAGE_SEC_LIST|kick_attr($this,'size','8')}</p>
					<p>{PLUGIN_PAGE_SEARCH_SUBCAT}</p>
					<p class="small">{PHP.L.plu_ctrl_list}</p>
				</div>
				<div class="col_6">
					<h6>{PHP.L.plu_other_opt}</h6>
					<ul class="alt">
						<li>{PLUGIN_PAGE_SEARCH_NAMES}</li>
						<li>{PLUGIN_PAGE_SEARCH_DESC}</li>
						<li>{PLUGIN_PAGE_SEARCH_TEXT}</li>
						<li>{PLUGIN_PAGE_SEARCH_FILE}</li>
					</ul>
					<h6>{PHP.L.plu_res_sort}</h6>
					<p>{PLUGIN_PAGE_RES_SORT} {PLUGIN_PAGE_RES_SORT_WAY}</p>
				</div>
			</fieldset>
			<!-- END: PAGES_OPTIONS -->
			<!-- BEGIN: FORUMS_OPTIONS -->
			<fieldset>
				<legend>{PHP.L.Forums}</legend>
				<div class="col_6">
					<h6>{PHP.L.plu_frm_set_sec}</h6>
					<p>{PLUGIN_FORUM_SEC_LIST|kick_attr($this,'size','8')}</p>
					<p>{PLUGIN_FORUM_SEARCH_SUBCAT}</p>
					<p class="small">{PHP.L.plu_ctrl_list}</p>
				</div>
				<div class="col_6">
					<h6>{PHP.L.plu_other_opt}</h6>
					<ul class="alt">
						<li>{PLUGIN_FORUM_SEARCH_NAMES}</li>
						<li>{PLUGIN_FORUM_SEARCH_POST}</li>
						<li>{PLUGIN_FORUM_SEARCH_ANSW}</li>
					</ul>
					<h6>{PHP.L.plu_res_sort}</h6>
					<p>{PLUGIN_FORUM_RES_SORT} {PLUGIN_FORUM_RES_SORT_WAY}</p>
				</div>
			</fieldset>
			<!-- END: FORUMS_OPTIONS -->
		</div>
	</form>
</div>

<!-- END: MAIN -->