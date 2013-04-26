<?php
$val .= '<h2>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</h2>
';

$val .= $scope->XML_val('Content', null, true);
$val .= '
';

$val .= $scope->XML_val('Form', null, true);
