<?php



 class importar_export{



public function importar($nome_arquivo,$tabela){
    include_once("../conexao.php");
    include_once("../conexao2.php");

  //verificando se o arquivo e csv

  $ext=explode(".",$nome_arquivo);
  $extensao=end($ext);
  if($extensao!="csv"){
    echo "<script>alert('Escolha um Aquivo CSV');history.back()</script>";
      exit;
  }else{
    // Exemplo de scrip para exibir os nomes obtidos no arquivo CSV de exemplo


    $delimitador = ';';
    $cerca = '"';
    // Abrir arquivo para leitura
    $f = fopen($nome_arquivo, 'r');


if ($f) { 

    // Ler cabecalho do arquivo
    $cabecalho = fgetcsv($f, 0, $delimitador, $cerca);

    // Enquanto nao terminar o arquivo
    $cont=0;
    $cont1=0;
    while (!feof($f)) { 

        // Ler uma linha do arquivo
        $linha = fgetcsv($f, 0, $delimitador, $cerca);
        if (!$linha) {
            continue;
        }
        
        // Montar registro com valores indexados pelo cabecalho
        $registro = array_combine($cabecalho, $linha);

        //verificando se está faltando alguma coluna no
        if(@$registro['NOMEITEM']==""||@$registro['LOCALIZACAO']==""||@$registro['ORIGEM']==""||@$registro['DESTINO']==""||@$registro['TIPO']==""||@$registro['QUANTIDADE']==""||@$registro['DESCRICAO']==""||@$registro['DATA']==""||@$registro['PATRIMONIO']==""||@$registro['NR_SERIE']==""||@$registro['id']==""||@$registro['MOTIVO']==""||@$registro['PROTOCOLO']==""||@$registro['gms']==""){
          echo "<script>alert('Estão faltando colunas no csv ');history.back()</script>";
          exit;
        }
     
switch($tabela){

    case "controle":
    try{
        $result_usuario = "INSERT INTO controle(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms)

        VALUES('$registro[NOMEITEM]','$registro[LOCALIZACAO]','$registro[ORIGEM]','$registro[DESTINO]','$registro[TIPO]','$registro[QUANTIDADE]','$registro[DESCRICAO]',NOW(),'$registro[PATRIMONIO]','$registro[NR_SERIE]','$registro[id]','$registro[MOTIVO]','$registro[PROTOCOLO]','$registro[gms]')";
       
       
        $pesq = mysqli_query($conn, $result_usuario);
        
        if($pesq==0){
          $cont++;
          echo"<script>alert(Erro ao Importar $registro[NOMEITEM] );</script>";
        }else
        {
          $cont1++; // conta quantas importações foram feitas
        }


      }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};

    break;

    case "controle_prot":
        try{
            $result_usuario = "INSERT INTO controle(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms)
    
            VALUES('$registro[NOMEITEM]','$registro[LOCALIZACAO]','$registro[ORIGEM]','$registro[DESTINO]','$registro[TIPO]','$registro[QUANTIDADE]','$registro[DESCRICAO]',NOW(),'$registro[PATRIMONIO]','$registro[NR_SERIE]','$registro[id]','$registro[MOTIVO]','$registro[PROTOCOLO]','$registro[gms]')";
           
           
            $pesq = mysqli_query($conn, $result_usuario);
    
          }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
    
        break;
        case "history":
           
        echo"nada implementado ainda";
        break;
        
        case "garantia":
        echo"nada implementado ainda";
        
        break;
            
        case "sedes":
        echo"nada implementado ainda"; 
        
        break;
        
        default:
        echo"escolha de tabela inválida";
        break;

    

}
          
    
        
      

    
  
}

//mostra se teve erro ao importar e a quantidade de importações feitas
if($cont==0 && $cont1==0){
  
  echo "<script>alert('Todas Importações tiveram erro!');history.back()</script>";
}else{
  echo "<script>alert('Total de importações : $cont1 ');history.back()</script>";
}


fclose($f);


}


  }

    

}
 }
    

    ?>
