<?php
require_once '../config/config.php';
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
		$query = $conn->prepare("SELECT * FROM messages");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}

	public function delete($messageID,$conn){
		$sql = "DELETE FROM messages WHERE id=$userID";

		if ($conn->query($sql)) {
			echo "Record deleted successfully<br/>";
		} else {
			echo "Error deleting record: <br/>" . $conn->error;
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
// print_r($messageObj->findall($conn));
?>