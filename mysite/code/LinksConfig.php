<?php
 
class LinksConfig extends DataExtension {

	public function updateCMSFields(FieldList $fields) {	
		$items = HeaderLink::get();	
		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		$gridField = new GridField("HeaderLinks", "HeaderLinks", $items, $gridFieldConfig);
		$fields->addFieldToTab("Root.Main", $gridField); 
	}

}