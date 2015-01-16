<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<?php

$conexao = mysql_connect('10.2.8.27','usr_ctb_govern', 'hb265Fsv');
//$conexao = mysql_connect('localhost','root');
if (!$conexao)
	die ("Erro de conexão com o servidor, o seguinte erro ocorreu -> ".mysql_error());
//conectando com a tabela do banco de dados
$banco = mysql_select_db("bd_ctb_governanca", $conexao);
//$banco = mysql_select_db("ctb_bd", $conexao);
if (!$banco)
	die ("Erro de conexão com banco de dados, o seguinte erro ocorreu -> ".mysql_error());

$result = mysql_query("SELECT * FROM `iwk5c_visualizadores`", $conexao);

if($result) {
echo "<center>Lista de usuarios que obtiveram as licitacoes CTB</center>";
while ($row = mysql_fetch_array($result))
{
    echo "Nome: ". $row['nome'];
    echo  "<br>";
    echo "CPF/CNPJ: ". $row['cpfcnpj'];
    echo "<br>";
    echo "Natureza: " . $row['natureza'];
    echo "<br>";
    echo "Endereco: " . $row['endereco'];
    echo "<br>";
    echo "Estado: ". $row['estado'];
    echo "<br>";
    echo "DDD: ". $row['ddd'];
    echo "<br>";
    echo "Telefone: ". $row['telefone'];
    echo "<br>";
    echo "Licitacao escolhida: ". $row['licitacao'];
    echo "<br>";
    echo "Data: ". $row['data'];
    echo "<br>";
    echo "Hora: ". $row['hora'];
    echo "<br>";
    echo "<br>";
}
}
else 
{
  echo "Erro";
}

?>


</html>