<?php
require_once '../config/config.php';
class message{
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

	public check($conn){

		$query = $conn->prepare("SELECT * FROM messages where flag=1");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}

	public find($messageID,$conn){
		$query = $conn->prepare("SELECT * FROM messages WHERE id=$messageID");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}
	public findall($conn){
		$query = $conn->prepare("SELECT * FROM messages");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}

	}

	public delete($messageID,$conn){
		$sql = "DELETE FROM messages WHERE id=$userID";

		if ($conn->query($sql)) {
			echo "Record deleted successfully<br/>";
		} else {
			echo "Error deleting record: <br/>" . $conn->error;
		}
	}


	public send($messageBody,$subject,$sender,$reciever,$conn){
		
		$sql = "INSERT INTO messages (message_body, subject, user_id,recipent_id)VALUES ('$messageBody','$subject','$sender','$reciever')";

		// var_dump($conn-> query($sql));

		if ($conn-> query($sql)) {
			echo "New record created successfully <br/>";
		} else {
			echo "Error: " . $sql . "<br>";
		}
	}

}
?>