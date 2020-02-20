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
          <h4>Descrição</h4>
        </td>
        <td class="principal">
          <h4>Data de Expiração</h4>
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


// aqui faz as alterações na garantia que é almoxarifado

  if ($TIPO == "Almoxarifado") {
    if ($NOMEITEM !== "todos itens") {

      $result_select3 = "SELECT * from garantia where id='$idbanco' ";
      $pesq3 = mysqli_query($conn, $result_select3);

      while ($registro3 = mysqli_fetch_array($pesq3)) {

        $dataformat=date('d/m/Y', strtotime($registro3[1]));
        echo "
 <tr>
 <td><h5>$registro3[0]</h5></td>
 <td><h5>$registro3[2]</h5></td>
 <td><h5>$dataformat</h5></td>
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

      $result_select4 = "SELECT * from garantia where id <>'NULL'";
      $pesq4 = mysqli_query($conn, $result_select4);

      while ($registro4 = mysqli_fetch_array($pesq4)) {

        $dataformat=date('d/m/Y', strtotime($registro4[1]));
        echo "
 <tr>
 <td><h5>$registro4[0]</h5></td>
 <td><h5>$registro4[2]</h5></td>
 <td><h5>$dataformat</h5></td>
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
        echo "
 <tr>
 <td><h5>$registro3[0]</h5></td>
 <td><h5>$registro3[2]</h5></td>
 <td><h5>$dataformat</h5></td>
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

        echo "
 <tr>
 <td><h5>$registro5[0]</h5></td>
 <td><h5>$registro5[2]</h5></td>
 <td><h5>$dataformat</h5></td>
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