<!DOCTYPE html>
<html>

<head>

</head>




<body>

<?php

include 'bd';
 
$nome   =  $_POST['nome'];
$cidade  = $_POST['cidade'];  
$escola  = $_POST['escola'];
$email   = $_POST['email'];  
$estado  = $_POST['estado'];  

$sql = "INSERT INTO cadastro VALUES";
$sql = "('$nome','$cidade','$escola','$email','$estado')";

if ($conexao->query($sql) === TRUE ) {
    echo "Usuário incluido com sucesso!";

} else {
   echo "Erro;" . $sql . "<br>" . $conexao->error;
}
 $conexao->close(); ?>

 </body>

 <html>
