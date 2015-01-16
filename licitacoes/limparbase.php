
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

$result = mysql_query("DELETE FROM `iwk5c_visualizadores`WHERE id=39" , $conexao);
$result = mysql_query("DELETE FROM `iwk5c_visualizadores`WHERE id=47" , $conexao);
$result = mysql_query("DELETE FROM `iwk5c_visualizadores`WHERE id=65" , $conexao);

//$result = mysql_query("DELETE FROM `iwk5c_visualizadores`WHERE id=2" , $conexao);



?>
</body>
</html>