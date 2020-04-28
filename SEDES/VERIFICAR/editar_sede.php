<?php

include_once("../../conexao.php");
include_once("TOP.html");

$id = $_GET['id'];

?>

<head>

    



        <form action="atualizar_sede.php" method="POST">


                 <?php
            $sql = "SELECT * FROM sedes WHERE id = $id";
            $retorno = mysqli_query($conn, $sql);

            while ($array1 = mysqli_fetch_array($retorno, MYSQLI_ASSOC)) {
                $nomesede = $array1['nomesede'];
                $endereco = $array1['endereco'];
                $nr = $array1['nr'];
                $cep = $array1['cep'];
                $local = $array1['local'];
            ?>

         

<h2 class="title">Editar Sede></h2>
    </div>
    <div class="divtable ">



    <div style="display:none;" class="form-group">

                    <label for="quantidadeProduto">
                        <h4 >id</h4>
                    </label>
                    <input class="input--style-5" type="int" class="form-control" id="idalmox" name="id" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $id ?>">

                </div>

                <div class="form-group">
                    <label for="nomeProduto">

                        <h4>Nome da Sede</h4>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="descalmox" name="nomesede" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $nomesede ?>">
                </div>

       <div class="form-group">
                    <label for="quantidadeProduto">
                        <h4>Endereço Sede</h4>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="dataini" name="endereco" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $endereco ?>">
                </div>

              <div class="form-group">
                    <label for="quantidadeProduto">
                        <h4>Número da Sede</h4>
                    </label>
                    <input class="input--style-5" type="int" class="form-control" id="dataex" name="nr" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $nr  ?>">
                </div>

                  <div class="form-group">
                    <label for="quantidadeProduto">
                        <h4>Cep</h4>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="dataex" name="cep" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $cep  ?>">
                </div>

                  <div class="form-group">
                    <label for="quantidadeProduto">
                        <h4>Região</h4>
                    </label>
                    <input class="input--style-5" type="text" class="form-control" id="dataex" name="local" placeholder="Digite o nome do produto" autocomplete="off" value="<?= $local  ?>">
                </div>





                <button type="submit" class="btn-enviar btn btn-primary btn-sm btn-block">
                    <h7>Atualizar</h7>
                </button>
            <?php } ?>



        </form>
    </div>