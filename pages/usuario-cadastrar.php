<h1>Cadastrar Usuário</h1>
<form action="?page=usuario-salvar" method="POST">
	<input type="hidden" name="acao" value="cadastrar">
	<div class="mb-3">
		<label>Nome:</label>
		<input type="text" name="nome_aluno" placeholder="Digite seu nome " class="form-control">
	</div>
	<div class="mb-3">
		<label>Endereço:</label>
		<input type="text" name="end_aluno" placeholder="Digite sua cidade:" class="form-control">
	</div>
	<div class="mb-3">
		<label>E-mail:</label>
		<input type="text" name="email_aluno" placeholder=" e-mail:" class="form-control">
	</div>
	<div class="mb-3">
		<label>Telefone:</label>
		<input type="number" name="fone_aluno" placeholder=" Contato:" class="form-control">
	</div>
	<div class="mb-3">
		<label>Matricula:</label>
		<input type="number" name="rgm_aluno" placeholder=" RGM:" class="form-control">
	</div>
	<div class="mb-3">
		<label>Gênero:</label>
		<input type="text" name="genero_aluno" placeholder="Gênero:" class="form-control">
	</div>
	<div class="mb-3">
		<label>Nascimento:</label>
		<input type="date" name="data_nasc_aluno" class="form-control">
	</div>
	<div class="mb-3">
		<button type="submit" class="btn btn-success">Enviar</button>
		<button type="reset" class="btn btn-success">Redefinir</button>
	</div>
</form>