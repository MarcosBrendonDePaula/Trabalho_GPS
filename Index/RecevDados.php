<?php
	function Command($banco,$dados){
		sqlCmd($banco,$dados["Comando"]);
		
		header("Location: Executor.html");
	}
	
	function Logar($banco,$login,$senha){
		$s="SELECT * FROM `usuario` where Email=".$login;
		$secao = sqlCmd($banco,"SELECT * FROM `usuario` where Email like '".$login."'");	
		while($atual=sqlGet($secao)){
			if(strcasecmp($atual['Senha'],$senha)==0){
				header("Location: testeLogado.html");
				return;
			}
			else{
				header("Location: login_errado.html");
				return;
			}
		}
		header("Location: login_errado.html");
		return;
	}
	
	function Registrar($banco,$et){
		$RegistroEntradas="(\"".$et['Nome']." ".$et['Sobrenome']."\"".","."\"".$et['Senha']."\"".","."\"".$et['Email']."\")";
		var_dump($RegistroEntradas);
		sqlCmd($banco,"INSERT INTO `usuario` (`Nome`,`Senha`,`Email`) VALUES ".$RegistroEntradas);
		header("Location: teste.html");
	}
	
	include("modulos/conexao.php");
	$db = Connect("127.0.0.1","root","vertrigo","site");
	mysql_set_charset('utf8',$db);

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