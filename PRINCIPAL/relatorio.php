<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Consultar Estoque</title>

    <!-- Icons font CSS-->
    <link href="../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="../vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/estilo.css">
    <!-- Main CSS-->
    <link href="../css/main.css" rel="stylesheet" media="all">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://digitalbush.com/files/jquery/maskedinput/rc3/jquery.maskedinput.js" type="text/javascript"></script>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>






</head>

<body>


    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">


        <div class="all">
            <p align="center"> Defensoria Pública do Estado do Paraná</p><br>

        </div>
        <div class="ul2">
            <li><a class="active" href="../PRINCIPAL">Inicio</a></li>
            <li><a href="../CADASTRAR/INDEXCADASTRAR.php">Cadastrar</a></li>
            <li><a href="../MOVIMENTAR/INDEXMOVIMENTAR.php">Movimentar</a></li>
        </div>

        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Relatórios</h2>
                </div>

                <div class="card-body">
                    <form name="form2" action="listar_relatorio.php" method="GET">



                 <div class="form-row">
                            <div class="name">Item</div>
                            <div class="value">
                                <div class="input-group">
                                    <input " id=" buscar"class="input--style-5" type="text" name="buscar">
                                </div>
                            </div>
                        </div>

                        
                            <div class="form-row">
                            <div class="name">Ação</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple">
                                        <select id="acao" name="acao">
                                            <option id="esc1" selected="selected" disabled>Escolha uma opção</option>
                                            <option id="mateus">Exclusão</option>
                                            <option id="colombo">Alteração</option>
                                            <option id="londrina">Movimentação</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>



 <?php include_once("grafico.php");
                    $gerar= new grafico();
?>

<br><br>

<div  id="columnchart_material" style="  width: 500px; height: 300px "></div>

         <?php include_once("grafico.php");
                    $gerar= new grafico();
?>



                        <div>
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Pesquisar">
                        </div>
                    </form>



                    <form action="../PRINCIPAL">
                        <br><input type="submit" class="btn btn--radius btn--pill btn--green btn--dir" value="Voltar">

                    </form>

                </div>
            </div>

        </div>
    </div>


    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Tipo', 'Movimentação', 'Exclusão', 'Alteração'],
          ['Almoxarifado', <?=$gerar->calc_grap("Movimentação","Almoxarifado");?>, <?=$gerar->calc_grap("Exclusão","Almoxarifado");?>, <?=$gerar->calc_grap("Alteração","Almoxarifado");?>],
          ['Patrimonio',<?=$gerar->calc_grap("Movimentação","Patrimonio");?> , <?=$gerar->calc_grap("Exclusão","Patrimonio");?>, <?=$gerar->calc_grap("Alteração","Patrimonio");?>],

        ]);

        var options = {
          chart: {
            title: 'Relatório Geral',
            subtitle: '',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>








    <!-- Jquery JS-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="../vendor/select2/select2.min.js"></script>
    <script src="../vendor/datepicker/moment.min.js"></script>
    <script src="../vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="../js/global.js"></script>



</body>

</html>
<!-- end document-->