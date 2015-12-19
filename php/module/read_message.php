<?php
require_once '../config/config.php';
require_once 'ApplicationModule.php';
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

	public function insert($messageID,$readersID,$conn){
		$sql = "INSERT INTO read_messages (message_id,reader_id)VALUES ('$messageID','$readersID')";

		// var_dump($conn-> query($sql));

		if ($conn-> query($sql)) {
			return  array('status' => 200 );
		} else {
			return  array('status' => 404 );
		}
	}

	public function delete($readMessageID,$conn){
		$sql = "DELETE FROM read_messages WHERE id=$readMessageID";

		if ($conn->query($sql)) {
			return  array('status' => 200 );
		} else {
			return  array('status' => 404 );
		}
	}


	public function find($readMessageID,$conn){
		$query = $conn->prepare("SELECT * FROM read_messages WHERE id=$messageID");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}
	}

	public function findall($conn){
		$session =  $_SESSION['user_id'];
		$query = $conn->prepare("SELECT * FROM read_messages where reader_id=$session order by id DESC");

		if($query -> execute(array())>0){
			
			return $query->fetchAll(PDO::FETCH_ASSOC);

		}else{

			echo "Error: ".$e;
		}
	}
}
?>