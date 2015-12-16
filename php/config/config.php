<?php
// class Config{

// 	public function __construct(){

// 		echo 'The class "', __CLASS__, '" was initiated!<br />';
// 	}

// 	public function __destruct()
// 	{
// 		echo 'The class "', __CLASS__, '" was destroyed.<br />';
// 	}

// 	public function __toString()
// 	{
// 		echo "Using the toString method: ";
// 		// return $this->getProperty();
// 	}

// 	public function connectionDB(){
// 		$dbusername = "root";
// 		$dbpassword = "admin";
// 		$dbhost = "127.0.0.1";
// 		$DBname = 'cheapermailDB';

// 		try {
// 			$conn = new PDO("mysql:host=$dbhost;dbname=$DBname", $dbusername, $dbpassword);
// 			// set the PDO error mode to exception
// 			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
// 			echo "Connected successfully.<br />";
// 		}
// 		catch(PDOException $e)
// 		{
// 			echo "Connection failed: " . $e->getMessage().".<br />";
// 		}
// 	}

// }


// $config = new Config;

// echo $config -> connectionDB();


// Damion CONFIG
// $dbusername = "root";
// $dbpassword = "admin";
// $dbhost = "127.0.0.1";
// $DBname = 'cheapermailDB';
// try {
// 	$conn = new PDO("mysql:host=$dbhost;dbname=$DBname", $dbusername, $dbpassword);
// 	// set the PDO error mode to exception
// 	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
// 	//echo "Connected successfully.<br />";
// }
// catch(PDOException $e)
// {
// 	echo "Connection failed: " . $e->getMessage().".<br />";
// }

// LEO CONFIG
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