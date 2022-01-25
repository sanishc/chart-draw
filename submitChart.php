<?php
session_start();
if (isset($_POST['logout'])){
    unset($_SESSION['uname']);
    header('location:http://localhost/ChartDraw/index.php');
}else{
    $t1 = $_POST['temp1'];
    $t2 = $_POST['temp2'];
    $servername = "";
    $username = "";
    $password = '""';
    $db = "";

    $conn = mysqli_connect($servername, $username, $password,$db);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO ChartData VALUES (null,".$t1.",".$t2.",default)";

    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    mysqli_close($conn); 
    header('location:http://localhost/ChartDraw/index.php');
}

?>
