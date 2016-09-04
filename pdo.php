<?php

class DB extends PDO
{
    private static $db = null;

    public static function init()
    {
        if (is_null(self::$db) === true)
        {
            self::$db = new PDO( "pgsql:dbname=ocs; user=postgres; password=2165162; host=localhost; port=5432" );
        }

        return self::$db;
    }

    public static function emailExiste($email){
      if($result = self::$db->query("SELECT user_id FROM users WHERE email = '$email'")->fetchAll(PDO::FETCH_ASSOC)){
        return 1;
      } else {
        return 0;
      }
    }

    public static function inserirDuplicado($dados){
      if(!$result = self::$db->query("SELECT user_id FROM _users WHERE email = '" .$dados['email']. "'")->fetchAll(PDO::FETCH_ASSOC)){
        $sql = 'INSERT INTO _users (username, password, salutation, first_name, last_name, initials, gender, affiliation, email, country, interests, locales) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)';
        self::$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = self::$db->prepare($sql);
        $stmt->bindValue(1, $dados['username']);
        $stmt->bindValue(2, $dados['password']);
        $stmt->bindValue(3, $dados['salutation']);
        $stmt->bindValue(4, $dados['first_name']);
        $stmt->bindValue(5, $dados['last_name']);
        $stmt->bindValue(6, $dados['initials']);
        $stmt->bindValue(7, $dados['gender']);
        $stmt->bindValue(8, $dados['affiliation']);
        $stmt->bindValue(9, $dados['email']);
        $stmt->bindValue(10, $dados['country']);
        $stmt->bindValue(11, $dados['interests']);
        $stmt->bindValue(12, $dados['locales']);
        if($stmt->execute()){
          return 1;
        } else {
          return 0;
        }
      } else {
        echo "User: <b>{$dados['email']}</b> já inserido em <b>_users</b>";
        return 1;
      }
    }

    public static function getInterests($interests){
      $tmp = unserialize($interests);
      $result = "";
      if($tmp['grande_area']):
        $grande_area = self::$db->query("SELECT nome_area FROM site_grandes_areas WHERE cod_area = {$tmp['grande_area']}")->fetchAll(PDO::FETCH_ASSOC);
        $result .= $grande_area[0]['nome_area'];
      endif;
      if($tmp['area']):
        $area = self::$db->query("SELECT nome_area FROM site_areas_conhecimento WHERE cod_area = {$tmp['area']}")->fetchAll(PDO::FETCH_ASSOC);
        $result .= ', ' . $area[0]['nome_area'];
      endif;
      if($tmp['sub_areas']):
        $sub_area = self::$db->query("SELECT nome_sub_area FROM site_sub_areas WHERE cod_sub_area = {$tmp['sub_areas']}")->fetchAll(PDO::FETCH_ASSOC);
        $result .= ', ' . $sub_area[0]['nome_sub_area'];
      endif;
      if($tmp['especialides']):
        $especialidade = self::$db->query("SELECT nome_especialidade FROM site_especialidades WHERE cod_especialidade = {$tmp['especialides']}")->fetchAll(PDO::FETCH_ASSOC);
        $result .= ', ' . $especialidade[0]['nome_especialidade'];
      endif;

      return $result;
    }
}

?>
