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
    <link href="../css/main.css" rel="stylesheet" media="all">
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





                    <div align="center">
                        <form action="../VERIFICAR/INDEXVERIFICAR.php" method="POST">
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Consultar Estoque" onClick="history.back()"><br><br>


                        </form>

                    </div>

                    <div align="center">
                        <form action="../CADASTRAR/INDEXCADASTRAR.php" method="POST">
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Cadastrar novo Item" onClick="history.back()"><br><br>

                        </form>

                    </div>


                    <form action="../MOVIMENTAR/INDEXMOVIMENTAR.php" method="POST">
                        <input type="submit" class="btn btn--radius-2 btn--red" value="Movimentar" onClick="history.back()">

                        <br><br>

                    </form>



                    <div>
                        <form action="../PRINCIPAL/menugarantia.php" method="POST">
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Garantia "><br><br>


                        </form>
                    </div>


                           <div>
                        <form action="relatorio.php" method="POST">
                            <input type="submit" class="btn btn--radius-2 btn--red" value="Relatórios"><br><br>
                  </div>

                        </form>
                    </div>
                   
<!--
                    <div align="center">
                        <a class="btn btn--radius-2 btn--red" href="http://zxing.appspot.com/scan?ret=http://10.77.38.35/ambienteteste/CONTROLE/PRINCIPAL/funcionacod.php/?codigo={CODE} ">PESQUISAR POR CÓDIGO DE BARRAS</a>

                    </div>
-->


                    </form>


                </div>

            </div>



        </div>

    </div>

    </div>


    </div>


</body>

</html>
<!-- end document-->
