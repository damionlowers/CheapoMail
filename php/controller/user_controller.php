<?php
require_once "application_controller.php";
require_once "../module/user.php";
require_once "../config/config.php";


class UserController extends ApplicationController{

	public function all($conn){
		$allUsers = new User;

		$Users = $allUsers -> findAll($conn);

		return $Users;
	}


	public function find($userID,$conn){

		$allUsers = new User;

		$user = $allUsers->find($userID,$conn);
		return $user;
	}


	public function login($username,$password,$conn){

		$allUsers = new User;
		$user = $allUsers -> loginuser($username,$password,$conn);

		return $user;

	}


	public function newUser($first_name,$last_name,$password,$username,$conn){


		$allUsers = new User;
		$user = $allUsers -> loginUser($first_name,$last_name,$password,$username,$conn);
		return $user;

		
	}

}




$userObj = new UserController;
// print_r($test-> all($conn))


if( $_POST['request'] === 'login'){
	$username = $_POST['username'];
	$password = $_POST['password'];
	//json_encode($test -> login($username,$password,$conn));
	echo json_encode($userObj -> login($username,$password,$conn));

	//print_r($arrayName = array('status'=>403 ));
}
elseif($_POST['request']==='find')
{

	$user_id = $_POST['user_id'];

	echo json_encode($userObj -> find($user_id,$conn));

}
elseif ($_POST['request'] ==='findall')
{
	# code...
}
elseif($_POST['request'] === 'insert')
{
	$first_name = $_POST['firstname'];
	$last_name = $_POST['lastname'];
	$password = $_POST['password'];
	$username = $_POST['username'];

	echo json_encode($userObj -> new($first_name,$last_name,$password,$username,$conn));

}
elseif($_POST['request'] === 'delete')
{

}
else
{
	echo "Something is wrong";
}

//echo "jsut a test";


// echo UserController -> all();

?>