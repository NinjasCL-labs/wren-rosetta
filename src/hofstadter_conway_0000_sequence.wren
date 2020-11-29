// url: https://rosettacode.org/wiki/Hofstadter-Conway_0,000_sequence#Wren
// source: https://rosettacode.org/mw/index.php?title=Hofstadter-Conway_0,000_sequence&action=edit&section=61
// file: hofstadter_conway_0000_sequence
// name: Hofstadter-Conway 0,000 sequence
// author: PureFox
// license: MIT

ml>
<html lang="en" dir="ltr" class="client-nojs">
<head>
<meta charset="UTF-8" />
<title>Permission error - Rosetta Code</title>
<script src="/cdn-cgi/apps/head/7qaJovFEYxjqsAZAxmfekTkNrFg.js"></script><script>document.documentElement.className = document.documentElement.className.replace( /(^|\s)client-nojs(\s|$)/, "$1client-js$2" );</script>
<script>window.RLQ = window.RLQ || []; window.RLQ.push( function () {
mw.config.set({"wgCanonicalNamespace":"","wgCanonicalSpecialPageName":!1,"wgNamespaceNumber":0,"wgPageName":"Hofstadter-Conway_0,000_sequence","wgTitle":"Hofstadter-Conway 0,000 sequence","wgCurRevisionId":0,"wgRevisionId":0,"wgArticleId":0,"wgIsArticle":!1,"wgIsRedirect":!1,"wgAction":"edit","wgUserName":null,"wgUserGroups":["*"],"wgCategories":[],"wgBreakFrames":!1,"wgPageContentLanguage":"en","wgPageContentModel":"wikitext","wgSeparatorTransformTable":["",""],"wgDigitTransformTable":["",""],"wgDefaultDateFormat":"dmy","wgMonthNames":["","January","February","March","April","May","June","July","August","September","October","November","December"],"wgMonthNamesShort":["","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"wgRelevantPageName":"Hofstadter-Conway_0,000_sequence","wgRelevantArticleId":0,"wgIsProbablyEditable":!0,"wgRestrictionCreate":[],"sfgAutocompleteValues":[],"sfgAutocompleteOnAllChars":!1,"sfgFieldProperties":[],
"sfgDependentFields":[],"sfgShowOnSelect":[],"sfgScriptPath":"/mw/extensions/SemanticForms","sdgDownArrowImage":"/mw/extensions/SemanticDrilldown/skins/down-arrow.png","sdgRightArrowImage":"/mw/extensions/SemanticDrilldown/skins/right-arrow.png"});mw.loader.implement("user.options",function($,jQuery){mw.user.options.set({"variant":"en"});});mw.loader.implement("user.tokens",function($,jQuery){mw.user.tokens.set({"editToken":"+\\","patrolToken":"+\\","watchToken":"+\\"});});mw.loader.load(["ext.smw.style","ext.smw.tooltips","mediawiki.page.startup","mediawiki.legacy.wikibits"]);
} );</script>
<link rel="stylesheet" href="/mw/load.php?debug=false&amp;lang=en&amp;modules=ext.bootstrap.styles&amp;only=styles&amp;skin=chameleon" />
<meta name="ResourceLoaderDynamicStyles" content="" />
<link rel="stylesheet" href="/mw/load.php?debug=false&amp;lang=en&amp;modules=site&amp;only=styles&amp;skin=chameleon" />
<style>a:lang(ar),a:lang(kk-arab),a:lang(mzn),a:lang(ps),a:lang(ur){text-decoration:none}</style>
<script async="" src="/mw/load.php?debug=false&amp;lang=en&amp;modules=startup&amp;only=scripts&amp;skin=chameleon"></script>
<meta name="generator" content="MediaWiki 1.26.2" />
<meta name="robots" content="noindex,nofollow" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="ExportRDF" type="application/rdf+xml" title="Hofstadter-Conway 0,000 sequence" href="/mw/index.php?title=Special:ExportRDF/Hofstadter-Conway_0,000_sequence&amp;xmlmime=rdf" />
<link rel="shortcut icon" href="/favicon.ico" />
<link rel="search" type="application/opensearchdescription+xml" href="/mw/opensearch_desc.php" title="Rosetta Code (en)" />
<link rel="EditURI" type="application/rsd+xml" href="https://rosettacode.org/mw/api.php?action=rsd" />
<link rel="copyright" href="https://www.gnu.org/licenses/fdl-1.2.html" />
<link rel="alternate" type="application/atom+xml" title="Rosetta Code Atom feed" href="/mw/index.php?title=Special:RecentChanges&amp;feed=atom" />
</head>
<body class="mediawiki ltr sitedir-ltr ns-0 ns-subject page-Hofstadter-Conway_0_000_sequence layout-standard skin-chameleon action-edit">
<div class="container">
<div class="row">
<div class="col-lg-3">

<div id="p-logo" class="p-logo" role="banner">
<a href="/wiki/Rosetta_Code" title="Visit the main page"><img src="/mw/title.png" alt="Rosetta Code" /></a>
</div>
</div>
<div class="col-lg-9">
<div class="row">
<div class="col-lg-12">

<div class="p-personal pull-right" id="p-personal">
<ul class="p-personal-tools list-inline pull-right">
<li id="pt-createaccount"><a href="/mw/index.php?title=Special:UserLogin&amp;returnto=Hofstadter-Conway+0%2C000+sequence&amp;returntoquery=action%3Dedit%26section%3D61&amp;type=signup" title="You are encouraged to create an account and log in; however, it is not mandatory">Create account</a></li>
<li id="pt-login"><a href="/mw/index.php?title=Special:UserLogin&amp;returnto=Hofstadter-Conway+0%2C000+sequence&amp;returntoquery=action%3Dedit%26section%3D61" title="You are encouraged to log in; however, it is not mandatory [o]" accesskey="o">Log in</a></li>
</ul>
<div class="newtalk-notifier">
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">

<div id="p-search" class="p-search pull-right" role="search">
<form id="searchform" class="mw-search form-inline" action="/mw/index.php">
<input type="hidden" name="title" value="Special:Search" />
<div class="input-group">
<input name="search" placeholder="Search" title="Search Rosetta Code [f]" accesskey="f" id="searchInput" class="form-control" />
<div class="input-group-btn">
<button value="Go" id="searchGoButton" name="go" title="Go to a page with this exact name if it exists" type="submit" class="searchGoButton btn btn-default"><span class="glyphicon glyphicon-share-alt"></span></button><button value="Search" id="mw-searchButton" name="fulltext" title="Search the pages for this text" type="submit" class="mw-searchButton btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">

<nav class="navbar navbar-default p-navbar" role="navigation" id="mw-navigation">
<div class="container-fluid"><div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mw-navigation-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
<div class="collapse navbar-collapse" id="mw-navigation-collapse"><ul class="nav navbar-nav">

<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Community <b class="caret"></b></a>
<ul class="dropdown-menu p-Community" id="p-Community">
<li id="n-Twitter"><a href="https://twitter.com/rosettacode" rel="nofollow">Twitter</a></li>
<li id="n-Chat.2FIRC"><a href="/wiki/Special:WebChat">Chat/IRC</a></li>
<li id="n-Planet"><a href="https://rosettacode.org/planet" rel="nofollow">Planet</a></li>
<li id="n-The-Village-Pump"><a href="/wiki/Rosetta_Code:Village_Pump">The Village Pump</a></li>
<li id="n-Finances"><a href="/wiki/Rosetta_Code:Finances">Finances</a></li>
</ul>
</li>

<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Explore <b class="caret"></b></a>
<ul class="dropdown-menu p-Explore" id="p-Explore">
<li id="n-Languages"><a href="/wiki/Category:Programming_Languages">Languages</a></li>
<li id="n-Tasks"><a href="/wiki/Category:Programming_Tasks">Tasks</a></li>
<li id="n-recentchanges"><a href="/wiki/Special:RecentChanges" title="A list of recent changes in the wiki [r]" accesskey="r">Recent changes</a></li>
<li id="n-Similar-sites"><a href="/wiki/Help:Similar_Sites">Similar sites</a></li>
<li id="n-randompage"><a href="/wiki/Special:Random" title="Load a random page [x]" accesskey="x">Random page</a></li>
</ul>
</li></ul>
</div>
</div>
</nav>
</div>
</div>
<div class="row">
<div class="col-lg-12">

<ul class="p-contentnavigation list-inline text-center" id="p-contentnavigation">

<li id="p-namespaces">
<ul class="list-inline">
<li id="ca-nstab-main" class="selected new"><a href="/mw/index.php?title=Hofstadter-Conway_0,000_sequence&amp;action=edit&amp;redlink=1" title="View the content page [c]" accesskey="c" class="selected new">Page</a></li>
<li id="ca-talk" class="new"><a href="/mw/index.php?title=Talk:Hofstadter-Conway_0,000_sequence&amp;action=edit&amp;redlink=1" rel="discussion" title="Discussion about the content page [t]" accesskey="t" class="new">Discussion</a></li>
</ul>
</li>

<li id="p-views">
<ul class="list-inline">
<li id="ca-edit" class="selected"><a href="/mw/index.php?title=Hofstadter-Conway_0,000_sequence&amp;action=edit" title="Edit this page" class="selected">Create</a></li>
</ul>
</li>
</ul>
</div>
</div>
<div class="row">
<div class="col-lg-12">

<div id="siteNotice" class="siteNotice "><div id="localNotice" lang="en" dir="ltr"><table class="messagebox" style="text-align: center; background-color: lightyellow; clear: both;">
<tr>
<td> <b>I'm working on modernizing Rosetta Code's infrastructure. Starting with communications. Please accept <a rel="nofollow" class="external text" href="https://join.slack.com/t/rosettacode/shared_invite/zt-glwmugtu-xpMPcqHs0u6MsK5zCmJF~Q">this time-limited open invite to RC's Slack.</a>. --<a href="/wiki/User:Short_Circuit" title="User:Short Circuit">Michael Mol</a> (<a href="/wiki/User_talk:Short_Circuit" title="User talk:Short Circuit">talk</a>) 20:59, 30 May 2020 (UTC)</b>
</td></tr></table>
</div></div>
</div>
</div>
<div class="row">
<div class="col-lg-12">

<div id="content" class="mw-body"><a id="top"></a>
<div id="mw-js-message" style="display:none;"></div>
<div class="contentHeader">

<h1 id="firstHeading" class="firstHeading">Permission error</h1>

<div id="siteSub">From Rosetta Code</div><div id="jump-to-nav" class="mw-jump">Jump to:<a href="#mw-navigation">navigation</a>, <a href="#p-search">search</a></div>
</div><div id="bodyContent">

<div id="mw-content-text"><p>You do not have permission to create pages, for the following reason:
</p>
<div class="permissions-errors">
<p>You must confirm your email address before editing pages.
Please set and validate your email address through your <a href="/wiki/Special:Preferences" title="Special:Preferences">user preferences</a>.
</p>
</div>
</div><div class="printfooter">
Retrieved from "<a dir="ltr" href="https://rosettacode.org/wiki/Hofstadter-Conway_0,000_sequence">https://rosettacode.org/wiki/Hofstadter-Conway_0,000_sequence</a>"</div>
</div>

<div id='catlinks' class='catlinks catlinks-allhidden'></div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">

<nav class="navbar navbar-default p-tb " id="p-tb">
<ul class="nav navbar-nav small">
<li id="t-specialpages"><a href="/wiki/Special:SpecialPages" title="A list of all special pages [q]" accesskey="q">Special pages</a></li>
</ul>
</nav>
</div>
</div>
<div class="row">
<div class="col-lg-12">

<ul class="footer-info list-unstyled small" id="footer-info">
</ul>
</div>
</div>
<div class="row">
<div class="col-lg-6">

<ul class="list-inline footer-places " id="footer-places">
<li><small><a href="/wiki/Rosetta_Code:Privacy_policy" title="Rosetta Code:Privacy policy">Privacy policy</a></small></li>
<li><small><a href="/wiki/Rosetta_Code:About" title="Rosetta Code:About">About Rosetta Code</a></small></li>
<li><small><a href="/wiki/Rosetta_Code:General_disclaimer" title="Rosetta Code:General disclaimer">Disclaimers</a></small></li>
</ul>
</div>
<div class="col-lg-6">

<ul class="list-inline pull-right footer-icons " id="footer-icons">

<li><a href="https://www.gnu.org/licenses/fdl-1.2.html"><img src="/mw/resources/assets/licenses/gnu-fdl.png" alt="GNU Free Documentation License 1.2" width="88" height="31" /></a></li>

<li><a href="//www.mediawiki.org/"><img src="/mw/resources/assets/poweredby_mediawiki_88x31.png" alt="Powered by MediaWiki" srcset="/mw/resources/assets/poweredby_mediawiki_132x47.png 1.5x, /mw/resources/assets/poweredby_mediawiki_176x62.png 2x" width="88" height="31" /></a></li>
<li><a href="https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki"><img src="/mw/extensions/SemanticMediaWiki/includes/../resources/images/smw_button.png" alt="Powered by Semantic MediaWiki" width="88" height="31" /></a></li>
</ul>
</div>
</div>
</div><script>window.RLQ = window.RLQ || []; window.RLQ.push( function () {
mw.loader.state({"user":"ready","user.groups":"ready"});mw.loader.load(["site","mediawiki.user","mediawiki.hidpi","mediawiki.page.ready","mediawiki.searchSuggest","ext.bootstrap.scripts"]);
} );</script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(["_setAccount", "UA-1219419-1"]);
  _gaq.push(["_trackPageview"]);

  (function() {
    var ga = document.createElement("script"); ga.type = "text/javascript"; ga.async = true;
    ga.src = ("https:" == document.location.protocol ? "https://ssl" : "http://www") + ".google-analytics.com/ga.js";
    var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script>window.RLQ = window.RLQ || []; window.RLQ.push( function () {
mw.config.set({"wgBackendResponseTime":541});
} );</script></body>
</html
