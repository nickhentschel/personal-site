<!DOCTYPE html>
<html>
	<head>
		<% base_tag %>
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		$MetaTags(false)
		<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href='http://fonts.googleapis.com/css?family=Text+Me+One' rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Sintony' rel="stylesheet">
		<% require css(themes/default/css/reset.css) %>
		<% require css(themes/default/css/typography.css) %>
		<% require css(themes/default/css/form.css) %>
		<% require css(themes/default/css/style.css) %>
	</head>
	<body class="typography">
		<% include Header %>
		<div class="content">
			$Layout
		</div>
		<% include Footer %>
		<% require javascript('http://code.jquery.com/jquery-1.9.1.min.js') %>
		<% require javascript(themes/default/javascript/main.js) %>
	</body>
</html>
