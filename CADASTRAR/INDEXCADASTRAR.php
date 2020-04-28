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
    <script src="http://digitalbush.com/files/jquery/maskedinput/rc3/jquery.maskedinput.js" type="text/javascript">
    </script>





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
                    <h2 class="title">Cadastrar</h2>
                </div>
                <div class="card-body">




                    <form name="form1" action="salva_cadastro.php" method="POST">


                        <?php

                        if (isset($_GET['Cadastrado'])) {
                            echo '<div  align="center" id="alerta" class="alert alert-success" role="alert">
                <h4 style="color:red;">Produto cadastrado com sucesso!</h4>
                </div>';

                
                        }
                        ?>



                        <div class="form-row">
                            <div class="name">Nome do item</div>
                            <div class="value">
                                <div class="input-group">
                                    <input " id=" nomeitem"class="input--style-5" type="int" name="NOMEITEM">
                                </div>
                            </div>
                        </div>

                        <div onchange="esconder()" class="form-row">
                            <div class="name">Tipo</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple">
                                        <select id="tipo" name="TIPO">
                                            <option id="esc" selected="selected" disabled>Escolha uma opção</option>
                                            <option id="pat" onchange="clicousim()">Patrimonio</option>
                                            <option id="almox" onchange="clicounao()">Almoxarifado</option>

                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>





                        <div id="inp" class="form-row">
                            <div class="name">Numero do Patrimonio :</div>
                            <div class="value">
                                <div class="input-group">
                                    <input onkeypress='return event.charCode >= 48 && event.charCode <= 57' id="patri" class="input--style-5" type="text" name="Patrimonio">
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Localização</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple">
                                        <select id="tipo" name="locais">
                                            <option id="esc1" selected="selected" disabled>Escolha uma opção</option>
                                            <option id="mateus">Mateus Leme</option>
                                            <option id="colombo">Colombo</option>
                                            <option id="londrina">Londrina</option>
                                            <option id="maringa">Ponta Grossa</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <div id="inp" class="form-row">
                            <div class="name">Numero de Serie:</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="patri" class="input--style-5" type="text" name="serie">
                                </div>
                            </div>
                        </div>

                        <div id="inp" class="form-row">
                            <div class="name">Código GMS:</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="gms" class="input--style-5" type="text" name="gms">
                                </div>
                            </div>
                        </div>

                        <div class="form-row" id="qtd">
                            <div class="name">Quantidade</div>
                            <div class="value">
                                <div class="input-group">
                                    <input onkeypress='return event.charCode >= 48 && event.charCode <= 57' id="qtd1" class="input--style-5" type="int" name="QUANTIDADE">
                                </div>
                            </div>
                        </div>

                        <script>
                            function esconder() {

                                var um = document.getElementById('tipo')
                                var dois = document.getElementById('inp')
                                var tres = document.getElementById('qtd')
                                var n1 = String(um.value)
                                var texto = `${n1}`

                                if ("Patrimonio" === texto) {

                                    dois.style.visibility = "visible"
                                    tres.style.visibility = "hidden"
                                    document.getElementById('qtd1').value = 1;



                                } else {

                                    dois.style.visibility = "hidden"
                                    tres.style.visibility = "visible"

                                    document.getElementById('patri').value = 0;

                                }



                            }
                        </script>







                        <div class="form-row">
                            <div class="name">Descrição</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="desc" class="input--style-5" type="text" name="DESCRICAO">
                                </div>
                            </div>
                        </div>

                          <div class="form-row">
                            <div class="name">Protocolo</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="protoc" class="input--style-5" type="text" name="protocolo">
                                </div>
                            </div>
                        </div>







                        <div>

                            <input " class=" btn btn--radius-2 btn--red" type="submit" onclick="return verificacampo()" value="Cadastrar" />
                        </div>
                    </form>

               <br><br><br>
                    <?php
include_once("import.html");
echo"<br><br><br><br>";
?>
     <form action="../PRINCIPAL">
                        <br><input type="submit" class="btn btn--radius btn--pill btn--green btn--dir" value="Voltar">

                    </form>

                </div>
            </div>


        </div>
    </div>


    <script>
        function verificacampo() {

            var tipo = form1.TIPO.value
            var nomeitem = form1.NOMEITEM.value
            var loca = form1.LOCALIZACAO.value
            var origem = form1.ORIGEM.value
            var desc = form1.DESCRICAO.value




            if (nomeitem === "" || tipo === "Escolha uma opção" || qtd === "Escolha uma opção" || patri === "" || desc ===
                "") {
                alert("Preencha todos os campos!");

            } else {

                alert("Cadastro feito com sucesso!");
            }



        }


        function verificatipo() {

            var tipo = form1.TIPO.value
            var patrimonio = form1.Patrimonio.value




            if (tipo === "Almoxarifado") {
                patrimonio = 0;


            } else {

                alert("Cadastro feito com sucesso!");
            }



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