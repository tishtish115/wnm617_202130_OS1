<?php

function Auth() {
   $host="";
   $user="";
   $pass="";
   $dbname="";
   return [
      "mysql:host=$host;dbname=$dbname;charset=utf8mb4",
      $user,
      $pass
   ];
}