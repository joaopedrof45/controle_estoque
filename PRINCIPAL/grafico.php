<?php



 class Grafico{

public $hostname_conexao = "localhost";
public $database_conexao = "controle";
public $username_conexao = "root";
public $password_conexao = "";


	

  function   calc_grap(String $acao,String $tipo){


$mysqli = new mysqli($this->hostname_conexao, $this->username_conexao, $this->password_conexao, $this->database_conexao);
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;

}




switch ($acao){

case "Exclusão":

                    $sql_code = "select * from history where acao='$acao' and TIPO='$tipo'";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;


break;

case "Alteração":
                   $sql_code = "select * from history where acao='$acao'and TIPO='$tipo'";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;

break;

case "Movimentação":
                    $sql_code = "select * from history where acao='$acao'and TIPO='$tipo'";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;
break;

default:echo"nao existe essa acao";
break;



 }






 
 return $num;


}


function item_acao(String $nomeitem ,String $acao,String $tipo)
{

	$mysqli = new mysqli($this->hostname_conexao, $this->username_conexao, $this->password_conexao, $this->database_conexao);
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;

}


if($tipo=="Almoxarifado"){


                    $sql_code = "select * from history where acao='$acao' and TIPO='$tipo' and NOMEITEM like'%$nomeitem%' ";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;



 return $num;



}else{
                    $sql_code = "select * from history where acao='$acao' and TIPO='$tipo' and NOMEITEM like'%$nomeitem%' ";
                    $execute = $mysqli->query($sql_code) or die($mysqli->error);
                    $produto = $execute->fetch_assoc();
                    $num = $execute->num_rows;
                


 return $num;
}

 






}













}












