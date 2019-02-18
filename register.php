<?php

session_start();

var_dump($_POST);

include 'application/bdd-connexion.php';

if(empty($_POST) == false){

    $fisrtName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $age = $_POST['age'];
    $desc = $_POST['desc'];
    $radio = $_POST['radio'];

    $query =$pdo->prepare
    (
        'INSERT INTO 
            `users`(`first_name`, `last_name`, `age`, `description`, `gender`, `create_timestamp`, `email`, `password`) 
        VALUES (? ,?, ?, ?, ?, NOW(), ?, ?)'
    );
    
    $query->execute([$fisrtName, $lastName, $age, $desc, $radio, $email, $password]);

    header('Location: login.php');
    exit();
}



$template = 'www/register';
include 'layout.phtml';

?>