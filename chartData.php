<?php
header('Content-Type: application/json');

$val1 = array();
$val2 = array();
$val3 = array();
$servername = "";
$username = "";
$password = '""';
$db = "";

$conn = mysqli_connect($servername, $username, $password, $db);
if (!$conn) {
  die("Connection failed: ".mysqli_connect_error());
}
$sql = "SELECT * from ChartData";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0){
  while ($row = mysqli_fetch_assoc($result)) {
    array_push($val1,$row['temp1']);
    array_push($val2,$row['temp2']);
    array_push($val3,$row['date']);
  }
}

$data = array('graph1' => $val1, 'graph2' => $val2, 'label' => $val3);
print json_encode($data);

?>
