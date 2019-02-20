<?php 


session_start();

$searchGender = '';

if($_SESSION['genre'] == 'H'){
    $searchGender = 'F';

} 

if($_SESSION['genre'] == 'F') {
    $searchGender = 'H';
}

include 'application/bdd-connexion.php';

    if(empty($_GET) == true){

    $pdo->exec('SET NAME UTF8');

    $query = $pdo->prepare
    (
        'SELECT 
            *
        FROM 
            users  
        WHERE 
            gender = ?'
    );    

    $query->execute([ $searchGender ]);

    $userMatch = $query->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($userMatch);
    exit();
    }

?>