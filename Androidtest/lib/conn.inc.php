<?php 
    
function getConnexion($databaseName) {
    try{
        $dbh = new PDO('mysql:host=localhost;dbname='.$databaseName, 'root','');
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $dbh->exec("SET CHARACTER SET utf8");
        return $dbh;
    } catch (PDOException $e) {
        echo 'Connexion échouée : '. $e->getMessage();
    }
}

?>