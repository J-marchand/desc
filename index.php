<?php

session_start();

var_dump($_SESSION);

$template = 'www/index';
include 'layout.phtml';

?>