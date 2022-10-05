<h1>Cadastrar Reserva</h1>
<form action="?page=reserva-salvar" method="POST">
	<input type="hidden" name="acao" value="cadastrar">
	<div class="mb-3">
		<label>Livros</label>
		<select name="livros_id_livros" class="form-control">
			<option> Livro</option>
		<?php
			$sql = "SELECT * FROM livro";

			$res = $conn->query($sql) or die($conn->error);

			if($res->num_rows > 0){
				while($row = $res->fetch_object()){
					print "<option value='".$row->id_livro."'>";
					print $row->titulo_livro."</option>";
				}
			}else{
				print "Não há livros cadastrados";
			}
		?>
		</select>
		<div class="mb-3">
	<div class="mb-3">
		<label>Empréstimo:</label>
		<input type="date" name="data_emprestimo" class="form-control">
	</div>
	<div class="mb-3">
		<label>Devolução:</label>
		<input type="date" name="data_devolucao" class="form-control">
	</div>
	<div class="mb-3">
		<button type="submit" class="btn btn-success">Enviar</button>
		<button type="reset" class="btn btn-success">Redefinir</button>
 	</div>
</form>