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
				echo "<h1>!Logado!</h1>";
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
	function RegistroVaga($banco,$et,$fotoId){
		$RegistroEntradas="(\"".$et['Nome']."\"".",\"".$et['Endereco']."\"".",\"".$et['Email']."\"".","."\"".$et['CPF']."\",\"".$fotoId."\"".",\"".$et['sexo']."\","."\"".$et['Curriculo']."\",".$et['Idade'].")";
		var_dump($RegistroEntradas);
		sqlCmd($banco,"INSERT INTO `curriculo`(`Nome`, `Endereco`, `Email`, `Cpf`, `Foto`, `Sexo`, `Curriculo`, `Idade`) VALUES ".$RegistroEntradas);
		header("Location: teste.html");
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
	if(strcasecmp($_POST['Mode'],"CadCu")==0){
		$uploaddir = './fotos/';
		$uploadfile = $uploaddir . basename($_FILES['userfile']['name']);
		if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile))
			RegistroVaga($db,$_POST,$_FILES['userfile']['name']);
	}
	
?>