<?php
	include("modulos/conexao.php");
	$db = Connect("127.0.0.1","root","vertrigo","site");
	$tuplas = sqlCmd($db,"SELECT * FROM `curriculo`");
?>
<html lang="en">
	<link rel="stylesheet" href="Brelatorio.css">
    <div id="BuscaDiv">
	<form id = 'find' action="relatorio.php" method="post">
        <input type="text" name="Email" placeholder="Email">
        <button name="">Buscar</button>
    </form>
	</div>
    <script type="text/javascript" src="autentication.js"></script>
	<div id="listaEmails">
		<span id="Emails">Emails Cadastrados</span>
		<?php 
			while($atual = sqlGet($tuplas)){ ?>
			<div class="divDado">
			<span> Email: <?php echo $atual['Email']; ?><span>
			</div>
			<?php } ?>
	</div>
</html>