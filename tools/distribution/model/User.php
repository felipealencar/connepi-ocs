<?php
class User extends Model{
	
	var $user_id;
	var $username;
	var $password;
	var $name;
	var $email;
	var $paper = array();

	function setUserId($id){
		$this->user_id = $id;
	}
	
	function getUserId(){
		return $this->user_id;
	}
	
	function setUsername($username){
		$this->username = $username;
	}

	function getUsername(){
		return $this->username;
	}
	
	function setPassword($password){
		$this->password = $password;
	}
	
	function getPasswrod(){
		return $this->password;
	}
	
	function setName($name){
		$this->name = $name;
	}
	
	function getName(){
		return $this->name;
	}
	
	function setPaper($paper_id, $title){
		$this->paper["$paper_id"] = $title;
	}
	
}
