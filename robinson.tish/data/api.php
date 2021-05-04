<?php

function makeConn() {
   include_once "auth.php";
   try {
      $conn = new PDO(...Auth());
      $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
      return $conn;
   } catch(PDOException $e) {
      die('{"error":"Connection Error: '.$e->getMessage().'"}');
   }
}


function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(PDO::FETCH_OBJ))
      $a[] = $row;
   return $a;
}


// connection, prepared statement, parameters
function makeQuery($c,$ps,$p,$makeResults=true) {
   try {
      if(count($p)) {
         $stmt = $c->prepare($ps);
         $stmt->execute($p);
      } else {
         $stmt = $c->query($ps);
      }

      $r = $makeResults ? fetchAll($stmt) : [];

      return [
         "result"=>$r
      ];
   } catch(PDOException $e) {
      return ["error"=>"Connection Error: ".$e->getMessage()];
   }
}

function makeStatement($data) {
   $c = makeConn();
   $t = $data->type;
   $p = $data->params;

   switch($t) {
      case "users_all":
         return makeQuery($c,"SELECT * FROM `track_202130_users`",$p);
      case "animals_all":
         return makeQuery($c,"SELECT * FROM `track_202130_animals`",$p);
      case "locations_all":
         return makeQuery($c,"SELECT * FROM `track_202130_locations`",$p);


      case "user_by_id":
         return makeQuery($c,"SELECT * FROM `track_202130_users` WHERE id=?",$p);
      case "animal_by_id":
         return makeQuery($c,"SELECT * FROM `track_202130_animals` WHERE id=?",$p);
      case "location_by_id":
         return makeQuery($c,"SELECT * FROM `track_202130_locations` WHERE id=?",$p);


      case "animals_by_user_id":
         return makeQuery($c,"SELECT * FROM `track_202130_animals` WHERE user_id=?",$p);
      case "locations_by_animal_id":
         return makeQuery($c,"SELECT * FROM `track_202130_locations` WHERE animal_id=?",$p);

      case "recent_locations":
         return makeQuery($c,"SELECT *
            FROM `track_202130_animals` a
            RIGHT JOIN (
               SELECT * FROM `track_202130_locations`
               ORDER BY `date_create` DESC
            ) l
            ON a.id = l.animal_id
            WHERE a.user_id=?
            GROUP BY l.animal_id
            ",$p);


      case "check_signin":
         return makeQuery($c,"SELECT id FROM `track_202130_users` WHERE `username`=? AND `password`=md5(?)",$p);


      /* CRUD */

      /* INSERT STATEMENTS */
      case "insert_user":
         $r = makeQuery($c,"SELECT id FROM `track_202130_users` WHERE `email`=?",[$p[0]]);
         if(count($r['result']))
            return ["error"=>"Email already exists"];

         $r = makeQuery($c,"INSERT INTO
            `track_202130_users`
            (`email`,`password`,`date_create`)
            VALUES
            (?, md5(?), NOW())
            ",$p,false);
         return ["id"=>$c->lastInsertId()];

      case "insert_animal":
         $r = makeQuery($c,"INSERT INTO
            `track_202130_animals`
            (`user_id`,`name`,`type`,`breed`,`description`,`img`,`date_create`)
            VALUES
            (?,?,?,?,?,'https://via.placeholder.com/500/?text=Animal',NOW())
            ",$p,false);
         return ["id"=>$c->lastInsertId()];

      case "insert_location":
         $r = makeQuery($c,"INSERT INTO
            `track_202130_locations`
            (`animal_id`,`lat`,`lng`,`description`,`photo`,`icon`,`date_create`)
            VALUES
            (?,?,?,?,'https://via.placeholder.com/500/?text=Photo','https://via.placeholder.com/100/?text=Icon',NOW())
            ",$p,false);
         return ["id"=>$c->lastInsertId()];


      /* UPDATE STATEMENTS */
      case "update_user_initial":
         $r = makeQuery($c,"SELECT id FROM `track_202130_users` WHERE `username`=?",[$p[0]]);
         if(count($r['result']))
            return ["error"=>"Username already exists"];

         $r = makeQuery($c,"UPDATE
            `track_202130_users`
            SET
            `username` = ?,
            `name` = ?,
            `img` = 'https://via.placeholder.com/500/?text=Profile'
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

      case "update_user":
         $r = makeQuery($c,"UPDATE
            `track_202130_users`
            SET
            `username` = ?,
            `name` = ?,
            `email` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

      case "update_user_password":
         $r = makeQuery($c,"UPDATE
            `track_202130_users`
            SET
            `password` = md5(?)
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

      case "update_animal":
         $r = makeQuery($c,"UPDATE
            `track_202130_animals`
            SET
            `name` = ?,
            `type` = ?,
            `breed` = ?,
            `description` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

      case "update_location":
         $r = makeQuery($c,"UPDATE
            `track_202130_locations`
            SET
            `description` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];


      default:
         return ["error"=>"No Matched Type"];
   }
}

$data = json_decode(file_get_contents("php://input"));

echo json_encode(
   makeStatement($data),
   JSON_NUMERIC_CHECK
);