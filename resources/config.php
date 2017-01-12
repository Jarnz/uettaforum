<?php

$config = array(
	"db" => array(
		"uetta" => array(
			"dbname" => "uetta",
			"username" => "james",
			"password" => "Darcy123",
			"host" => "localhost"
		)
	),
	"urls" => array(
		"baseurl" = "www.uettaforum.com"
	),
	"paths" => array(
		"resources" => "/resources",
		"images" => array(
			"content" => $_SERVER["DOCUMENT_ROOT"] . "/images/content",
			"layout" => $_SERVER["DOCUMENT_ROOT"] . "/images/layout"
		)
	)
);

/*
Create constants to be used through program
save time when typing requires
*/
defined("LIBRARY_PATH")
    or define("LIBRARY_PATH", realpath(dirname(__FILE__) . '/library'));
     
defined("TEMPLATES_PATH")
    or define("TEMPLATES_PATH", realpath(dirname(__FILE__) . '/templates'));
	
/*
    Error reporting.
*/
ini_set("error_reporting", "true");
error_reporting(E_ALL|E_STRCT);

?>