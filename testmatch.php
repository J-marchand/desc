<?php

session_start();

var_dump($_SESSION);




include 'application/bdd-connexion.php';

if(empty($_POST) == false){
    var_dump($_POST);


    $user_id = $_SESSION['user_id'];
    $user_like = 'L';
    $liked_id = $_POST['liked_id'];
    
    $pdo->exec('SET NAME UTF8');

    $query = $pdo->prepare
    (
        'SELECT
            *
        FROM
            `match`
        WHERE 
            `liked_id`=?
        AND 
            `user_id`=?'       
    );

    $query->execute([$user_id, $liked_id ]);

    $match = $query->fetch(PDO::FETCH_ASSOC);

    var_dump($match);

    if($match == false){

        $query = $pdo->prepare
        (
            'INSERT INTO 
                `match`(`user_id`, `user_like`, `liked_id`, `licked_like`, `matched`) 
            VALUES 
                (?, ?, ?, "waiting", "waiting")'
        );

        $query->execute([$user_id, $user_like, $liked_id]);

        header('Location: play.php');
        exit();        
    } else {

       if ( $match['user_like'] == "L" && $user_like == "L") {

            $query = $pdo->prepare
            (
                'UPDATE
                    `match` SET licked_like = "L", matched = "match"
                WHERE id = ?'
            );

            $query->execute([$match['id']]);
            
        $query = $pdo->prepare
        (
            'UPDATE
                `match` SET licked_like = "L", matched = "no match"
            WHERE id = ?'
        );

        $query->execute([$match['id']]);
       }

        header('Location: play.php');
        exit(); 
    }
}






