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
    <link href="../vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

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
            <li><a href="../../CADASTRAR/INDEXCADASTRAR.php">Cadastrar</a></li>
            <li><a href="../../MOVIMENTAR/INDEXMOVIMENTAR.php">Movimentar</a></li>
        </div>

        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Consultar Estoque</h2>
                </div>

                <div class="card-body">
                    <form name="form2" action="VERIFICAR2.php" method="POST">


                        <div onchange="esconder()">

                            <div class="form-row">
                                <div class="name">Tipo</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple">
                                            <select id="tipoo" name="TIPO">
                                                <option id="esc" selected="selected" disabled="">Escolha uma opção</option>
                                                <option id="pat">Patrimonio</option>
                                                <option>Almoxarifado</option>

                                            </select>
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div id="NOMEITEMM">

                            <div class="form-row">
                                <div class="name">Nome do item</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple">

                                            <select id="selenome" name="NOMEITEM">
                                                <option id="esc" selected="selected" disabled="">Escolha uma opção</option>
                                                <option>todos itens</option>
                                                <?php
                                                include_once('../../conexao.php');

                                                $result_select = "SELECT DISTINCT NOMEITEM from controle   ";
                                                $pesq = mysqli_query($conn, $result_select);

                                                while ($registro = mysqli_fetch_array($pesq)) {
                                                    echo "<option> $registro[0] </option>";
                                                }


                                                ?>
                                            </select>
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>





                        <div id="inp">

                            <div class="form-row">
                                <div class="name">Número Patrimonio</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple">

                                            <select id="Patri" name="Patrimonio">
                                                <option id="esc" selected="selected" disabled="">Escolha uma opção</option>
                                                <option>Todos</option>
                                                <?php
                                                include_once('../../conexao.php');


                                                $result_select = "SELECT DISTINCT pat   from garantia   ";
                                                $pesq = mysqli_query($conn, $result_select);

                                                while ($registro = mysqli_fetch_array($pesq)) {
                                                    echo "<option> $registro[0] </option>";
                                                }
                                                ?>

                                            </select>
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <script>
                            function esconder() {

                                var um = document.getElementById('tipoo')
                                var dois = document.getElementById('pat')
                                var tres = document.getElementById('almox')
                                var quatro = document.getElementById('inp')
                                var n1 = String(um.value)
                                var texto = `${n1}`

                                var nome = document.getElementById('NOMEITEMM')

                                if ("Patrimonio" === texto) {
                                    quatro.style.visibility = "visible"
                                    nome.style.visibility = "hidden"
                                    

                                } else {
                                    document.getElementById('Patri').value = 0;
                                    nome.style.visibility = "visible"
                                    quatro.style.visibility = "hidden"

                                   

                                }



                            }
                        </script>









                        <div>
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Verificar">
                        </div>
                    </form>



                    <form action="../../PRINCIPAL">
                        <br><input type="submit" class="btn btn--radius btn--pill btn--green btn--dir" value="Voltar">

                    </form>

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