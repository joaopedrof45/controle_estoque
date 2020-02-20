<!DOCTYPE html>
<html lang="en">
<?php include_once("TOP.html"); ?>

<h2 class="title">Estoque Almoxarifado</h2>
</div>
<div class="divtable ">
  <table>
    <tr>



      <div style="padding:20px 0" class="container">


        <?php
        if (isset($_GET['excluido'])) {
          echo '<div id="alerta" class="alert alert-danger" role="alert">
                Garantia <b></b> excluida com sucesso!.
                </div>';
        }
        ?>


        <table class="table">
          <thead>
            <tr class="principal" text align='center'>
              <th scope="col">
                <h4 text align="center">Patrimônio</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Descrição</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Data de Cadastro</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Data de Expiração</h4>
              </th>
            </tr>

          </thead>
          <tbody>

            <?php
            include_once("../../conexao.php");
            $sql = "SELECT pat,data_ex,descricao,data_ini FROM garantia where pat<>'0'";
            $retorno = mysqli_query($conn, $sql);

            while ($array = mysqli_fetch_array($retorno, MYSQLI_ASSOC)) {
              $pat = $array['pat'];
              $descricao = $array['descricao'];
              $data_ini = $array['data_ini'];
              $data_ex = $array['data_ex'];


                  $dataformat1=date('d/m/Y H:i:s', strtotime($data_ini));
                      $dataformat2=date('d/m/Y H:i:s', strtotime($data_ex));
            ?>
              <tr class="principal" text align='center'>
                <td class="principal" text align='center'>
                  <h5><?= $pat ?></h5>
                </td>
       
               <td class="principal" text align='center'>
                  <h5><?= $descricao ?></h5>
                </td>

                <td class="principal" text align='center'>
                  <h5><?= $dataformat1 ?></h5>
                </td>
                <td class="principal" text align='center'>
                  <h5><?= $dataformat2 ?></h5>
                </td>

                <td><a class="btn-editar btn btn-sm btn-warning" href="editar_almox.php?id=<?= $pat ?>" role="button"><i class="far fa-edit"></i> &nbspEditar&nbsp</a>

                  <a class="btn-editar btn btn-sm btn-danger" href="excluir_almox.php?id=<?= $pat ?>" role="button"><i class="far fa-trash-alt"></i> Excluir</a></td>
              </tr>
            <?php } ?>

          </tbody>
        </table>


      </div>



      </body>

</html>