<?php
$val .= '<header role="banner">
	<div class="header-links">
		<ul>
			<li class="left"><a href="/">';

$val .= $scope->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</a> - ';

$val .= $scope->obj('SiteConfig', null, true)->XML_val('Tagline', null, true);
$val .= '</li>
			';

$scope->obj('getAllHeaderLinks', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				<li><a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '" title="';

$val .= $scope->XML_val('LinkTitle', null, true);
$val .= '" target="';

$val .= $scope->XML_val('Target', null, true);
$val .= '">';

$val .= $scope->XML_val('LinkTitle', null, true);
$val .= '</a></li>
			';


}; $scope->popScope(); 
$val .= '
		</ul>
	</div>
	<div class="logo">
		<h1 id="headline">NH</h1>
		<nav class="main-nav" role="navigation">
			<ul class="nav-links">
			';

$scope->obj('Menu', array('1'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				<li>
					<a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '" title="';

$val .= $scope->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '" class="nav-link ';

$val .= $scope->XML_val('LinkingMode', null, true);
$val .= '">';

$val .= $scope->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</a>
				</li>
			';


}; $scope->popScope(); 
$val .= '
			</ul>
		</nav>
	</div>
</header>';

