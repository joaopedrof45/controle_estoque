<?php

include_once("../../conexao.php");
include_once("TOP.html");

$id = $_GET['id'];

?>

<head>

    



        <form action="atualizar_produto.php" method="POST">
            

            <?php
            // faz consulta somente para retonar o tipo  do item que esta sendo alterado a garantia
            $sql = "SELECT * FROM controle_prot WHERE PATRIMONIO = $id";
            $retorno = mysqli_query($conn, $sql);

            while ($array = mysqli_fetch_array($retorno, MYSQLI_ASSOC)) {
                $TIPO = $array['TIPO'];
            }
            ?>


                  <?php
            $sql = "SELECT * FROM garantia WHERE pat = $id";
            $retorno = mysqli_query($conn, $sql);

            while ($array1 = mysqli_fetch_array($retorno, MYSQLI_ASSOC)) {
                $data_ex = $array1['data_ex'];
                $descricao = $array1['descricao'];
                $data_ini = $array1['data_ini'];
                $pat = $array1['pat'];

            ?>


         

<h2 class="title">Editar <?= $TIPO?></h2>
    </div>
    <div class="divtable ">

                <div class="form-group">
        <div class="form-group">
                    <label for="quantidadeProduto">
                        <h4>Patrimonio</h4>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="patalmox" name="patalmox" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $pat ?>">
                </div>

                <div class="form-group">
                    <label for="nomeProduto">

                        <h4>Descrição</h4>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="descalmox" name="descalmox" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $descricao ?>">
                </div>

       <div class="form-group">
                    <label for="quantidadeProduto">
                        <h4>Data Inicial</h4>
                    </label>
                    <input class="input--style-5" type="date" class="form-control" id="dataini" name="dataini" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $data_ini ?>">
                </div>

              <div class="form-group">
                    <label for="quantidadeProduto">
                        <h4>Data de Expiração</h4>
                    </label>
                    <input class="input--style-5" type="date" class="form-control" id="dataex" name="dataex" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $data_ex  ?>">
                </div>

        

                <button type="submit" class="btn-enviar btn btn-primary btn-sm btn-block">
                    <h7>Atualizar</h7>
                </button>
            <?php } ?>



        </form>
    </div>