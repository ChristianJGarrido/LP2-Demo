<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="head" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="user-scalable=0, width=device-width, initial-scale=1.0,  minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css"
	media="all" />

<script type="text/javascript">
	/*if (sessionStorage.siteId) {
		sessionStorage.siteId = sessionStorage.siteId;
	} else {
		sessionStorage.siteId = '';
	}
	*/
	/*
	var lpTag = lpTag || {};
	lpTag.vars = lpTag.vars || [];
	lpTag.dbs = lpTag.dbs || [];
	lpTag.section = 'default';

	var x = 0;

	var arrLPvars = [

	// 'unit' is required in most deployments
	{
		scope : 'page',
		name : 'unit',
		value : 'sales'
	},
	// 'language' is required in deployments that do, or may in the future, need multi-lingual support
	{
		scope : 'session',
		name : 'language',
		value : 'english'
	} ];
	lpTag.vars.push(arrLPvars);
	*/
</script>
</head>
<body>
	<!-- Include LivePerson tag file -->
	<script type="text/javascript">
		window.lpTag = window.lpTag || {};
		if (typeof window.lpTag._tagCount === 'undefined') {
			window.lpTag = {
				site : '78160172' || '',
				section : lpTag.section || '',
				autoStart : lpTag.autoStart === false ? false : true,
				ovr : lpTag.ovr || {},
				_v : '1.5.1',
				_tagCount : 1,
				protocol : location.protocol,
				events : {
					bind : function(app, ev, fn) {
						lpTag.defer(function() {
							lpTag.events.bind(app, ev, fn);
						}, 0);
					},
					trigger : function(app, ev, json) {
						lpTag.defer(function() {
							lpTag.events.trigger(app, ev, json);
						}, 1);
					}
				},
				defer : function(fn, fnType) {
					if (fnType == 0) {
						this._defB = this._defB || [];
						this._defB.push(fn);
					} else if (fnType == 1) {
						this._defT = this._defT || [];
						this._defT.push(fn);
					} else {
						this._defL = this._defL || [];
						this._defL.push(fn);
					}
				},
				load : function(src, chr, id) {
					var t = this;
					setTimeout(function() {
						t._load(src, chr, id);
					}, 0);
				},
				_load : function(src, chr, id) {
					var url = src;
					if (!src) {
						url = this.protocol
								+ '//'
								+ ((this.ovr && this.ovr.domain) ? this.ovr.domain
										: 'lptag.liveperson.net')
								+ '/tag/tag.js?site=' + this.site;
					}
					var s = document.createElement('script');
					s.setAttribute('charset', chr ? chr : 'UTF-8');
					if (id) {
						s.setAttribute('id', id);
					}
					s.setAttribute('src', url);
					document.getElementsByTagName('head').item(0)
							.appendChild(s);
				},
				init : function() {
					this._timing = this._timing || {};
					this._timing.start = (new Date()).getTime();
					var that = this;
					if (window.attachEvent) {
						window.attachEvent('onload', function() {
							that._domReady('domReady');
						});
					} else {
						window.addEventListener('DOMContentLoaded', function() {
							that._domReady('contReady');
						}, false);
						window.addEventListener('load', function() {
							that._domReady('domReady');
						}, false);
					}
					if (typeof (window._lptStop) == 'undefined') {
						this.load();
					}
				},
				start : function() {
					this.autoStart = true;
				},
				_domReady : function(n) {
					if (!this.isDom) {
						this.isDom = true;
						this.events.trigger('LPT', 'DOM_READY', {
							t : n
						});
					}
					this._timing[n] = (new Date()).getTime();
				},
				vars : lpTag.vars || [],
				dbs : lpTag.dbs || [],
				ctn : lpTag.ctn || [],
				sdes : lpTag.sdes || [],
				ev : lpTag.ev || []
			};
			lpTag.init();
		} else {
			window.lpTag._tagCount += 1;
		}
	</script>

	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="index.jsp">Mobile Demo</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Site Id: <span id="sd"></span></a></li>
					<li><a href="basic.jsp">Basic</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Advanced
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="custom_button.jsp">Custom Button</a></li>
							<!--  <li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li class="divider"></li>
							<li><a href="#">One more separated link</a></li>
							-->
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<jsp:doBody />
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript" src="resources/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
		
	<script type="text/javascript">
		/*
		try {
			$("#sd").html(sessionStorage.siteId);
		} catch (e) {
			alert(e);
		}
		try {
			$('input[name=Id]').val(sessionStorage.siteId);
		}

		catch (e) {
			alert(e);
		}
		*/
		//alert(sessionStorage.siteId)
	</script>
</body>
</html>