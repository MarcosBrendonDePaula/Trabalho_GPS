<?php
	function Command($banco,$dados){
		sqlCmd($banco,$dados["Comando"]);
	}
	include("modulos/conexao.php");
	$db = Connect("127.0.0.1","root","vertrigo","site");
	var_dump($_POST);
	if($_POST['type']="Comando"){
		Command($db,$_POST);
	}
?>