<?php

//load the config, change this depending on location of config.php file
	require_once("/resources/config.php");
	require_once(TEMPLATES_PATH . "/header.php");
?>

<div id="container">
	<div id="contentblock">
	<h1>Hello World</h1>
	</div>
</div>

<?php 
	require_once(TEMPLATES_PATH . "/footer.php");
?>