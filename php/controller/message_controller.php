<?php
require_once "application_controller.php";
require_once "../module/message.php";
require_once "../module/user.php";
require_once "../config/config.php";
// require_once "";


class MessageController extends ApplicationController{

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

		$receiver = explode(",", $recipent);
		$send = array();

		$i=0;

		foreach ($receiver as $r_id) {

			$recipentId = $user -> findbyUsername($r_id,$conn)[0]['id'];

			$send[$i] = $messageObj -> sendMessage($body,$subject,$_SESSION['user_id'],$recipentId,$conn);

			if ($send[$i] == 404) {
				return $send[$i];
			}
			$i++;
		}
		return $send;

	}

	public function check($conn){
		
		$messageObj = new Message;
		
		$message = $messageObj -> check($conn);
		return $message;

	}
	public function delete($messageID,$conn){

		$messageObj = new Message;

		return $messageObj -> delete($messageID, $conn);
	}

	public function newMessages($conn){
		
		$messageObj = new Message;
		
		$message = $messageObj -> newMessages($conn);
		return $message;

	}
}

$MessageControllerObj = new MessageController;





if($_POST['request'] === 'send'){

	$recipent = $_POST['recepent'];
	$subject = $_POST['subject'];
	$body = $_POST['messageBody'];

	echo json_encode($MessageControllerObj -> insertMessage($body,$subject,$recipent,$conn));

}
elseif($_POST['request'] ==='findall'){
	echo json_encode($MessageControllerObj->all($conn));
}

elseif($_POST['request'] ==='delete'){

	$messageID = $_POST['message_id'];

	echo json_encode($MessageControllerObj->delete($messageID,$conn));
}
elseif ($_POST['request'] === 'new') {

	echo json_encode($MessageControllerObj->newMessages($conn));
}








// echo $_SESSION['user_id'];

// print_r($MessageControllerObj->all($conn))

//.
// print_r($MessageControllerObj ->newMessages($conn));
 //print_r($MessageControllerObj -> insertMessage("hey this is the body of the message 3","just a mind",'dam,bob',$conn));
?>