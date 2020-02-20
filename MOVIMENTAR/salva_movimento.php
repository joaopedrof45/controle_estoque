
<?php
include_once("../conexao.php");
$TIPO = $_POST['TIPO'];
$NOMEITEM = $_POST['NOMEITEM'];
$QUANTIDADE = $_POST['QUANTIDADE'];
$DESTINO = $_POST['DESTINO'];
$ORIGEM = $_POST['ORIGEM'];
$Patrimonio = $_POST['Patrimonio'];
$motivo = $_POST['motivo'];
$protocolo = $_POST['protocolo'];




if ($TIPO == "Patrimonio" && $Patrimonio == 0) {

	echo "<script> alert('Patrimonio inválido!') ;</script>";
	echo "<script>history.go(-1)</script>";
	exit;
}


if ($Patrimonio == "" || $Patrimonio == 0) {

	$newpesquisa = "Select * from controle where NOMEITEM='$NOMEITEM' AND LOCALIZACAO='$ORIGEM' ";
	$pesq1 = mysqli_query($conn, $newpesquisa);

	while ($registro = mysqli_fetch_array($pesq1)) {
		$nomeitemBANCO = $registro[0];
		$loc = $registro[1];
		$origem = $registro[2];
		$destino = $registro[3];
		$tipo = $registro[4];
		$qtd = $registro[5];
		$descricao = $registro[6];
		$data = $registro[7];
		$pat = $registro[8];
		$SERIE = $registro[9];
	}






	if ($QUANTIDADE > $qtd && $ORIGEM == $loc) {


		echo "<script> alert('Erro quantidade insuficiente no Banco!') ;</script>";
		echo "<script>history.go(-1)</script>";
		exit;
	}/*VV*/

	if ($DESTINO == $loc && $ORIGEM == $loc) {

		echo "<script> alert('Escolha uma localizacao diferente da origem!') ;</script>";
		echo "<script>history.go(-1)</script>";
		exit;
	}/*VV*/



	if ($ORIGEM == $loc) {


		$novaqtd = $qtd - $QUANTIDADE;
		$result_select = "UPDATE controle  set QUANTIDADE='$novaqtd' WHERE LOCALIZACAO = '$ORIGEM' AND NOMEITEM='$NOMEITEM'";
		$pesq = mysqli_query($conn, $result_select);
		echo "<script> alert('Estoque Atualizado!') ;</script>";

		echo "<script>history.go(-1)</script>";
//AQUI SÓ FAZ A SUBTRAÇÃO DA QUANTIDADE SOLIDATA  PELO USUARIO




		
//faz verificação se existe um registro com esse nome no local escolhido
		$newpesquisa2 = "Select LOCALIZACAO from controle where LOCALIZACAO='$DESTINO' and NOMEITEM = '$NOMEITEM' ";
		$sqlcheckn = mysqli_query($conn, $newpesquisa2);
		$rowsn = mysqli_num_rows($sqlcheckn);


// se retornar 0 quer dizer que nao entao faz um insert no novo local
		if ($rowsn == 0) {
			$result_select1 = "Insert into controle(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO)
values('$nomeitemBANCO','$DESTINO','$origem','$destino','$tipo','$QUANTIDADE','$descricao',now(),'$pat','$SERIE','$motivo','$protocolo ')
";
			$pesq = mysqli_query($conn, $result_select1);

			//se nao ele seleciona a quantidade que ja existe ja e da um update com a quantidade que ira ser transferida agora para esse lugar.
		} else {

			$newpesquisa3 = "Select QUANTIDADE from controle where LOCALIZACAO='$DESTINO'and NOMEITEM = '$NOMEITEM'";
			$pesq5 = mysqli_query($conn, $newpesquisa3);
			$dado = mysqli_fetch_array($pesq5);
			$valor = $dado['QUANTIDADE'];

			$novaqtd = $valor + $QUANTIDADE;
			$result_select = "UPDATE controle  set QUANTIDADE='$novaqtd',MOTIVO='$motivo',PROTOCOLO='$protocolo ',DATA=now() WHERE LOCALIZACAO <> '$ORIGEM' and LOCALIZACAO = '$DESTINO' and NOMEITEM = '$NOMEITEM'	";
			$pesq = mysqli_query($conn, $result_select);
		}
	}

//aqui faz o historico de transferencia na tabela history
	$historico = "Insert into history(NOMEITEM,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO)
values('$nomeitemBANCO','$ORIGEM','$DESTINO','$tipo','$QUANTIDADE','$descricao',now(),'$pat','$SERIE','$motivo','$protocolo')
";
			$pesq = mysqli_query($conn, $historico);



}





// Faz insert na Tabela Patrimonios

else {

	$QUANTIDADE = 1;


	$newpesquisa1 = "Select * from controle_prot where PATRIMONIO='$Patrimonio'  ";
	$pesq2 = mysqli_query($conn, $newpesquisa1);

	while ($registro = mysqli_fetch_array($pesq2)) {
		$nomeitemBANCO = $registro[0];
		$loc = $registro[1];
		$origem = $registro[2];
		$destino = $registro[3];
		$tipo = $registro[4];
		$qtd = $registro[5];
		$descricao = $registro[6];
		$data = $registro[7];
		$pat = $registro[8];
		$numserie = $registro[9];
	}



	if ($DESTINO == $loc && $ORIGEM == $loc) {

		echo "<script> alert('Escolha uma localizacao diferente da origem!') ;</script>";
		echo "<script>history.go(-1)</script>";
		exit;
	}

	if ($pat == 0) {
		echo "<script> alert('Patrimonio não existe!') ;</script>";
		echo "<script>history.go(-1)</script>";
		exit;
	}
	$result_select2 = "UPDATE controle_prot set LOCALIZACAO='$DESTINO' ,MOTIVO='$motivo',RESPONSAVEL='$protocolo ',DATA=now() where  PATRIMONIO='$Patrimonio'
";
	$pesq = mysqli_query($conn, $result_select2);


	$historico2 = "Insert into history(NOMEITEM,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO)
values('$nomeitemBANCO','$loc','$DESTINO','$tipo','$QUANTIDADE','$descricao',now(),'$pat',$numserie ,'$motivo',''$protocolo'')
";
			$pesq = mysqli_query($conn, $historico2);

	echo "<script> alert('Movimentação salva no Banco!') ;</script>";
	echo "<script>history.go(-1)</script>";
}












?>