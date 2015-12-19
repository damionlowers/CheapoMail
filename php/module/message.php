<?php
require_once '../config/config.php';
require_once 'ApplicationModule.php';
class Message{
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

	public function check($conn){

		$query = $conn->prepare("SELECT * FROM messages where flag=1");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}

	public function find($messageID,$conn){
		$query = $conn->prepare("SELECT * FROM messages WHERE id=$messageID");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}


	public function findall($conn){
		$session =  $_SESSION['user_id'];
		//echo $session;
		$query = $conn->prepare("SELECT * FROM messages where recipent_id = $session order by id DESC");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}


	public function delete($messageID,$conn){
		$sql = "DELETE FROM messages WHERE id=$messageID";

		if ($conn->query($sql)) {
			return array('status' => 200);
		} else {
			return array('status' => 404);
		}
	}


	public function sendMessage($messageBody,$subject,$sender_id,$reciever_id,$conn){

		// $reciever_id = 3;
		
		$sql = "INSERT INTO messages (message_body,subject,user_id,recipent_id)VALUES ('$messageBody','$subject','$sender_id','$reciever_id')";

		// var_dump($conn-> query($sql));

		if ($conn -> query($sql)) {
			//echo "New record created successfully <br/>";
			return array("status"=>200);
		} else {
			// echo "Error: " . $sql . "<br>";
			return array("status"=>404);
		}



		
	}

	public function newMessages($conn){

		$query = $conn->prepare("SELECT * FROM messages where flag=0");

		if($query -> execute(array())>0){

			$count = count($query);

			return $count;

		}else{

			echo "Error: ".$e;
		}
	}
}

// $messageObj = new Message;
// echo "gsdgsdg";
// echo $_SESSION["user_id"];
// echo "gsdgfg";
// print_r($messageObj->findall($conn));
?>