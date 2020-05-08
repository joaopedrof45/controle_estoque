<?php include_once("TOP.html"); ?>
<!DOCTYPE html>
<html lang="PT-BR">

<head>
  <!-- Required meta tags-->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Colorlib Templates">
  <meta name="author" content="Colorlib">
  <meta name="keywords" content="Colorlib Templates">

  <!-- Title Page-->
  <title>Buscar</title>

  <!-- Font special for pages-->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

  <!-- Main CSS-->
  <link href="../../css/main.css" rel="stylesheet" media="all">
</head>

<body>





  <h2 class="title">Estoque Garantia</h2>
  </div>
  <div class="divtable ">
    <table class="table">
      <tr>
        <td class="principal">
          <h4>Id</h4>
        </td>
        <td class="principal">
          <h4>Data de Expiração</h4>
        </td>
        <td class="principal">
          <h4>Descrição</h4>
        </td>
        <td class="principal">
          <h4>Patrimônio</h4>
        </td>
      </tr>
  </div>
  </div>
  </div>




  <?php
  //faz pesquisa pela referencia 
  include_once("../../conexao.php");
  $NOMEITEM = "0";
  $Patrimonio = "0";
  $TIPO = "0";


  if (isset($_POST['NOMEITEM'])) {
    $NOMEITEM = $_POST['NOMEITEM'];
  }

  if (isset($_POST['LOCALIZACAO'])) {
    $LOCALIZACAO = $_POST['LOCALIZACAO'];
  }

  if (isset($_POST['Patrimonio'])) {
    $Patrimonio = $_POST['Patrimonio'];
  }

  if (isset($_POST['TIPO'])) {
    $TIPO = $_POST['TIPO'];
  }


  $result_select1 = "SELECT  id from controle where  NOMEITEM= '$NOMEITEM' ";
  $pesq1 = mysqli_query($conn, $result_select1);

  while ($registro = mysqli_fetch_array($pesq1)) {
    $idbanco = $registro[0];
  }
  $data=[]; // inicializando array e interador
  $i=0;
  

// aqui faz as alterações na garantia que é almoxarifado

  if ($TIPO == "Almoxarifado") {
    if ($NOMEITEM !== "todos itens") {

      $result_select3 = "SELECT * from garantia where id='$idbanco'";
      $pesq3 = mysqli_query($conn, $result_select3);

      while ($registro3 = mysqli_fetch_array($pesq3)) {

        $dataformat=date('d/m/Y', strtotime($registro3[1]));
        $dataformat2=date('d/m/Y', strtotime($registro3[3]));
        
        
        $data[$i]['id']=$registro3[0];
        $data[$i]['data_ex']=$dataformat;
        $data[$i]['descricao']=$registro3[2];
        $data[$i]['data_ini']=$dataformat2;
        $data[$i]['pat']=$registro3[4];
        $i++;
        
        echo "
 <tr>
 <td><h5>$registro3[0]</h5></td>
 <td><h5>$dataformat</h5></td>
 <td><h5>$registro3[2]</h5></td>
 <td style='display:none'><h5>$dataformat2</h5></td>
 <td><h5>$registro3[4]</h5></td>
  <td> 
 <a class='btn-editar btn btn-sm btn-warning' href='../VERIFICAR/editar_almox.php?id=$registro3[0]'
                            role='button'><i class='far fa-edit'></i>&nbspEditar&nbsp</a>
              
              
 <a class='btn-editar btn btn-sm btn-danger' href='../VERIFICAR/excluir_almox.php?id=$registro3[0]'
                            role='button'><i class='far fa-trash-alt'></i> Excluir</a>
</td>

 </tr>

";
      }
    } else {

      $result_select4 = "SELECT * from garantia where id <>'NULL' AND pat=0";
      $pesq4 = mysqli_query($conn, $result_select4);

      while ($registro4 = mysqli_fetch_array($pesq4)) {

        $dataformat=date('d/m/Y', strtotime($registro4[1]));
        $dataformat2=date('d/m/Y', strtotime($registro4[1]));
        
        $data[$i]['id']=$registro4[0];
        $data[$i]['data_ex']=$dataformat;
        $data[$i]['descricao']=$registro4[2];
        $data[$i]['data_ini']=$dataformat2;
        $data[$i]['pat']=$registro4[4];
        $i++;
        
        echo "
 <tr>
 <td><h5>$registro4[0]</h5></td>
 <td><h5>$dataformat</h5></td>
 <td><h5>$registro4[2]</h5></td>
 <td style='display:none'><h5>$dataformat2</h5></td>
 <td><h5>$registro4[4]</h5></td>
  <td> 
 <a class='btn-editar btn btn-sm btn-warning' href='../VERIFICAR/editar_almox.php?id=$registro4[0]'
                            role='button'><i class='far fa-edit'></i>&nbspEditar&nbsp</a>
              
              
 <a class='btn-editar btn btn-sm btn-danger' href='../VERIFICAR/excluir_almox.php?id=$registro4[0]'
                            role='button'><i class='far fa-trash-alt'></i> Excluir</a>
</td>

 </tr>

";
      }
    } // aqui faz as alterações na garantia que é patrimonio
  } else {


    if ($Patrimonio != "Todos") {
      $result_select3 = "SELECT * from garantia where pat='$Patrimonio' ";
      $pesq3 = mysqli_query($conn, $result_select3);

      while ($registro3 = mysqli_fetch_array($pesq3)) {

        $dataformat=date('d/m/Y H:i:s', strtotime($registro3[1]));
        $dataformat2=date('d/m/Y H:i:s', strtotime($registro3[1]));

        
        $data[$i]['id']=$registro3[0];
        $data[$i]['data_ex']=$dataformat;
        $data[$i]['descricao']=$registro3[2];
        $data[$i]['data_ini']=$dataformat2;
        $data[$i]['pat']=$registro3[4];
        $i++;

        
        
        echo "
 <tr>
 <td><h5>$registro3[0]</h5></td>
 <td><h5>$dataformat</h5></td>
 <td><h5>$registro3[2]</h5></td>
 <td style='display:none'><h5>$dataformat2</h5></td>
 <td><h5>$registro3[4]</h5></td>
  <td> 
 <a class='btn-editar btn btn-sm btn-warning' href='../VERIFICAR/editar_pat.php?id=$registro3[4]'
                            role='button'><i class='far fa-edit'></i>&nbspEditar&nbsp</a>
              
              
 <a class='btn-editar btn btn-sm btn-danger' href='../VERIFICAR/excluir_pat.php?id=$registro3[4]'
                            role='button'><i class='far fa-trash-alt'></i> Excluir</a>
</td>

 </tr>

";
      }
    } else {

      $result_select5 = "SELECT * from garantia where pat<>0";
      $pesq5 = mysqli_query($conn, $result_select5);

      while ($registro5 = mysqli_fetch_array($pesq5)) {



        $dataformat=date('d/m/Y H:i:s', strtotime($registro5[1]));
        $dataformat2=date('d/m/Y H:i:s', strtotime($registro5[1]));

        
        $data[$i]['id']=$registro5[0];
        $data[$i]['data_ex']=$dataformat;
        $data[$i]['descricao']=$registro5[2];
        $data[$i]['data_ini']=$dataformat2;
        $data[$i]['pat']=$registro5[4];
        $i++;

        
        
        echo "
 <tr>
 <td><h5>$registro5[0]</h5></td>
 <td><h5>$dataformat</h5></td>
 <td><h5>$registro5[2]</h5></td>
 <td style='display:none'><h5>$dataformat2</h5></td>
 <td><h5>$registro5[4]</h5></td>
  <td> 
 <a class='btn-editar btn btn-sm btn-warning' href='../VERIFICAR/editar_pat.php?id=$registro5[4]'
                            role='button'><i class='far fa-edit'></i>&nbspEditar&nbsp</a>
              
              
 <a class='btn-editar btn btn-sm btn-danger' href='../VERIFICAR/excluir_pat.php?id=$registro5[4]'
                            role='button'><i class='far fa-trash-alt'></i> Excluir</a>
</td>

 </tr>

";
      }
    }
  }



  

                //$data1=json_encode($data);
                // esse json encode é muito bom , simples assim  usando isso agora o $data1 esta 
                //em formato json
                // se quiser mandar para outra pagina é simples 
                //basta fazer igual ao esquema do html abaixo
                // mandar pelo input e esconder o campo com type hidden
                // e na outra pagina para recupar é só necessário usar a função json_decode($var);


                include_once("../../VERIFICAR/gerar_relatorio/Export.php");

                //chama  a classe de exportação  passando  o nome da tabela , nome do arquivo , e o array
              
                // esse método gera um html , então como esta pagina tem um estilo de pagina proprio
                // é bom e necessário enviar para outra página qeu fará a tratativa  pelo form que 
                //quando chamado joga para esse outra pagina a variavel com o conteudo html que esta
                // dentro do input escondido.

                $data= json_encode($data);
                echo"<form action='../../VERIFICAR/gerar_relatorio/api.php' method='POST'>";
                echo"<input  type='submit' value='Gerar Excel'>";
                echo"<input name='almox' type='hidden' value='$data'>";
                echo"<input name='tipo' type='hidden' value='garantia'>";
                echo"</form>";






  ?>
  </table>
  </div>


  <br><input type="submit" class="btn btn--radius btn--pill btn--green btn--dir" value="Voltar" onClick="history.back()">
  </div>
  </div>
  </div>
  </div>


</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->