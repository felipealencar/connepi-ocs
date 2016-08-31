<?php
  $pdo = new PDO("pgsql:dbname=ocs; user=postgres; password=2165162; host=localhost; port=5432");
  $data = $pdo->query('SELECT * FROM ies')->fetchAll(PDO::FETCH_ASSOC);
  echo json_encode($data);
  exit(0);
?>
