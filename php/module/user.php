<?php
require_once '../config/config.php';
class User{

	function __autoload($class_name) {
		require_once '/config/'.$class_name . '.php';
	}

	public function __construct(){

		echo 'The class "', __CLASS__, '" was initiated!<br />';
	}

	public function __destruct()
	{
		echo 'The class "', __CLASS__, '" was destroyed.<br />';
	}

	public function __toString()
	{
		echo "Using the toString method: ";
		// return $this->getProperty();
	}

	public function insertUser($first_name,$last_name,$password,$username,$conn){
		$sql = "INSERT INTO users (first_name, last_name, password,username)VALUES ('$first_name','$last_name','$password','$username')";

		// var_dump($conn-> query($sql));

		if ($conn-> query($sql)) {
			echo "New record created successfully <br/>";
		} else {
			echo "Error: " . $sql . "<br>";
		}

	}

	public function deleteUser($userID,$conn){
		$sql = "DELETE FROM users WHERE id=$userID";


		if ($conn->query($sql)) {
			echo "Record deleted successfully<br/>";
		} else {
			echo "Error deleting record: <br/>" . $conn->error;
		}


	}

	// public function findUser(user){

	// }

	// public function findAll(){

	// }

}

$user = new User();

// echo $user -> insertUser("Damion","Lowers","lowers1989","damionlowers",$conn);

echo $user-> deleteUser(10,$conn);

?>