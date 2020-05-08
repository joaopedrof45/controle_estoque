<?php



 class importar_export{



public function importar($caminho,$nome_arquivo,$tabela,$tipo){
    include_once("../conexao.php");
    include_once("../conexao2.php");

  //verificando se o arquivo e csv





    $delimitador = ';';
    $cerca = '"';
    // Abrir arquivo para leitura
    $f = fopen($caminho, 'r');

var_dump($nome_arquivo);
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

     
     
switch($tabela){

    case "controle":

           //verificando se está faltando alguma coluna no
                if(@$registro['NOMEITEM']==""||@$registro['LOCALIZACAO']==""||@$registro['ORIGEM']==""||@$registro['DESTINO']==""||@$registro['TIPO']==""||@$registro['QUANTIDADE']==""||@$registro['DESCRICAO']==""||@$registro['DATA']==""||@$registro['PATRIMONIO']==""||@$registro['NR_SERIE']==""||@$registro['id']==""||@$registro['MOTIVO']==""||@$registro['PROTOCOLO']==""||@$registro['gms']==""){
                  echo "<script>alert('Estão faltando colunas no csv ');history.back()</script>";
                  exit;
                }


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

              // primeira faz verificações de colunas das planilha

               if(@$registro['NOMEITEM']==""||@$registro['LOCALIZACAO']==""||@$registro['ORIGEM']==""||@$registro['DESTINO']==""||@$registro['TIPO']==""||@$registro['QUANTIDADE']==""||@$registro['DESCRICAO']==""||@$registro['DATA']==""||@$registro['PATRIMONIO']==""||@$registro['NR_SERIE']==""||@$registro['MOTIVO']==""||@$registro['PROTOCOLO']==""||@$registro['gms']==""){
                    echo "<script>alert('Estão faltando colunas no csv ');history.back()</script>";
                    exit;
                  }


          // faz o insert na tabela com try cat caso houver erro

          try{
            $result_usuario = "INSERT INTO controle_prot(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO,gms)

            VALUES('$registro[NOMEITEM]','$registro[LOCALIZACAO]','$registro[ORIGEM]','$registro[DESTINO]','$registro[TIPO]','$registro[QUANTIDADE]','$registro[DESCRICAO]',NOW(),'$registro[PATRIMONIO]','$registro[NR_SERIE]','$registro[MOTIVO]','$registro[PROTOCOLO]','$registro[gms]')";
           
           
            $pesq = mysqli_query($conn, $result_usuario);

          //faz contador para ver quantos registros foram inseridos caso tenha dado certo

            if($pesq==0){
              $cont++;
              echo"<script>alert(Erro ao Importar $registro[NOMEITEM] );</script>";
            }else
            {
              $cont1++; // conta quantas importações foram feitas
            }
              
                    }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
    
        break;
 
        case "garantia":

      


            // faz o insert na tabela com try cat caso houver erro

            try{
              $result_usuario = "INSERT INTO garantia(id,data_ex,descricao,data_ini,pat)

              VALUES('$registro[id]','$registro[data_ex]','$registro[descricao]','$registro[data_ini]','$registro[pat]')";
             
             
              $pesq = mysqli_query($conn, $result_usuario);

            //faz contador para ver quantos registros foram inseridos caso tenha dado certo

              if($pesq==0){
                $cont++;
                echo"<script>alert(Erro ao Importar  );</script>";
              }else
              {
                $cont1++; // conta quantas importações foram feitas
              }
                



    }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
        
        break;
            
        case "sedes":
        
 
 if(@$registro['id']==""||@$registro['nomesede']==""||@$registro['endereco']==""||@$registro['nr']==""||@$registro['cep']==""||@$registro['local']==""){
                      echo "<script>alert('Estão faltando colunas no csv  ');history.back()</script>";
                      exit;
                    }
            // faz o insert na tabela com try cat caso houver erro

            try{
              $result_usuario = "INSERT INTO sedes()

              VALUES('$registro[id]','$registro[nomesede]','$registro[endereco]','$registro[nr]','$registro[cep]','$registro[local]')";
             
             
              $pesq = mysqli_query($conn, $result_usuario);

            //faz contador para ver quantos registros foram inseridos caso tenha dado certo

              if($pesq==0){
                $cont++;
                echo"<script>alert(Erro ao Importar  );</script>";
              }else
              {
                $cont1++; // conta quantas importações foram feitas
              }
                }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
        break;
        
        default:
        echo"<script>alert(Opção Inválida !  );</script>";
        break;

    

}
          
    
        
      

    
  
}

//mostra se teve erro ao importar e a quantidade de importações feitas
if($cont==0 && $cont1==0){
  
  echo "<script>alert('Todas Importações tiveram erro!');history.back()</script>";
}else{
  echo "<script>alert('Total de importações : $cont1  ');history.back()</script>";
}


fclose($f);


}


  }

    

}
 
    

    ?>
