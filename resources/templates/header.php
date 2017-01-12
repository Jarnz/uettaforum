<?php
if(is_null($username))
{
	$username = "";
}
?>
<!DOCTYPE HTML>
<html>
<head lang="en">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="A general forum, created in order to learn php" />
	<title>Uetta Forum</title>
	<link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<body>

<div id="headbar">
	<div class="logo">
		<img href="images/logo.jpg" alt="The websites logo">
	</div>
	<div class="filler">
	</div>
	
	<div class="navoptions">
	<ul class="navoptions">
		<?php echo $username; ?>
		<li>Home</li>
		<li>Categories</li>
		<li>Log in</li>
		<li>Create Account</li>
		<li>Profile</li>
	</ul>
	</div>
	
</div>
