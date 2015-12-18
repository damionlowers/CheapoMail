<?php
require_once "application_controller.php";
require_once "../module/read_message.php";
require_once "../module/user.php";
require_once "../config/config.php";


class ReadMessageController extends ApplicationController{

	public function all($conn){

		$messageObj = new Message;
		$messages = $messageObj -> findall($conn);
		return $messages;

	}

	public function find($id,$conn){

		$messageObj = new Message;
		$message = $messageObj -> find($messageID,$conn);
		return $message;

	}

	public function insertMessage($body,$subject,$recipent,$conn){
		// +session_start();

		$messageObj = new Message;
		$user = new User;

		$recipentId = $user -> findbyUsername($recipent,$conn)[0]['id'];

		$send = $messageObj -> sendMessage($body,$subject,$_SESSION['user_id'],$recipentId,$conn);
		return $send;

	}

	public function check($conn){
		$messageObj = new Message;
		
		$message = $messageObj -> check($conn);
		return $message;

	}
	public function delete($messageID,$conn){

		$messageObj = new Message;

		$messageObj -> $delete($messageID, $conn);

	}
}

$MessageControllerObj = new MessageController;

if($_POST['request'] === 'send'){

	$subject = $_POST['subject'];
	$recipent = $_POST['recepent'];
	$messageBody = $_POST['messageBody'];

	echo json_encode($MessageControllerObj -> insertMessage($messageBody,$subject,$recipent,$conn));

}
elseif($_POST['request'] === 'findall' ){
	echo json_encode($MessageControllerObj->all($conn));
}

elseif($_POST['request']==='delete'){
	$messageID = $_POST['message_id'];

	echo json_encode($MessageControllerObj->delete($messageID,$conn))
}
// echo $_SESSION['user_id'];

// print_r($MessageControllerObj -> insertMessage("hey this is the body of the message","just a reminder",'damionlowers',$conn));
?>