<?php
require_once 'conn.inc.php';
header('content-Type: application/json ');

$cnn = getConnexion('my_db');
$sql = "SELECT * FROM table1 ";
$stmt = $cnn->prepare($sql);
$stmt->execute();
$ligne = $stmt->fetch(PDO::FETCH_OBJ);

if(!$ligne)
{
	echo 'false';
	exit;
}


//Méthode brute force
echo '{"users":['.json_encode($ligne);
while($ligne = $stmt->fetch(PDO::FETCH_OBJ))
{
	echo ','.json_encode($ligne);
}
echo ']}';


?>