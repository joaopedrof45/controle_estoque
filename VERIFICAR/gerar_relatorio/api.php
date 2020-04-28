<?php
include_once("Export.php");


//aqui é a pagina simples que faz a segunda renderização do html vindo de alguma pagina
//e junto com a variavel que tem o html que é o  $data como se fosse um array , a principio tentei
//fazer com json , mas a classe faz as tratativas por meio de html

$data=$_POST['almox'];
$tipo=$_POST['tipo'];


// aqui uma tratativa caso o campo venha em formato json
//cria um html para renderizar
//se nao no else so printa o hyml e chama o metodo
if($tipo=="garantia" ||$tipo=="Sedes" ||$tipo=="Relatórios"){
$data= json_decode($data);

$html = '';
$html= '<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>';
        $html .= '<table border="1">';
        $html .= '<tr>';
        $html .= '<th colspan="' . count($data) . '">' . $tipo . '</th>';
        $html .= '</tr>';

// criando cabeçalho
$html .= '<tr>';
foreach ($data[0] as $k => $v){
    $html .= '<th>' . ucfirst($k) . '</th>';
}
$html .= '</tr>';
// criando o conteúdo da tabela
for($i=0; $i < count($data); $i++){
    $html .= '<tr>';
    foreach ($data[$i] as $k => $v){
        $html .= '<td>' . $v . '</td>';
    }
    $html .= '</tr>';



    
}
$html .= '</table>';
$data=$html;



echo $data; 
$Export = new Export;
$html=$Export->excel($tipo,'exportacao',$data);

}else{
echo $data; 
$Export = new Export;
$html=$Export->excel('','exportacao',$data);
}




//simplesmente o primeiro parametro fica em branco porque internamente ja foi preenchido
//tendo apenas que dar um nome para o arquivo no segundo parametro.

?>