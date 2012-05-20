<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html>
<head>
<title>{HEADER_TITLE}</title> 
<!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF -->
<!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF -->
<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
<meta name="generator" content="Cotonti http://www.cotonti.com" />
<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
{HEADER_BASEHREF}
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
{HEADER_HEAD}
<link rel="shortcut icon" href="favicon.ico" />
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
</head>

<body><a name="top-of-page"></a><div class="wrap clearfix">

	<header>
		<div class="clearfix logobar">
			<h1 class="logo">Cotonti KickStart</h1>
			<blockquote>
				<p>
					Flexible HTML KickStart theme for Cotonti CMS/F
				</p>
			</blockquote>
		</div>
		<div id="nav">
			<ul class="menu">
				<li <!-- IF {PHP.env.ext} == 'index' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('index')}"><span class="icon" data-icon="I"></span>{PHP.L.Home}</a></li>
				<li <!-- IF {PHP.env.ext} == 'contact' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('plug', 'e=contact')}"><span class="icon" data-icon="8"></span>{PHP.L.kick_contact}</a></li>
				<li <!-- IF {PHP.env.ext} == 'page' AND {PHP.al} == 'about' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('page', 'c=system&al=about')}"><span class="icon" data-icon="i"></span>{PHP.L.kick_about}</a></li>
				<li><a href="#"><span class="icon" data-icon="u"></span>{PHP.L.kick_personal}</a>
					<ul>
						<!-- IF {PHP.usr.id} > 0 -->
						<!-- IF {PHP.usr.isadmin} -->
						<li><a href="{PHP|cot_url('admin')}"><span class="icon" data-icon="g"></span>{PHP.L.kick_admin}</a></li>
						<li <!-- IF {PHP.env.ext} == 'users' AND {PHP.m} == 'main' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('users')}"><span class="icon" data-icon="U"></span>{PHP.L.Users}</a></li>
						<!-- ENDIF -->
						<li <!-- IF {PHP.env.ext} == 'users' AND {PHP.m} == 'profile' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('users','m=profile')}"><span class="icon" data-icon="z"></span>{PHP.L.kick_profile}</a></li>
						<li <!-- IF {PHP.env.ext} == 'elfinder' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('plug', 'e=elfinder')}"><span class="icon" data-icon=","></span>{PHP.L.kick_myfiles}</a></li>
						<li><a href="{PHP|cot_url('login', 'out=1')}"><span class="icon" data-icon="Q"></span>{PHP.L.Logout}</a></li>
						<!-- ELSE -->
						<li <!-- IF {PHP.env.ext} == 'login' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('login')}"><span class="icon" data-icon="O"></span>{PHP.L.kick_login}</a></li>
						<li <!-- IF {PHP.env.ext} == 'users' AND {PHP.m} == 'register' -->class="current"<!--ENDIF -->><a href="{PHP|cot_url('users','m=register')}"><span class="icon" data-icon="v"></span>{PHP.L.kick_register}</a></li>
						<!-- ENDIF -->
					</ul>
				</li>
				<li><a href="{PHP|cot_url('rss')}"><span class="icon social" data-icon="R"></span>RSS</a></li>
			</ul>
			<form id="search" name="search" action="{PHP|cot_url('plug','e=search')}" method="get">
				<input type="text" id="searchq" name="sq" placeholder="{PHP.L.Search}" />
			</form>
		</div>

	</header>

	<div id="main" class="body clearfix">

<!-- END: HEADER -->