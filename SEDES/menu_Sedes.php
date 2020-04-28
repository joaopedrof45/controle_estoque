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
    <title>Cadastrar</title>

    <!-- Icons font CSS-->
    <link href="../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="../vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../css/main.css" rel="stylesheet" media="all">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://digitalbush.com/files/jquery/maskedinput/rc3/jquery.maskedinput.js" type="text/javascript"></script>





</head>

<body>


    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">


        <div class="all">
            <p align="center"> Defensoria Pública do Estado do Paraná</p><br>
        </div>

        <div class="ul2">
            <li><a class="active" href="../PRINCIPAL">Inicio</a></li>
            <li><a href="../VERIFICAR/INDEXVERIFICAR.php">Verificar</a></li>
            <li><a href="../MOVIMENTAR/INDEXMOVIMENTAR.php">Movimentar</a></li>
        </div>

        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Genrecia Sedes</h2>
                </div>
                <div class="card-body">
                    

                    <div align="center">
                        <form action="../SEDES/CADASTRAR/INDEXCADASTRAR.php" method="POST">
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Cadastrar Sedes" onClick="history.back()"><br><br>


                        </form>

                    </div>

                    <div align="center">
                        <form action="../SEDES/VERIFICAR/listar_sedes.php" method="POST">
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Listar Sedes" onClick="history.back()"><br><br>

                        </form>

                    </div>

                </div>
            </div>


        </div>
    </div>

    <!-- Jquery JS-->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="../../vendor/select2/select2.min.js"></script>
    <script src="../../vendor/datepicker/moment.min.js"></script>
    <script src="../../vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="../../js/global.js"></script>

</body>

</html>
<!-- end document-->