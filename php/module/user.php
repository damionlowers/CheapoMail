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

	public function find($user_id,$conn){

		$query = $conn->prepare("SELECT * FROM users WHERE id=?");

		if($query -> execute(array($user_id))>0){

			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}
	}


	public function findAll($conn){

		$query = $conn->prepare("SELECT * FROM users");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}

}

$user = new User();

// echo $user -> insertUser("Damion","Lowers","lowers1989","damionlowers",$conn);

// echo $user-> deleteUser(10,$conn);

// print_r ($user -> find(1,$conn));
print_r ($user -> findAll($conn));

?>