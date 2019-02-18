<?php

session_start();


include 'application/bdd-connexion.php';

if(empty($_POST) == false){

    $pdo->exec('SET NAME UTF8');

    $query = $pdo->prepare
    (
        'SELECT 
            *

        FROM 
            users
        
        WHERE 
            email = ?'
    );

    $query->execute( [$_POST['email']] );

    $user = $query->fetch(PDO::FETCH_ASSOC);

    if($_POST['password'] == $user['password']){

        $_SESSION['firstName']  = $user['first_name'];
        $_SESSION['lastName']   = $user['last_name'];
        $_SESSION['email']      = $user['email'];
        $_SESSION['password']   = $user['password'];
        $_SESSION['age']        = $user['age'];
        $_SESSION['desc']       = $user['description'];
        $_SESSION['genre']      = $user['gender'];
        $_SESSION['creation']   = $user['create_timestamp'];
        $_SESSION['user_id']    = $user['id'];

        var_dump($_SESSION);

            header('Location: play.php');
            exit();
    }
}

$template = 'www/login';
include 'layout.phtml';

?>