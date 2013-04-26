<?php
$val .= '<!DOCTYPE html>
<html>
	<head>
		';

$val .= SSViewer::get_base_tag($val);
$val .= '
		<title>';

if ($scope->hasValue('MetaTitle', null, true)) { 
$val .= $scope->XML_val('MetaTitle', null, true);

}else { 
$val .= $scope->XML_val('Title', null, true);

}
$val .= ' &raquo; ';

$val .= $scope->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		';

$val .= $scope->XML_val('MetaTags', array('false'), true);
$val .= '
		<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href=\'http://fonts.googleapis.com/css?family=Text+Me+One\' rel="stylesheet">
		<link href=\'http://fonts.googleapis.com/css?family=Sintony\' rel="stylesheet">
		';

Requirements::css('themes/default/css/reset.css');
$val .= '
		';

Requirements::css('themes/default/css/typography.css');
$val .= '
		';

Requirements::css('themes/default/css/form.css');
$val .= '
		';

Requirements::css('themes/default/css/style.css');
$val .= '
	</head>
	<body class="typography">
		';

$val .= SSViewer::execute_template('Header', $scope->getItem(), array());

$val .= '
		<div class="content">
			';

$val .= $scope->XML_val('Layout', null, true);
$val .= '
		</div>
		';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array());

$val .= '		
		';

Requirements::javascript('//ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js');
$val .= '
		';

Requirements::javascript('themes/default/javascript/main.js');
$val .= '
	</body>
</html>';

