<?php  

include "db_conn.php";

$sql = "SELECT * FROM usuario ORDER BY id_usuario DESC";
$result = mysqli_query($conn, $sql);