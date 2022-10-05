<h1>Listar Reserva</h1>
<?php
	$sql = "SELECT * FROM reserva";
                   
	$res = $conn->query($sql) or die($conn->error);

	$qtd = $res->num_rows;

	print "<p>Encontrou <b>$qtd</b> resultado(s)</p>";

	if($qtd > 0){
		print "<table class='table table-striped table-hover table-bordered'>";
		print "<tr>";
		print "<th>Data de Reserva</th>";
		print "<th>Data de Devolução</th>";
		print "</tr>";
		while($row = $res->fetch_object()){
			print "<tr>";
			print "<td>".$row->data_emprestimo."</td>";
			print "<td>".$row->data_devolucao."</td>";
			print "</tr>";
		}
		print "</table>";
	}else{
		print "<div class='alert alert-danger'>Não há resultados</div>";
	}
?>
