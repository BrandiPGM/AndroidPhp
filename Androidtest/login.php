<?php
require_once 'conn.inc.php';
header('content-Type: application/json ');
$user_name = filter_var($_POST["Username"],FILTER_SANITIZE_STRING);
$user_pass = filter_var($_POST["password"], FILTER_SANITIZE_STRING);

$cnn = getConnexion('my_db');
$sql = "SELECT Username, Password, Role FROM table1 WHERE username like :username and Password like :password";
$stmt = $cnn->prepare($sql);
$stmt->bindValue(':username', $user_name, PDO::PARAM_STR);
$stmt->bindValue(':password', $user_pass, PDO::PARAM_STR);
$stmt->execute();
$ligne = $stmt->fetch(PDO::FETCH_OBJ);

if(!$ligne)
{
	echo 'false';
	exit;
}

if($stmt->rowCount()!=0)
{
	echo 'Bienvenue '. $ligne->Username. ' vous etes '. $ligne->Role;
}
else
{
	echo json_encode('false');
	exit();
}
?>