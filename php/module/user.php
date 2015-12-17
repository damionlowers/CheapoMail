<?php
require_once '../config/config.php';
session_start();
class User{

	function __autoload($class_name) {
		require_once '/config/'.$class_name . '.php';
	}

	public function __construct(){

		// echo 'The class "', __CLASS__, '" was initiated!<br />';
	}

	public function __destruct()
	{
		// echo 'The class "', __CLASS__, '" was destroyed.<br />';
	}

	public function __toString()
	{
		// echo "Using the toString method: ";
		// return $this->getProperty();
	}

	public function insertUser($first_name,$last_name,$password,$username,$usertype,$conn){
		$sql = "INSERT INTO users (first_name, last_name, password,username,type)VALUES ('$first_name','$last_name','$password','$username','$usertype')";

		// var_dump($conn-> query($sql));

		if ($conn-> query($sql)) {
		//	echo "New record created successfully <br/>";
			return array("status"=>200);
		} else {
		//	echo "Error: " . $sql . "<br>";
			return array("status"=>404);
		}

	}

	public function deleteUser($userID,$conn){
		$sql = "DELETE FROM users WHERE id=$userID";


		if ($conn->query($sql)) {
			return array("status"=>200);
		} else {
			return array("status"=>404);
		}
	}


	public function loginuser($username,$password,$conn){

		$query = $conn->prepare("select * FROM users where username=? and password=?");


		$query -> execute(array($username,$password));
		//return $query->fetchAll(PDO::FETCH_ASSOC);

		$result = $query->fetchAll(PDO::FETCH_ASSOC);

		// print_r( $result);



		if(count($result) > 0){

			//print_r($result[0]);
			// session_start();
			$_SESSION["username"] = $username;
			$_SESSION["firstname"] = $result[0]['first_name'];
			$_SESSION["lastname"] = $result[0]['last_name'];
			$_SESSION["user_id"] = $result[0]['id'];

			return array("status"=>200);
			//echo "Logged in successfully";
			

		}else{
			return array("status"=>403);
			//echo "Error: ".$e;
		}

	}


	public function checkUser($username,$conn){

		$query = $conn->prepare("select * FROM users where username=?");


		$query -> execute(array($username));
		//return $query->fetchAll(PDO::FETCH_ASSOC);

		$result = $query->fetchAll(PDO::FETCH_ASSOC);



		if(count($result) > 0){
			// session_start();
			return array("status"=>200);
			//echo "Logged in successfully";
			

		}else{
			return array("status"=>404);
			//echo "Error: ".$e;
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


	public function findbyUsername($username,$conn){

		$query = $conn->prepare("SELECT * FROM users WHERE username=?");

		if($query -> execute(array($username))>0){

			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}
	}


	public function findAll($conn){

		$query = $conn->prepare("SELECT * FROM users WHERE id <> ".$_SESSION['user_id']);

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			return $arrayName = array('status' => 404 );
		}

	}

}

// $user = new User();
// // echo $user -> insertUser("Damion","Lowers","lowers1989","damionlowers",$conn);
// print_r(json_encode($user->loginuser("damionlowers","lowers1989",$conn)));

 //print_r($user->checkUser("leo",$conn));

 // echo( $user->findbyUsername("damionlowers",$conn)[0]['id']);
 // echo $_SESSION["user_id"];

// print_r(json_encode($user->loginuser("damionlowers","lowers1989",$conn)));

// echo $user -> insertUser("Damion","Lowers","lowers1989","damionlowers",$conn);

// echo $user-> deleteUser(10,$conn);

// print_r ($user -> find(1,$conn));
// print_r ($user -> findAll($conn));
?>