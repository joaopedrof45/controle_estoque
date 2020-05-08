<!DOCTYPE html>
<html lang="en">
<?php include_once("TOP.html"); ?>

<h2 class="title">Lista Sedes</h2>
</div>
<div class="divtable ">
  <table>
    <tr>



      <div style="padding:20px 0" class="container">


        <?php
        if (isset($_GET['excluido'])) {
          echo '<div id="alerta" class="alert alert-danger" role="alert">
                Sede <b></b> excluida com sucesso!.
                </div>';
        }
        ?>


        <table class="table">
          <thead>
            <tr class="principal" text align='center'>
              <th scope="col">
                <h4 text align="center">Id</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Nome da Sede</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Endereço</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Número</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Cep</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Local</h4>
              </th>
            </tr>

          </thead>
          <tbody>

            <?php
            include_once("../../conexao.php");
            $sql = "SELECT * FROM sedes where id<>0";
            $retorno = mysqli_query($conn, $sql);
            
            
            $data=[];//inicializando array e interador
            $i=0;
            while ($array = mysqli_fetch_array($retorno, MYSQLI_ASSOC)) {

              $id = $array['id'];
              $nomesede = $array['nomesede'];
              $endereco = $array['endereco'];
              $nr = $array['nr'];
              $cep = $array['cep'];
              $local = $array['local'];
            ?>
              <tr class="principal" text align='center'>
                <td class="principal" text align='center'>
                  <h5><?= $id ?></h5>
                </td>
       
               <td class="principal" text align='center'>
                  <h5><?= $nomesede ?></h5>
                </td>

                <td class="principal" text align='center'>
                  <h5><?= $endereco ?></h5>
                </td>
                <td class="principal" text align='center'>
                  <h5><?= $nr ?></h5>
                </td>
                  <td class="principal" text align='center'>
                  <h5><?= $cep ?></h5>
                </td>
                  <td class="principal" text align='center'>
                  <h5><?= $local ?></h5>
                </td>

<?php
      $data[$i]['id']=$array['id'];
      $data[$i]['nomesede']=$array['nomesede'];
      $data[$i]['endereco']=$array['endereco'];
      $data[$i]['nr'] = $array['nr'];
      $data[$i]['cep'] = $array['cep'];
      $data[$i]['local'] = $array['local'];
      $i++;


?>



                <td><a class="btn-editar btn btn-sm btn-warning" href="editar_sede.php?id=<?= $id ?>" role="button"><i class="far fa-edit"></i> &nbspEditar&nbsp</a>

                  <a class="btn-editar btn btn-sm btn-danger" href="excluir_sede.php?id=<?= $id ?>" role="button"><i class="far fa-trash-alt"></i> Excluir</a></td>
              </tr>
            <?php } ?>



    <?php     

            //$data1=json_encode($data);
                // esse json encode é muito bom , simples assim  usando isso agora o $data1 esta 
                //em formato json
                // se quiser mandar para outra pagina é simples 
                //basta fazer igual ao esquema do html abaixo
                // mandar pelo input e esconder o campo com type hidden
                // e na outra pagina para recupar é só necessário usar a função json_decode($var);


                include_once("../../VERIFICAR/gerar_relatorio/Export.php");

                //chama  a classe de exportação  passando  o nome da tabela , nome do arquivo , e o array
              
                // esse método gera um html , então como esta pagina tem um estilo de pagina proprio
                // é bom e necessário enviar para outra página qeu fará a tratativa  pelo form que 
                //quando chamado joga para esse outra pagina a variavel com o conteudo html que esta
                // dentro do input escondido.

                $data= json_encode($data);
                echo"<form action='../../VERIFICAR/gerar_relatorio/api.php' method='POST'>";
                echo"<input  type='submit' value='Gerar Excel'>";
                echo"<input name='almox' type='hidden' value='$data'>";
                echo"<input name='tipo' type='hidden' value='Sedes'>";
                echo"</form>";






  ?>

          </tbody>
        </table>


      </div>



      </body>

</html>