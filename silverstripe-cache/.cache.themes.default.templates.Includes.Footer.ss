<?php
$val .= '<footer class="content-footer">						
	<span class="arrow" id="scrollup">&uarr;</span>			
	<p class="footer-para">Last Updated ';

$val .= $scope->obj('LastEdited', null, true)->XML_val('NiceUS', null, true);
$val .= '</p>
	<p class="footer-para">&copy; Nick Hentschel ';

$val .= $scope->obj('Now', null, true)->XML_val('Year', null, true);
$val .= '</p>
</footer>';

