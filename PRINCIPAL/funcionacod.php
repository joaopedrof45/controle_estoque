

<!DOCTYPE html>
<html lang="en">

<head>



  <!-- Required meta tags-->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Lucas e João">



  <!-- Title Page-->
  <title>Controle</title>


  <!-- Font special for pages-->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">


  <!-- Main CSS-->
  <link href="../../css/main.css" rel="stylesheet" media="all">


  <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>

<body>


  <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">


    <div class="all">
      <p align="center"> Defensoria Pública do Estado do Paraná</p><br>
    </div>


    <div class="wrapper wrapper--w790">

      <div class="card card-5">

        <div class="card-heading">



          <h2 class="title">Controle de Material</h2>
        </div>
        <div class="card-body">
        </div>
        <div class="divtable  table-responsive"">
          <table border="1" class="divtable  table-responsive">
            <tr>
              <td class="principal">
                <h4 text align="center">NOMEITEM</h4>
              </td>
              <td class="principal">
                <h4 text align="center">LOCALIZACAO</h4>
              </td>
              <td class="principal">
                <h4 text align="center">ORIGEM</h4>
              </td>
              <td class="principal">
                <h4 text align="center">DESTINO</h4>
              </td>
              <td class="principal">
                <h4 text align="center">TIPO</h4>
              </td>
              <td class="principal">
                <h4 text align="center">QUANTIDADE</h4>
              </td>
              <td class="principal">
                <h4 text align="center">DATA</h4>
              </td>
              <td class="principal">
                <h4 text align="center">PATRIMONIO</h4>
              </td>
              <td class="principal">
                <h4 text align="center">DESCRIÇÃO</h4>
              </td>
              <td class="principal">
                <h4 text align="center">NRº SERIE</h4>
              </td>
            </tr>
        </div>
      </div>
    </div>





    <?php
    include_once("../conexao.php");
    $cod = $_GET['codigo'];


    $result_select = "SELECT *from controle_prot  where NR_SERIE='$cod'  ";
    $pesq = mysqli_query($conn, $result_select);
$regs = mysqli_num_rows($pesq);
 

    while ($registro2 = mysqli_fetch_array($pesq)) {
      echo "<div class='divtable  table-responsive'><td class='principal'> <h4 text align='center'>$registro2[0]</h4></td>
  <td class='principal'><h4 text align='center'>$registro2[2]</h4></td>
  <td class='principal'><h4 text align='center'>$registro2[3]</h4></td> 
  <td class='principal'><h4 text align='center'>$registro2[6]</h4></td>
  <td class='principal'><h4 text align='center'>$registro2[4]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[5]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[7]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[8]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[9]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[1]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[10]</h4></td>
  
</tr>
</div>";
    }


    $result_select = "SELECT *from controle where NR_SERIE='$cod'  ";
    $pesq = mysqli_query($conn, $result_select);
  
$regs2 = mysqli_num_rows($pesq);


    while ($registro2 = mysqli_fetch_array($pesq)) {
      echo "<div class='divtable  table-responsive'><td class='principal'> <h4 text align='center'>$registro2[0]</h4></td>
  }
  <td class='principal'><h4 text align='center'>$registro2[2]</h4></td>
  <td class='principal'><h4 text align='center'>$registro2[3]</h4></td> 
  <td class='principal'><h4 text align='center'>$registro2[4]</h4></td>
  <td class='principal'><h4 text align='center'>$registro2[5]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[6]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[8]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[4]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[1]</h4></td>
  <td class='principal'><h4 text align ='center'>$registro2[10]</h4></td>
  
</tr> </div>";
    }
  


    ?>

    </table>
  </div>


  <br>



  <a type="submit" href="..">Voltar</a>


</body> <!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->