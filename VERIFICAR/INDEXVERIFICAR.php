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
                    <h2 class="title">Consultar Estoque</h2>
                </div>

                <div class="card-body">
                    <form name="form2" action="VERIFICAR2.php" method="POST">


                        <div onchange="esconde()">

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

                        <div id="NOMEITEMM" onchange="esconde()">

                            <div class="form-row">
                                <div class="name">Nome do item</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple">

                                            <select id="selenome" name="NOMEITEM">
                                                <option id="esc" selected="selected" disabled="">Escolha uma opção</option>
                                                <option>todos itens</option>
                                                <?php
                                                include_once('../conexao.php');

                                                $result_select = "SELECT DISTINCT NOMEITEM  ,QUANTIDADE from controle   ";
                                                $pesq = mysqli_query($conn, $result_select);

                                                while ($registro = mysqli_fetch_array($pesq)) {
                                                    if($registro[1]<10)
                                                    {
                                                        echo"<option>$registro[0]</option>";
                                                    }
                                                    else
                                                    {

                                                        echo "<option> $registro[0] </option>";
                                                    }
                                                    
                                                }
                                                ?>
                                            </select>
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>





                        <div id="NUMPATRII" onchange="esconde()">

                            <div class="form-row">
                                <div class="name">Número Patrimonio</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple">

                                            <select id="Patri" name="Patrimonio">
                                                <option id="esc" selected="selected" disabled="">Escolha uma opção</option>
                                                <option>Todos</option>
                                                <?php
                                                include_once('../conexao.php');


                                                $result_select = "SELECT DISTINCT Patrimonio   from controle_prot   ";
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





                        <div id="locc">


                            <div class="form-row">
                                <div class="name">Localização</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple">
                                            <select id="localiza" name="LOCALIZACAO">
                                                <option selected="selected" disabled>Escolha uma opção</option>
<option>Todas as Localizações</option>
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
                        </div>



                        <script>
                            function esconde() {
                                var nomeitem = document.getElementById('NOMEITEMM') // id da div nome item
                                var localizacao = document.getElementById('locc') //id da div localizacao
                                var patrimonio2 = document.getElementById('NUMPATRII') //id da div patrimonio



                                var tipo = document.getElementById('tipoo') //id do input tipo escolhido
                                var patrimonio = document.getElementById('Patri') // id do input patrimonio
                                var localizacao2 = document.getElementById('localiza') //id do input localizacao
                                var selenome = document.getElementById('selenome') //id do input nome item







                                var item = String(selenome.value) //conversao do input nome item para string
                                var item0 = `${item}`

                                var tipovalue = String(tipo.value) //conversao do input tipo item para string
                                var tipovalue2 = `${tipovalue}`

                                var nomeitemvalue = String(nomeitem.value) //conversao da div nome item para string
                                var nomeitemvalue2 = `${nomeitemvalue}`

                                var patrimoniovalue = String(patrimonio.value) //conversao do input patrimonio item para string
                                var patrimoniovalue2 = `${patrimoniovalue}`

                                var localizacaovalue = String(localizacao.value) //conversao da div  localizacao para string
                                var localizacaovalue2 = `${localizacaovalue}`


                                if ("Patrimonio" === tipovalue2) {
                                    nomeitem.value = "0"
                                    nomeitem.style.visibility = "hidden"
                                    localizacao.style.visibility = "visible"
                                    patrimonio2.style.visibility = "visible"



                                    if ("Todos" !== patrimoniovalue2) {
                                        localizacao2.value = "0"
                                        localizacao.style.visibility = "hidden"


                                    }


                                } else {
                                    patrimonio.value = "0"
                                    nomeitem.style.visibility = "visible"
                                    patrimonio2.style.visibility = "hidden"
                                    localizacao.style.visibility = "visible"


                                    if ("todos itens" !== item0) {
                                        localizacao2.value = "0"
                                        localizacao.style.visibility = "hidden"


                                    }

                                }








                            }
                        </script>









                        <div>
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Verificar">
                        </div>
                    </form>



                    <form action="../PRINCIPAL">
                        <br><input type="submit" class="btn btn--radius btn--pill btn--green btn--dir" value="Voltar">

                    </form>

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

</body>

</html>
<!-- end document-->