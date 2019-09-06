<html>
    <head>
        <link rel="stylesheet" href="inpUsers.css">
		<?php
			include("modulos/conexao.php");
			$db = Connect("127.0.0.1","root","vertrigo","site");
			$tuplas = sqlCmd($db,"SELECT * FROM usuario");
		?>
	</head>
    <body>
	<div>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>Nome</td>
                <td>Email</td>
                <td>Senha</td>
            </tr>
            <?php 
				while($dados = sqlGet($tuplas)){ ?>
					<tr>
						<td><?php echo $dados["ID"]; ?></td>
						<td><?php echo $dados["Nome"]; ?></td>
						<td><?php echo $dados["Email"]; ?></td>
						<td><?php echo $dados["Senha"]; ?></td>
					</tr>
			<?php } ?>
        </table>
	</div>
    </body>
</html>