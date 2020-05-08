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
    <link href="../../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="../../vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../../vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../../css/main.css" rel="stylesheet" media="all">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://digitalbush.com/files/jquery/maskedinput/rc3/jquery.maskedinput.js" type="text/javascript"></script>





</head>

<body>


    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">


        <div class="all">
            <p align="center"> Defensoria Pública do Estado do Paraná</p><br>
        </div>

        <div class="ul2">
            <li><a class="active" href="../../PRINCIPAL">Inicio</a></li>
            <li><a href="../../VERIFICAR/INDEXVERIFICAR.php">Verificar</a></li>
            <li><a href="../../MOVIMENTAR/INDEXMOVIMENTAR.php">Movimentar</a></li>
        </div>

        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Cadastro Sede</h2>
                </div>
                <div class="card-body">
                    <form name="form1" action="salva_cadastro.php" method="POST">
<?php
        
                        if (isset($_GET['Cadastrado'])) {
                            echo '<div  align="center" id="alerta" class="alert alert-success" role="alert">
                <h4 style="color:green;">Produto cadastrado com sucesso!</h4>
                </div>';

                
                        }

?>

                        <div id="inp" class="form-row">
                            <div class="name">Nome da Sede</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="patri" class="input--style-5" type="text" name="nomesede">
                                </div>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">Endereço</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="desc" class="input--style-5" type="text" name="endsede">
                                </div>
                            </div>
                        </div>



                        <div class="form-row">
                            <div class="name">Nrº</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="desc" class="input--style-5" type="number" name="nr_sede">
                                </div>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">Cep</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="desc2" class="input--style-5" type="text" name="cep_sede">
                                </div>
                            </div>
                        </div>

                           <div class="form-row">
                            <div class="name">Região</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="desc2" class="input--style-5" type="text" name="regiao">
                                </div>
                            </div>
                        </div>

                        <div>

                            <input " class=" btn btn--radius-2 btn--red" type="submit" o value="Cadastrar" />
                        </div>
                    </form>

                    <form action="../../PRINCIPAL">
                        <br><input type="submit" class="btn btn--radius btn--pill btn--green btn--dir" value="Voltar">

                    </form>
                    <br><br><br><br>
                  <?php include_once("import_sedes.html"); ?>


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