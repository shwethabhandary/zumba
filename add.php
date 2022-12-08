<?php
$DATABASE_HOST = 'localhost';
include('connection.php');
if(isset($_POST['submit']))
{
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$email = $_POST['email'];
	$address = $_POST['address'];
	$homephone = $_POST['homephone'];
	$cellphone = $_POST['cellphone'];
	$sql = "INSERT INTO users (fname,lname,email,address,homephone,cellphone)
	VALUES ('$fname','$lname','$email','$address','$homephone','$cellphone')";
	if (mysqli_query($con, $sql)) {
        echo '<script>
            alert("New record created successfully !")
            window.location.href="employees.php";
        </script>';
	} else {
	   echo '<script>
        alert("ERROR")
        window.location.href="employees.php";
        </script>';
	}
	mysqli_close($con);
}
?>