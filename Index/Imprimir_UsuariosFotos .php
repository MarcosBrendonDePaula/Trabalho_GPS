<html>
    <head>
        <link rel="stylesheet" href="inpUsers.css">
		<?php
			include("modulos/conexao.php");
			$db = Connect("127.0.0.1","root","vertrigo","site");
			$tuplas = sqlCmd($db,"SELECT * FROM usuario");
		?>
		<title>Listagem De Clientes Cadrastados</title>
	</head>
    <body>
	<div>
		<h1>Lista de Cadastros Efetuados</h1>
        <table border="2">
            <tr>
                <td class="campo">ID</td>
                <td class="campo">Nome</td>
                <td class="campo">Email</td>
                <td class="campo">Senha</td>
				<td class="campo">Foto</td>
            </tr>
            <?php 
				while($dados = sqlGet($tuplas)){ ?>
					<tr>
						<td class="campo"><?php echo $dados["ID"]; ?></td>
						<td class="campo"><?php echo $dados["Nome"]; ?></td>
						<td class="campo"><?php echo $dados["Email"]; ?></td>
						<td class="campo senha"><?php echo $dados["Senha"]; ?></td>
						<td class="campo"><img style="width:100%;height:100%;" src="<?php echo "/fotos/".$dados["FotoId"]; ?>"></td>
					</tr>
			<?php } ?>
        </table>
	</div>
    </body>
</html>