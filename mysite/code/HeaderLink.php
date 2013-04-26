<?php

class HeaderLink extends DataObject { 

	public static $db = array(
		'LinkTitle'=>'Varchar',
		'Link'=>'Varchar(500)',
		'Target'=>'Varchar'
	);

	public static $summary_fields = array(
  		'LinkTitle' => 'LinkTitle'
 	);

 	public function getCMSFields_forPopup() {
		return new FieldList(
	   		new TextField('LinkTitle', 'Link Title'),
	   		new TextField('Link', 'Link'),
	   		new TextField('Target', 'Target')
	  	);
	}

}