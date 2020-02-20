
<?php include_once("TOP.html"); ?>

<body>


  <?php

  include_once("../../conexao2.php");
?>


    <h2 class="title">Estoque Almoxarifado</h2>
      </div>
      <div class="divtable  table-responsive">
        <table class="table table-responsive  " >
          <tr class="active" ">

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Paginação</title>

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
  </head>
  <body>

    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4">
                <?php



        if (isset($_GET['atualizado'])) {
          echo '<div id="alerta" class="alert alert-success" role="alert">
                Produto <b> </b> atualizado com sucesso!
                </div>';

        }
        if (isset($_GET['excluido'])) {
          echo '<div id="alerta" class="alert alert-danger" role="alert">
                Produto <b></b> excluido com sucesso!
                </div>';
        }
        if (isset($_GET['cadastrado'])) {
          echo '<div id="alerta" class="alert alert-success" role="alert">
                Produto cadastrado com sucesso!
                </div>';
        }











if(isset($_GET['nomeitem'])){

  @$nomeitem=$_GET['nomeitem'];
}


if(isset($_GET['loc'])){

  @$loc=$_GET['loc'];
}


if(isset($_GET['tipo'])){

  @$tipo=$_GET['tipo'];
}



if(isset($_GET['pagina'])){
@$pagina=$_GET['pagina'];
}

$itens_por_pagina=10;


if($nomeitem=="todos itens"){

    if($loc=="Todas as Localizações"){
    $inicio=($itens_por_pagina*$pagina)-$itens_por_pagina;
$sql_code = "select NOMEITEM, LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms from controle LIMIT $inicio , $itens_por_pagina";
$execute = $mysqli->query($sql_code) or die($mysqli->error);
$produto = $execute->fetch_assoc();
$num = $execute->num_rows;

  }else{
    $inicio=($itens_por_pagina*$pagina)-$itens_por_pagina;
$sql_code = "select NOMEITEM, LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms from controle where LOCALIZACAO='$loc'  LIMIT $inicio , $itens_por_pagina";
$execute = $mysqli->query($sql_code) or die($mysqli->error);
$produto = $execute->fetch_assoc();
$num = $execute->num_rows;
if($num==0){

   echo '<div id="alerta" class="alert alert-danger" role="alert">
                Não existem Itens Cadastrados neste local!
                </div>';
}




  }

}else
{

$inicio=($itens_por_pagina*$pagina)-$itens_por_pagina;
$sql_code = "select NOMEITEM, LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms from controle where NOMEITEM='$nomeitem'  LIMIT $inicio , $itens_por_pagina";
$execute = $mysqli->query($sql_code) or die($mysqli->error);
$produto = $execute->fetch_assoc();
$num = $execute->num_rows;

}

// definir numero de páginas
$numero = (int)$num;
$num_paginas =($numero/$itens_por_pagina);



        ?>


          <?php if($num > 0){ ?>
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td><h5>Nome Item</h5></td>
              <td><h5>Descrição</h5></td>
              <td><h5>Quantidade</h5></td>
              <td><h5>Localização</h5></td>
              <td><h5>Data</h5></td>
              <td><h5>Patrimonio</h5></td>
              <td><h5>NR_Serie</h5></td>
              <td><h5>Protocolo</h5></td>
              <td><h5>Gms</h5></td>
            </tr>
          </thead>
          <tbody>
            <?php do{

$dataformat=date('d/m/Y',strtotime($produto['DATA'])); //formata as datas
             ?>
            <tr>
              <td align="center"><?php echo $produto['NOMEITEM']; ?></td>
              <td align="center"><?php echo $produto['DESCRICAO']; ?></td>
              <td align="center"><?php echo $produto['QUANTIDADE']; ?></td>
              <td align="center"><?php echo $produto['LOCALIZACAO']; ?></td>
              <td align="center"><?php echo $dataformat; ?></td>
              <td align="center"><?php echo $produto['PATRIMONIO']; ?></td>
              <td align="center"><?php echo $produto['NR_SERIE']; ?></td>
              <td align="center"><?php echo $produto['PROTOCOLO']; ?></td>
              <td align="center"><?php echo $produto['gms']; ?></td>

  <td><a class='btn-editar btn btn-sm btn-warning' href="editar_almox.php?id=<?php echo $produto['id']; ?>&loc=<?php echo $loc; ?>&nomeitem=<?php echo $nomeitem; ?>" role='button'><i ></i>&nbspEditar&nbsp</a>
            
<a class='btn-editar btn btn-sm btn-danger' href="excluir_almox.php?id=<?php echo $produto['id']; ?>&loc=<?php echo $loc; ?>&nomeitem=<?php echo $nomeitem; ?>" role='button'><i ></i>Excluir</a>


            </tr>
            <?php } while($produto = $execute->fetch_assoc()); ?>
          </tbody>
        </table>

        <nav>
          <ul class="pagination">

            <?php 

           $anterior = $pagina-1 ;
$proximo = $pagina+1;

  if($inicio!=0)
  {

    echo" <li>
              <a href='?pagina=$anterior&nomeitem=$nomeitem&loc=$loc'>Anterior</a>
                </li>
            ";
  }



   for($i=1;$i<$num_paginas;$i++){
            $estilo = "";
            if($pagina == $i)
              $estilo = "class=\"active\"";
            ?>
            <li <?php echo $estilo; ?> ><a href="listar_produtos.php?pagina=<?php echo $i; echo"&nomeitem=$nomeitem&loc=$loc"; ?> "><?php echo $i; ?></a></li>
          <?php }
           


if ( $num==$itens_por_pagina) {



echo" <li>
              <a href='?pagina=$proximo&nomeitem=$nomeitem&loc=$loc'>Proximo</a>

            </li>";
}
           ?>



          <?php } ?>

          </ul>
        </nav>
 
        </div>
      </div>
    </div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
  </html>