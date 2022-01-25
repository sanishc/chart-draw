<?php
session_start();
$servername = "";
$username = "";
$password = '""';
$db = "";
$uname = $_POST['uname'];
$pswd = $_POST['passwd'];
$hashed_password = password_hash($pswd, PASSWORD_DEFAULT);

$conn = mysqli_connect($servername, $username, $password,$db);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['loginbtn'])){
    $sql = "SELECT * FROM chartUser";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0){
        while ($row = mysqli_fetch_assoc($result)) {
            if ($uname == $row['uname']){
                if(password_verify($pswd, $row['password'])) {
                    print("login successfull");
                    $_SESSION['uname'] = "$uname";
                } 
                else{
                    print("Password incorrect<br>");
                    var_dump($hashed_password);
                    print("<br>".$row['password']);
                }
            }else{
                print("no user Found");
            }
        }
    }else{
        print("no data Found<br>");
    }
}else
{
    $sql = "SELECT * FROM chartUser where uname = '".$uname."'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0){
        print("User already created");
    }else{
        $sql = 'INSERT INTO chartUser VALUES (null,"'.$uname.'","'.$hashed_password.'")';
        if (mysqli_query($conn, $sql)) {
         echo "New record created successfully";
         $_SESSION['uname'] = "$uname";
         header('location:http://localhost/ChartDraw/index.php');
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }
}

mysqli_close($conn); 
header('location:http://localhost/ChartDraw/index.php');
?>
