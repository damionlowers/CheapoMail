<?php

$dbusername = "root";
$dbpassword = "admin";
$dbhost = "127.0.0.1";
$DBname = 'cheapermailDB';
try {
	$conn = new PDO("mysql:host=$dbhost;dbname=$DBname", $dbusername, $dbpassword);
	// set the PDO error mode to exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//echo "Connected successfully.<br />";
}
catch(PDOException $e)
{
	echo "Connection failed: " . $e->getMessage().".<br />";
}

?>