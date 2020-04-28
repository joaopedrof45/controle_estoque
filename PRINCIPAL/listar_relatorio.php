<?php include_once("../RENDER/TOP.html"); ?>

<body>


  <?php

  include_once("../conexao2.php");
  include_once("../conexao.php");
  ?>


  <h2 class="title">Relatórios</h2>
  </div>
  <div class="divtable  table-responsive">
    <table class="table table-responsive  ">
      <tr class="active">

<!DOCTYPE html>
<html lang=" en">

        <head>
          <meta charset="utf-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
          <title>Paginação</title>

          <!-- Bootstrap -->
          <link href="css/bootstrap.min.css" rel="stylesheet">
             <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>



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



               @$buscar=$_GET['buscar'];
               @$acao=$_GET['acao'];
         


               if($buscar==""){
              echo"Não é possível fazer busca sem preencher o campo";
                exit;
               }


                if (isset($_GET['pagina'])) {
                  @$pagina = $_GET['pagina'];
                }else
                {

                  $pagina=1;
                }
                $itens_por_pagina = 10;
             //inicializa as variaveis para contar quantos itens foram movimentados em cada lugar
                      $mateus_leme=0;
                       $mateus_leme2=0;
                      $colombo=0;
                      $londrina=0;
                      $ponta_grossa=0;

        

                switch  ($acao){

                case "Exclusão" :
                    $inicio = ($itens_por_pagina * $pagina) - $itens_por_pagina;
                    $sql_code = "select * from history where acao='$acao' and NOMEITEM like'%$buscar%' ORDER BY DATA DESC LIMIT $inicio , $itens_por_pagina ";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;


                break;


                   case "Alteração" :
                    $inicio = ($itens_por_pagina * $pagina) - $itens_por_pagina;
                    $sql_code = "select * from history where acao='$acao' and NOMEITEM like'%$buscar%' ORDER BY DATA DESC LIMIT $inicio , $itens_por_pagina ";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;


                break;


                   case "Movimentação" :
                    $inicio = ($itens_por_pagina * $pagina) - $itens_por_pagina;
                    $sql_code = "select * from history where acao='$acao' and NOMEITEM like'%$buscar%'ORDER BY DATA DESC LIMIT $inicio , $itens_por_pagina ";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;


                break;
                 default: echo"nao foi possivel realizar a pesquisa";
                 break;

                }
                if($num==0){

echo" Não há ações relacionadas a este item";

                }
 
                $numero = (int) $num;
                $num_paginas = ceil($numero / $itens_por_pagina);
                  


                ?>

                <?php if ($num > 0) { ?>
                  <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <td>
                          <h5>Nome Item</h5>
                        </td>
                        <td>
                          <h5>Tipo</h5>
                        </td>
                        <td>
                          <h5>Descrição</h5>
                        </td>
                        <td>
                          <h5>Quantidade</h5>
                        </td>
                        <td>
                          <h5>Origem</h5>
                        </td>
                        <td>
                          <h5>Destino</h5>
                        </td>
                        <td>
                          <h5>Data</h5>
                        </td>
                        <td>
                          <h5>Protocolo</h5>
                        </td>
                         <td>
                          <h5>IP</h5>
                        </td>
                      </tr>
                    </thead>
                    <tbody>
                 
                 <?php
                    $data=[];//inicializando array e interador
                    $i=0;
                 ?>
                      <?php do {

                        $dataformat = date('d/m/Y', strtotime($produto['DATA'])); //formata as datas
                      ?>
                        <tr>
                          <td align="center"><?php echo $produto['NOMEITEM']; ?></td>
                          <td align="center"><?php echo $produto['TIPO']; ?></td>
                          <td align="center"><?php echo $produto['DESCRICAO']; ?></td>
                          <td align="center"><?php echo $produto['QUANTIDADE']; ?></td>
                          <td align="center"><?php echo $produto['ORIGEM']; ?></td>
                          <td align="center"><?php echo $produto['DESTINO']; ?></td>
                          <td align="center"><?php echo $dataformat; ?></td>
                          <td align="center"><?php echo $produto['PROTOCOLO']; ?></td>
                          <td align="center"><?php echo $produto['ip']; ?></td>

                        </tr>
   <?php
      $data[$i]['NOMEITEM']=$produto['NOMEITEM'];
      $data[$i]['TIPO']=$produto['TIPO'];
      $data[$i]['DESCRICAO']=$produto['DESCRICAO'];
      $data[$i]['QUANTIDADE'] = $produto['QUANTIDADE'];
      $data[$i]['ORIGEM'] = $produto['ORIGEM'];
      $data[$i]['DESTINO'] =$produto['DESTINO'];
      $data[$i]['dataformat'] = $dataformat;
      $data[$i]['PROTOCOLO'] = $produto['PROTOCOLO'];
      $data[$i]['ip'] = $produto['ip'];
      $data[$i]['DESTINO'] = $produto['DESTINO'];

      $i++;
      ?>

                      <?php } while ($produto = $execute->fetch_assoc()); ?>


                      <?php     

//$data1=json_encode($data);
    // esse json encode é muito bom , simples assim  usando isso agora o $data1 esta 
    //em formato json
    // se quiser mandar para outra pagina é simples 
    //basta fazer igual ao esquema do html abaixo
    // mandar pelo input e esconder o campo com type hidden
    // e na outra pagina para recupar é só necessário usar a função json_decode($var);


    include_once("../VERIFICAR/gerar_relatorio/Export.php");

    //chama  a classe de exportação  passando  o nome da tabela , nome do arquivo , e o array
  
    // esse método gera um html , então como esta pagina tem um estilo de pagina proprio
    // é bom e necessário enviar para outra página qeu fará a tratativa  pelo form que 
    //quando chamado joga para esse outra pagina a variavel com o conteudo html que esta
    // dentro do input escondido.

    $data= json_encode($data);
    echo"<form action='../VERIFICAR/gerar_relatorio/api.php' method='POST'>";
    echo"<input  type='submit' value='Gerar Excel'>";
    echo"<input name='almox' type='hidden' value='$data'>";
    echo"<input name='tipo' type='hidden' value='Relatórios'>";
    echo"</form>";






?>


                    </tbody>
                  </table>

                  <nav>
                    <ul class="pagination">

                      <?php

                      $anterior = $pagina - 1;
                      $proximo = $pagina + 1;

                      if ($inicio != 0) {

                        echo " <li>
              <a href='?pagina=$anterior&buscar=$buscar&acao=$acao'>Anterior</a>
                </li>
            ";
                      }


                      if ($num == $itens_por_pagina) {



                        echo " <li>
              <a href='?pagina=$proximo&buscar=$buscar&acao=$acao'>Proximo</a>

            </li>";
                      }
                      ?>



                    <?php } ?>

                    </ul>
                  </nav>
 <?php include_once("grafico.php");
                    $gerar= new grafico();


?>
<a href="#" onclick="esconde()">Mostrar Grafico</a>

<div id="teste" style="display:none">
  
<div id="piechart"   style="width: 500px; height: 300px; "></div>
<div id="piechart2"  style="width: 500px; height: 300px; "></div>
<div id="piechart3"  style="width: 500px; height: 300px; "></div>

</div>


              </div>
            </div>
          </div>


          <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
          <!-- Include all compiled plugins (below), or include individual files as needed -->
          <script src="js/bootstrap.min.js"></script>

          
             <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Tipo', 'Quantidade'],
          ['Almoxarifado',<?=$gerar->item_acao($buscar,"Movimentação","Almoxarifado");?>],
          ['Patrimonio',<?=$gerar->item_acao($buscar,"Movimentação","Patrimonio");?>],
        ]);

           var data2 = google.visualization.arrayToDataTable([
          ['Tipo', 'Quantidade'],
          ['Almoxarifado',<?=$gerar->item_acao($buscar,"Exclusão","Almoxarifado");?>],
          ['Patrimonio',<?=$gerar->item_acao($buscar,"Exclusão","Patrimonio");?>],
        ]);

           var data3 = google.visualization.arrayToDataTable([
          ['Tipo', 'Quantidade'],
          ['Almoxarifado',<?=$gerar->item_acao($buscar,"Alteração","Almoxarifado");?>],
          ['Patrimonio',<?=$gerar->item_acao($buscar,"Alteração","Patrimonio");?>],
        ]);






        var options = {
          title: 'Movimentações',
        };

        var options2 = {
          title: 'Exclusões',
        };
        var options3 = {
          title: 'Alterações',
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));
        var chart3 = new google.visualization.PieChart(document.getElementById('piechart3'));
        
        chart.draw(data,options);
        chart2.draw(data2,options2);
        chart3.draw(data3,options3);
      }
    </script>



                        <script>
                            function esconde() {
                                var div1 = document.getElementById('piechart') // id da div nome item
                                var div2 = document.getElementById('piechart2') //id da div localizacao
                                var div3 = document.getElementById('piechart3') //id da div patrimonio
                                var teste = document.getElementById('teste') //id da div patrimonio

                               if(teste.style.display=="none"){

                                teste.style.display = "block"
                                teste.style.visibility = "visibled"
                                

                               }else{

                                teste.style.display = "none"
                               }
                                

                               


                            }
                        </script>




        </body>

        </html>