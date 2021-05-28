<?php

function Auth() {
   $host="localhost";
   $user="anotherl_test1";
   $pass="askgodwymylife777";
   $dbname="anotherl_butterfly_tracker";
   return [
      "mysql:host=$host;dbname=$dbname;charset=utf8mb4",
      $user,
      $pass
   ];
}