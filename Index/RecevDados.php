<?php
	function Command($banco,$dados){
		sqlCmd($banco,$dados["Comando"]);
	}
	
	function Logar($banco,$login,$senha){
		$s="SELECT * FROM `usuario` where Email=".$login;
		$secao = sqlCmd($banco,"SELECT * FROM `usuario` where Email like '".$login."'");	
		while($atual=sqlGet($secao)){
			if(strcasecmp($atual['Senha'],$senha)==0){
				echo "<h1>!Logado!</h1>";
				return;
			}
			else{
				echo "<h1>!Senha ou Email Errado!</h1>";
				return;
			}
		}
		echo "<h1>!Senha ou Email Errado!</h1>";
		return;
	}
	
	function Registrar($banco,$et){
		$RegistroEntradas="(\"".$et['Usuario']."\"".","."\"".$et['Senha']."\"".","."\"".$et['Email']."\")";
		sqlCmd($banco,"INSERT INTO usuario(Nome,Senha,Email) VALUES ".$RegistroEntradas);
	}
	
	include("modulos/conexao.php");
	$db = Connect("127.0.0.1","root","vertrigo","site");
	if(strcasecmp($_POST['Mode'],"Comando")==0){
		Command($db,$_POST);
	}
	if(strcasecmp($_POST['Mode'],"login")==0){
		Logar($db,$_POST['Uusuario'],$_POST['Usenha']);
	}
	if(strcasecmp($_POST['Mode'],"registro")==0){
		var_dump($_POST);
		Registrar($db,$_POST);
	}
?>