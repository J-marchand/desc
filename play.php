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

$pdo->exec('SET NAME UTF8');

$query = $pdo->prepare
(
    'SELECT 
        *
    FROM 
        `users`  
    INNER JOIN
        `match`
    ON
        `users.id` = `liked_id`      
    WHERE 
        `gender` = ?
    AND
        `matched` != "waiting" '

);

$query->execute([ $searchGender ]);

$userMatch = $query->fetchAll(PDO::FETCH_ASSOC);

var_dump($userMatch);

if($userMatch == false){

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
}
















$template = 'www/play';
include 'layout.phtml';

?>