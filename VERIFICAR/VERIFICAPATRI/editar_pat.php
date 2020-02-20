<?php

include_once("../../conexao.php");
include_once("TOP.html");

$id = $_GET['id'];
$localizacao1 = $_GET['loc'];
$pat = $_GET['pat'];


?>





</head>

<h2 class="title">Editar Produto</h2>
</div>
<div class="divtable  table-responsive">



    <form action="atualizar_produto.php" method="POST">
        <?php
        $sql = "SELECT * FROM controle_prot WHERE PATRIMONIO = $id";
        $retorno = mysqli_query($conn, $sql);

        while ($array = mysqli_fetch_array($retorno, MYSQLI_ASSOC)) {
            $nome = $array['NOMEITEM'];
            $localizacao = $array['LOCALIZACAO'];
            $quantidade = $array['QUANTIDADE'];
            $desc = $array['DESCRICAO'];
            $data = $array['DATA'];
            $id = $array['PATRIMONIO'];
            $gms = $array['gms'];
            $prot = $array['PROTOCOLO'];
        ?>


            <div class="form-group">
                <label for="nomeProduto">
                    <h5>Nome</h5>

                </label>
                <input class="input--style-5" type="text" class="form-control" id="nomealmox" name="nome" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $nome ?>">
            </div>


            <div class="form-group">
                <label for="quantidadeProduto">

                    <h5>Localização</h5>
                </label>
                <input class="input--style-5" type="text" class="form-control" id="localmox" name="localpat" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $localizacao ?>">
            </div>


            <div>
                <label for="quantidadeProduto">

                    <h5>Quantidade</h5>
                </label>
                <input class="input--style-5" type="number" class="form-control" id="quantidadealmox" name="quantidadepat" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $quantidade ?>">
            </div>

            <div class="form-group">
                <label for="quantidadeProduto">
                    <h5>Descricao</h5>
                </label>
                <input class="input--style-5" type="text" class="form-control" id="descpat" name="descpat" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $desc ?>">
            </div>

            <div class="form-group">
                <label for="quantidadeProduto">
                    <h5>Data</h5>
                </label>
                <input class="input--style-5" type="date-time" class="form-control" id="datapat" name="datapat" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $data ?>">
            </div>


            <div class="form-group">
                <label for="quantidadeProduto">
                    <h5>gms</h5>
                </label>
                <input class="input--style-5" type="text" class="form-control" id="descalmox" name="gms" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $gms ?>">
            </div>


            <div class="form-group">
                <label for="quantidadeProduto">
                    <h5>Protocolo</h5>
                </label>
                <input class="input--style-5" type="text" class="form-control" id="descalmox" name="prot" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $prot ?>">
            </div>




            <div class="divpequena">


                <div style="visibility:hidden;" class="form-group">
                    <label for="quantidadeProduto">
                        <h5>Id</h5>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="idpat" name="idpat" autocomplete="off" value="<?= $id ?>">
                </div>

                <div style="visibility:hidden;" class="form-group">
                    <label for="quantidadeProduto">
                        <h5>loc</h5>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="loc" name="localizacao1" autocomplete="off" value="<?= $localizacao1 ?>">
                </div>

                <div style="visibility:hidden;" class="form-group">
                    <label for="quantidadeProduto">
                        <h5>Pat</h5>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="loc" name="pat" autocomplete="off" value="<?= $pat ?>">
                </div>

            </div>

            <button type="submit" class="btn-enviar btn btn-primary btn-sm btn-block">
                <h7>Atualizar</h7>
            </button>
        <?php } ?>



    </form>
</div>