<?php
require_once '../config/config.php';
class readMessage{
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
	}

	public function insert($messageID,readersID,$conn){
		$sql = "INSERT INTO messages (message_id,readers_id)VALUES ('$messageID','$readersID')";

		// var_dump($conn-> query($sql));

		if ($conn-> query($sql)) {
			echo "New record created successfully <br/>";
		} else {
			echo "Error: " . $sql . "<br>";
		}
	}

	public function delete(readMessageID,$conn){
		$sql = "DELETE FROM read_messages WHERE id=$readMessageID";

		if ($conn->query($sql)) {
			echo "Record deleted successfully<br/>";
		} else {
			echo "Error deleting record: <br/>" . $conn->error;
		}
	}


	public function find(readMessageID,$conn){
		$query = $conn->prepare("SELECT * FROM read_messages WHERE id=$messageID");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}
	}

	public function findall($conn){
		$query = $conn->prepare("SELECT * FROM read_messages");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}
	}
}
?>