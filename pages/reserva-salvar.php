<?php
	switch ($_REQUEST["acao"]) {
		case 'cadastrar':
			$dataE = $_POST["data_emprestimo"];
			$dataD = $_POST["data_devolucao"];

			$sql = "INSERT INTO reserva (data_emprestimo, data_devolucao)
			 VALUES ('{$dataE}','{$dataD}')";

			$res = $conn->query($sql) or die($conn->error);

			if($res==true){
				print "<script>alert('Cadastrado com sucesso');</script>";
				print "<script>location.href='?page=reserva-listar';</script>";
			}else{
				print "<script>alert('Não foi possível cadastrar');</script>";
				print "<script>location.href='?page=reserva-listar';</script>";
			}
			break;
		
		case 'editar':
			#code...
			break;

		case 'excluir':
			#code...
			break;
	}