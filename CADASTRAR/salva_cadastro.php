
<?php
include_once("../conexao.php");
$NOMEITEM = $_POST['NOMEITEM'];
$LOCALIZACAO = $_POST['locais'];
$ORIGEM = $_POST['locais'];
$TIPO = $_POST['TIPO'];
$QUANTIDADE = $_POST['QUANTIDADE'];
$DESCRICAO = $_POST['DESCRICAO'];
$patrimonio = $_POST['Patrimonio'];
$numserie = $_POST['serie'];
$gms= $_POST['gms'];

if ($NOMEITEM == "" || $TIPO == "" || $TIPO == "Escolha uma opção" ||  $QUANTIDADE == "" ||  $DESCRICAO == "") {
  echo "<script> alert('Preencha todos os campos') ;</script>";

  echo "<script>history.go(-1)</script>";
} else {

  if ($patrimonio == "") {
    $patrimonio = 0;
  }


  if ($QUANTIDADE == "") {
    $QUANTIDADE = 1;
  }



  $newpesquisa = "Select * from controle where NOMEITEM='$NOMEITEM' AND LOCALIZACAO='$ORIGEM' ";
  $pesq1 = mysqli_query($conn, $newpesquisa);

  while ($registro = mysqli_fetch_array($pesq1)) {
    $nomeitemBANCO = $registro[0];
    $QTD = $registro['QUANTIDADE'];
    $LOCBANCO = $registro['LOCALIZACAO'];
  }
$suaString = strtolower($NOMEITEM);
  if ($nomeitemBANCO == $suaString && $LOCBANCO == $ORIGEM) {

    $novaqtd = $QTD + $QUANTIDADE;
    $result_select = "UPDATE controle set QUANTIDADE ='$novaqtd'  where NOMEITEM='$NOMEITEM' and LOCALIZACAO='$ORIGEM' ";
    $pesq = mysqli_query($conn, $result_select);

   
if($pesq ){
echo "<script> alert('Cadastro feito com sucesso');</script>";
     
header('Location: INDEXCADASTRAR.php'.'?Cadastrado');


           }else
           {
echo "<script> alert('Erro ao Cadastrar');</script>";
echo "<script>history.go(-1)</script>";

           }


    exit;
  }



  

  if ($patrimonio == 0 && $TIPO == "Patrimonio") {
    echo "<script> alert('Patrimonio não pode ser zero') ;</script>";

    echo "<script>history.go(-1)</script>";
    exit;
  } elseif ($patrimonio == 0 && $TIPO == "Almoxarifado") {


    $result_usuario = "INSERT INTO controle(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,gms)

 VALUES('$suaString','$LOCALIZACAO','$ORIGEM','null','$TIPO','$QUANTIDADE','$DESCRICAO',NOW(),'$patrimonio','$numserie','$gms')";


    $pesq = mysqli_query($conn, $result_usuario);



if($pesq ){
echo "<script> alert('Cadastro feito com sucesso');</script>";
     
header('Location: INDEXCADASTRAR.php'.'?Cadastrado');


           }else
           {
echo "<script> alert('Erro ao Cadastrar');</script>";
echo "<script>history.go(-1)</script>";

           }


    
  } else {



    $newpesquisa10 = "Select * from controle_prot where NOMEITEM='$NOMEITEM' AND PATRIMONIO='$patrimonio' ";
    $start = mysqli_query($conn, $newpesquisa10);

    while ($registro2 = mysqli_fetch_array($start)) {
      $PatrimonioBANCO = $registro2[8];
    }
    if ($PatrimonioBANCO == $patrimonio) {

      echo "<script> alert('O patrimonio : $PatrimonioBANCO já está cadastrado');</script>";
      echo "<script>history.go(-1)</script>";
    } else {


      $result_usuario1 = "INSERT INTO controle_prot(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,gms)

 VALUES('$NOMEITEM','$LOCALIZACAO','$ORIGEM','null','$TIPO','$QUANTIDADE','$DESCRICAO',NOW(),'$patrimonio','$numserie','$gms')";


      $pesq = mysqli_query($conn, $result_usuario1);


 if($pesq ){
echo "<script> alert('Cadastro feito com sucesso');</script>";
     
header('Location: INDEXCADASTRAR.php'.'?Cadastrado');
      

           }else
           {
            echo "<script> alert('Erro ao Cadastrar');</script>";
echo "<script>history.go(-1)</script>";

           }

      
    }
  }
}


?>