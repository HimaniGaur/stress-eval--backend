<?php

include_once 'db-connect.php';

$db = new DbConnect();
$db_table = "quiz_questions";
$json_array;

$query = "SELECT * FROM $db_table";
$result = mysqli_query($db->getDb(), $query);

if (mysqli_num_rows($result) > 0) {
	while ($row=mysqli_fetch_assoc($result)) {
		$row = array_map('utf8_encode', $row); // convert it to utf-8
		//echo print_r($row);
		//echo "<br />";
		//echo json_encode($row);
		//echo "<br />";
		$json_array["message"][] = json_encode($row);
	}
	$json_array['success'] = 1;
	//echo print_r($json_array);
	//echo "<br/>";
	echo json_encode($json_array);
} else {
	$json_array['message'] = ["No values found"];
	$json_array['success'] = 0;
	echo json_encode($json_array);
}
?>
