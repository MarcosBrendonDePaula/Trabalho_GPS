<?php
    include("modulos/conexao.php");
    $db = Connect("127.0.0.1","root","vertrigo","site");
    $rl = sqlCmd($db,"select * from curriculo where Email = '".$_POST['Email']."'");
    $tupla = sqlGet($rl);
?>
<html>
    <head>
        <link rel="stylesheet" href="relatorio.css">
    </head>
    <body>
    <div id="Container">
        <img id="foto" src=" <?php echo "/fotos/".$tupla['Foto']; ?>" width=800px; >
        <span id="nome" style="font-size: 30px;">Nome: <?php echo $tupla['Nome']; ?> </span>
        <span id="Idade" style="font-size: 30px;">Idade: <?php echo $tupla['Idade'];?></span>
        <span id="Sexo" style="font-size: 30px;">Sexo: <?php echo $tupla['Sexo'] ?></span>
        <span id="end" style="font-size: 30px;">Endereço: <?php echo $tupla['Endereco'] ?></span>
        <span id="cpf" style="font-size: 30px;">Cpf: <?php echo $tupla['Cpf'] ?></span>
        <span id="email" style="font-size: 30px;">Email: <?php echo $tupla['Email'] ?></span>
        <span style="font-size: 30px;">Curriculo:</span>
		<div style="margin-left:20px; font-size: 30px;border: 4px solid black;">
			<textarea id="curriculo" style="font-size: 28px;" rows="40" cols="86"><?php echo $tupla['Curriculo']; ?></textarea>
		</div>
    </div>
    </body>
</html>