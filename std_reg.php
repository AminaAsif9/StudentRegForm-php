<?php
// database connection code
if(isset($_POST['fname']))
{
$con = mysqli_connect('localhost', 'root', '','db_contact');

// get the post records

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$gender = $_POST['gender'];
$city = $_POST['city'];
$qualification = $con->real_escape_string($_POST['qualification']);
$course = $_POST['course'];
$address = $_POST['address'];
$chkbx = $_POST['chkbox'];
$talent = implode("- ", $chkbx);
$message = $_POST['message'];

// database insert SQL code 
$sql = "INSERT INTO `student_record` 
		( `fname`,`lname`,`phone`, `email`, `gender`, `city`,`qualification`,`course`,`address`,`talent`,`message`) 
		VALUES 
		( '$fname','$lname','$phone', '$email', '$gender', '$city','$qualification','$course','$address','$talent','$message')";

$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Registered Successfully!!";
}
else
{
	echo "Error: ".mysqli_error($con);
}
}
else
{
	echo "Try Again!";
	
}
?>
