<?php
	/*Conecta Ao Banco SQL e Retorna O Objeto de Conexão Ao BD*/
	function Connect($host,$user,$senha,$db){
		$Db =  new mysqli($host,$user,$senha,$db);
		if($Db->connect_errno)
			echo "<h1>Falha de conexão!</h1>";
		return $Db;
	}
	/* Executa sql command | Para Buscas Retorna array de tuplas da Tabela, necessario passar o s parametros (DB(Banco de dados),sql(Codigo de acesso sql))*/
	function sqlCmd($db,$sqlCode){
		return $db->query($sqlCode);
	}
	/* Retorna uma tupla da lista de tuplas, necessario passar as tuplas / funciona sequencialmente*/
	function sqlGet($tuplas){
		return $tuplas->fetch_array();
	}
	/* retorna um campo especifico da tupla selecionada*/
	function getCampo($tupla,$campo){
		return $campo["elemento"];
	}
?>