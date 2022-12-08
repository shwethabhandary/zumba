<?php
    include('connection.php');

    // Check connection
    if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
    }

    $sql = "SELECT * FROM users";
    $result = $con->query($sql);

    if ($result->num_rows > 0) 
    {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo $row["fname"] . " " . $row["lname"];
            echo "<br>";
        }
    } 
    else 
    {
        echo "0 results";
    }
    $con->close();
?>