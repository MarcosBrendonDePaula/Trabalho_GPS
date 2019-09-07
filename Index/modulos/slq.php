<?php
	class slq{
		private $conexao;
		private $host;
		private $user;
		private $pass;
		private $db;
		sql($con,$hos,$usr,$pas,$db){
			$this->conexao=$con;
			$this->host=$hos;
			$this->user=$usr;
			$this->pass=$pas;
			$this->db=$db;
		}
		public function Conectar(){
			$this->conexao = new mysqli($host,$user,$senha,$db);
			if($this->conexao->connect_errno){
				echo "<h1>Falha de conexão!</h1>";
				return false;
			}	
			return true;
		}
	}
?>