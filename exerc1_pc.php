<! DOCTYPE html>

<html> <cabeça>
<meta charset = "utf-8" />

<title> Exibe os feedbacks </ title>

</ head> <body>
<h1> Feedback do Usuário </ h1>

<? php
// Detalhes da conexão do banco de dados para mySQL
$ host = 'localhost'; $ user = 'aluno'; $ passw = 'aluno'; $ dbname = '';



// Faça uma conexão com o banco de dados
$ conn = mysqli_connect ($ host, $ user, $ passw, $ dbname) ou morre
("Incapaz de conectar!");
// Cria a consulta SQL
$ query = "SELECT user_id, e-mail, nome, escola, função de membros ORDER BY email ASC";
$ result = mysqli_query ($ conn, $ query) ou die ("Erro na consulta");

// Buscar o resultado em um array associativo
while ($ row = mysqli_fetch_assoc ($ result)) {
$ table [] = $ linha; // adiciona cada linha ao array da tabela
}

?>



<table>
<tr>
<td> <strong> Membro </ strong> </ td>
<td width = "10"> & nbsp; </ td>
<td> <strong> E-mail </ strong> </ td>
<td width = "10"> & nbsp; </ td>
<td> <strong> Escola </ strong> </ td>
<td width = "10"> & nbsp; </ td>
<td> <strong> Estado </ strong> </ td>
<td width = "10"> & nbsp; </ td>
<td> <strong> Função </ strong> </ td>
<td width = "10"> & nbsp; </ td>
<td> <strong> Numero da equipe </ strong> </ td>
</ tr>
<? php

if ($ table) {// Verifique se existem linhas a serem exibidas
// Recupera cada elemento do array
foreach ($ table as $ d_row) {

?>

<tr>
<td> <? php echo ($ d_row ["nome"]); ?> </ td>
<td width = "10"> & nbsp; </ td>
<td> <? php echo ($ d_row ["email"]); ?> </ td>
<td width = "10"> & nbsp; </ td>
<td> <? php echo ($ d_row ["escola"]); ?> </ td>
<td width = "10"> & nbsp; </ td>
<td> <? php echo ($ d_row ["função"]); ?> </ td>
<td width = "10"> & nbsp; </ td>
<td> <? php echo ($ d_row ["número da equipe"]); ?> </ td>

</ tr>

<? php

}
}

?>
</ table>

<p> Número de Registros: <? php echo (mysqli_num_rows ($ result)); ?> </ p>

<? php

mysqli_close ($ conn);

?>
</ body>
</ html>
