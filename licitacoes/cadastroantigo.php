<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type: content=text/html; charset=ISO-8859-1" />
<title>Licitações - Companhia de Transportes do Estado da Bahia</title>
</head>

<body>
<?php 
// RECEBENDO OS DADOS PREENCHIDOS DO FORMULÁRIO !
$noraz	= $_POST ["noraz"];	//atribuição do campo "nome" vindo do formulário para variavel	
$email	= $_POST ["email"];	//atribuição do campo "email" vindo do formulário para variavel
$ddd	= $_POST ["ddd"];	//atribuição do campo "ddd" vindo do formulário para variavel
$telefone	= $_POST ["telefone"];	//atribuição do campo "telefone" vindo do formulário para variavel
$endereco	= $_POST ["endereco"];	//atribuição do campo "endereco" vindo do formulário para variavel
$cidade	= $_POST ["cidade"];	//atribuição do campo "cidade" vindo do formulário para variavel
$estado	= $_POST ["estado"];	//atribuição do campo "estado" vindo do formulário para variavel	//atribuição do campo "bairro" vindo do formulário para variavel	//atribuição do campo "pais" vindo do formulário para variavel
$natureza	= $_POST ["natureza"];	//atribuição do campo "sexo" vindo do formulário para variavel
$cpfcnpj   =  $_POST["cpfcnpj"];
$licitacao  = $_POST["licitacao"];
$data = date("d/m/y");
$hora = date("H:i");

//$id        =  $_POST["id"];

//Gravando no banco de dados !

//conectando com o localhost - mysql
$conexao = mysql_connect('10.2.8.27','usr_ctb_govern', 'hb265Fsv');
//$conexao = mysql_connect('localhost','root');
if (!$conexao)
	die ("Erro de conexão com o servidor, o seguinte erro ocorreu -> ".mysql_error());
//conectando com a tabela do banco de dados
$banco = mysql_select_db("bd_ctb_governanca", $conexao);
//$banco = mysql_select_db("ctb_bd", $conexao);
if (!$banco)
	die ("Erro de conexão com banco de dados, o seguinte erro ocorreu -> ".mysql_error());


if( ((strcmp ($noraz, "") != 0) && (strcmp ($email, "") != 0) && (strcmp ($ddd, "") != 0) && (strcmp ($noraz, "") != 0) && (strcmp ($telefone, "") != 0) && (strcmp ($endereco, "") != 0) && (strcmp ($cidade, "") != 0) && (strcmp ($estado, "") != 0) && (strcmp ($natureza, "") != 0) && (strcmp ($cpfcnpj, "") != 0) && (strcmp ($licitacao, "") != 0)))
{
  $query = "INSERT INTO `iwk5c_visualizadores` ( `cidade` , `cpfcnpj` , `data`, `ddd` , `email` , `endereco` , `estado`, `hora`, `licitacao` , `natureza` , `nome` , `telefone`) 
  VALUES ('$cidade', '$cpfcnpj', '$data', '$ddd', '$email', '$endereco', '$estado', '$hora', '$licitacao','$natureza', '$noraz', '$telefone' )";
}
else 
{
    $pagina =  "<head>
    <meta http-equiv='Content-Type: content=text/html; charset=ISO-8859-1' />
    <title>Licitações CTB</title>

    <!-- Bootstrap -->
    <link href='css/bootstrap.min.css' rel='stylesheet'>

   </head>
  <body>
  <div class= 'jumbotron'>
  <h1 style='color:#FFFFFF'>Licitacoes CTB</h1>
  <p style='color:#FFFFFF'> Erro na validação do formulario</p>
  </div>
     
    Voce devera preencher todas as informacoes para obter as licitacoes. Se esta mensagem está aparecendo, entao voce esqueceu de preencher algum campo
    <p>Clique <a href='http://www.ctb.ba.gov.br/licitacoes/formulario.html'> aqui </a> para retornar ao formulário</p>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src='js/bootstrap.min.js'></script>
  </body>
";
  echo $pagina;

}

if(mysql_query($query,$conexao))
{

	if(strcmp($licitacao, "Edital pre qualificacao VLT") == 0) 
	{
		
		$pagina = "<html lang='en'>
  <head>
    
   <meta http-equiv='Content-Type: content=text/html; charset=ISO-8859-1' />
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Licitações CTB</title>

    <!-- Bootstrap -->
    <link href='css/bootstrap.min.css' rel='stylesheet'>

   </head>
  <body>
  <div class= 'jumbotron'>
  <h1 style='color:#FFFFFF'>Licitacoes CTB</h1>
  <p style='color:#FFFFFF'>Obrigado por ter respondido ao nosso formulario. As suas informacoes foram gravadas em nosso banco de dados </p>
	</div>
     
     Para acessar o edital da licitacao, clique <a href='http://www.ctb.ba.gov.br/Licitacoes/edital01/edital1.pdf' target='new' >aqui</a> para abrir novamente<br/>

    <p><strong>Anexos: </strong></p>
        <p><a title='Anexo I Paripe Sao Luis.pdf' href='http://www.ctb.ba.gov.br/Licitacoes/edital01/Anexo_I_Paripe_SaoLuis_Brasao.pdf' target='_blank'>Anexo I Paripe São Luís</a></p>
        <p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital01/Projeto_VLT_Calcada_Paripe_Brasao.pdf' target='_blank'>Projeto VLT Calçada Paripe</a></p>
        <p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital01/ProjetoVLT_Calcada_Comercio_Brasao.pdf' target='_blank'>Projeto VLT Calçada Comércio</a></p>  


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src='js/bootstrap.min.js'></script>
  </body>
</html>";

echo $pagina;


		/*echo "<script language='javascript'> 
		window.open('http://www.ctb.ba.gov.br/Licitacoes/Edital%20VLT/Edital%20RDC%20-%20Pr%C3%A9-qualifica%C3%A7%C3%A3o%20Final.pdf', '_blank'); 
		</script>";
		*/
	}
	else if(strcmp($licitacao, "Edital TP 03-2014") == 0)
	{	

		$pagina = "<html lang='en'>
	<head>
    <meta http-equiv='Content-Type: content=text/html; charset=ISO-8859-1' />
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Licitações CTB</title>

    <!-- Bootstrap -->
    <link href='css/bootstrap.min.css' rel='stylesheet'>

   </head>
  <body>
  <div class= 'jumbotron'>
  <h1 style='color:#FFFFFF'>Licitacoes CTB</h1>
  <p style='color:#FFFFFF'>Obrigado por ter respondido ao nosso formulario. As suas informacoes foram gravadas em nosso banco de dados </p>
	</div>
     
    <p> Para acessar o edital da licitação, clique <a href='http://www.ctb.ba.gov.br/Licitacoes/edital02/editalTP03.pdf' target='new'>aqui</a><br/ </p>

    <p><strong>Anexos:</strong></p>
	<p><em>Tramo III da Linha 1 do Sistema Metroviario</em></p>
	<p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital02/METRO/Planta_geometrica02.pdf' target='_blank'>Planta Geral Geometrico 02</a></p>
	<p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital02/METRO/SAL_Volume4_R01.pdf' target='_blank'>SAL_Volume 4 R01</a></p>
	<p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital02/METRO/SAL_Volume3_R02.pdf' target='_blank'>SAL_Volume 3 R02</a></p>
	<p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital02/METRO/SAL_Volume2_R04.pdf' target='_blank'>SAL_Volume 2 R04</a></p>
	<p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital02/METRO/SAL_Volume1_R05.pdf' target='_blank'>SAL_Volume 1 R05</a></p>
	<p> </p>
	<p><em>VLT Comércio - Sao Luis</em></p>
	<p><a title='Anexo I Paripe Sao Luis.pdf' href='http://www.ctb.ba.gov.br/Licitacoes/edital01/Anexo_I_Paripe_SaoLuis_Brasao.pdf' target='_blank'>Anexo I Paripe São Luís</a></p>
    <p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital01/Projeto_VLT_Calcada_Paripe_Brasao.pdf' target='_blank'>Projeto VLT Calçada Paripe</a></p>
    <p><a href='http://www.ctb.ba.gov.br/Licitacoes/edital01/ProjetoVLT_Calcada_Comercio_Brasao.pdf' target='_blank'>Projeto VLT Calçada Comércio</a></p>  

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src='js/bootstrap.min.js'></script>
  </body>
</html>";
	
	echo $pagina;
	}
	else {
	}
	//echo "Obrigado por ter respondido ao nosso formulário. Para baixar a Licitação, clique aqui: $data $hora $licitacao";
}
else {
	echo mysql_error();	
}
?>

</body>
</html>
