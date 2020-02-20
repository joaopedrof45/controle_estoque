<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">


    <title>Controle</title>


    <link href="../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">


    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">


    <link href="../vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">


    <link href="../css/main.css" rel="stylesheet" media="all">
</head>

<body>


    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">


        <div class="all">
            <p align="center"> Defensoria Pública do Estado do Paraná</p><br>
        </div>

        <div class="ul2">
            <li><a class="active" href="../PRINCIPAL">Inicio</a></li>
            <li><a href="../VERIFICAR/INDEXVERIFICAR.php">Verificar</a></li>
            <li><a href="../CADASTRAR/INDEXCADASTRAR.php">Cadastrar</a></li>
        </div>


        <div class="wrapper wrapper--w790">

            <div class="card card-5">
                <div class="card-heading">

                    <h2 class="title">Movimentar</h2>
                </div>
                <div class="card-body">
                    <form action="salva_movimento.php" method="POST">



                        <div onchange="esconder()" class="form-row">
                            <div class="name">Tipo</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple">

                                        <select id="tipo" name="TIPO">
                                            <option id="esc" selected="selected" disabled>Escolha uma opção</option>
                                            <option> Almoxarifado</option>
                                            <option> Patrimonio</option>

                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="loop" name="loop">


                            <div id="inp" class="form-row">
                                <div class="name">Nome do item</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple form-control">

                                            <select name="NOMEITEM">
                                                <option id="esc" selected="selected" disabled>Escolha uma opção</option>

                                                <?php
                                                include_once('../conexao.php');




                                                $result_select = "SELECT  DISTINCT NOMEITEM  from controle ";
                                                $pesq = mysqli_query($conn, $result_select);

                                                while ($registro = mysqli_fetch_array($pesq)) {

                                                    $pat = $registro[1];
                                                    $nome = $registro[0];

                                                    echo " <option> $registro[0]</option>";
                                                }
                                                ?>




                                            </select>
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="form-row" id="qtd">
                                <div class="name">Quantidade</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="input--style-5" type="text" name="QUANTIDADE">
                                    </div>
                                </div>
                            </div>


                        </div>


                        <div id="patrimonio" class="form-row">
                            <div class="name">Número do Patrimonio</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple">
                        <select name="Patrimonio" >
                                                <option id="pat" selected="selected" disabled>Escolha uma opção</option>

                                                <?php

                                                $result_select = "SELECT  DISTINCT PATRIMONIO  from controle_prot ";
                                                $pesq = mysqli_query($conn, $result_select);

                                                while ($registro = mysqli_fetch_array($pesq)) {

                                                    echo " <option> $registro[0]</option>";
                                                }
                                                ?>




                                            </select>
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        <div class="form-row">
                            <div class="name">Origem</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple">

                                        <select name="ORIGEM">


                                            <option id="esc" selected="selected" disabled>Escolha uma opção</option>
                                            <option>Mateus Leme</option>
                                            <option>Colombo</option>
                                            <option>Londrina</option>
                                            <option>Ponta Grossa</option>




                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>









                        <div class="form-row">
                            <div class="name">Destino</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple">

                                        <select name="DESTINO">


                                            <option id="esc" selected="selected" disabled>Escolha uma opção</option>
                                                
                                                    <?php

                                                $result_select1 = "SELECT DISTINCT nomesede   from sedes   ";
                                                $pesq1 = mysqli_query($conn, $result_select1);

                                                while ($registro1 = mysqli_fetch_array($pesq1)) {
                                                    echo "<option> $registro1[0] </option>";
                                                }
                                                ?>

                                        



                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>












                        <script>
                            function esconder() {

                                var tipo = document.getElementById('tipo')
                                var dois = document.getElementById('inp')
                                var patri2 = document.getElementById('patrimonio')
                                var qtd = document.getElementById('qtd')
                                var n1 = String(tipo.value)
                                var texto = `${n1}`

                                if ("Almoxarifado" === texto) {

                                    dois.style.visibility = "visible"
                                    patri2.style.visibility = "hidden"
                                    qtd.style.visibility = "visible"


                                } else {


                                    document.getElementById('qtd').value = 1
                                    document.getElementById('patrimonio').value = 0
                                    dois.style.visibility = "hidden";
                                    patri2.style.visibility = "visible";
                                    qtd.style.visibility = "hidden";

                                }



                            }
                        </script>



                        <div class="form-row" id="motivo">
                            <div class="name">Motivo</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="motivo">
                                </div>
                            </div>
                        </div>


                        <div class="form-row" id="responsavel">
                            <div class="name">Protocolo</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="protocolo">
                                </div>
                            </div>
                        </div>





                        <div>
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Movimentar">



                        </div>








                    </form>

                    <form action="../PRINCIPAL">
                        <br><input type="submit" class="btn btn--radius btn--pill btn--green btn--dir" value="Voltar">

                    </form>









                </div>

            </div>

        </div>
    </div>
    </div>

    <!-- Jquery JS-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="../vendor/select2/select2.min.js"></script>
    <script src="../vendor/datepicker/moment.min.js"></script>
    <script src="../vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="../js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->