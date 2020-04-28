<?php

error_reporting(0);
ini_set(“display_errors”, 0 );
// Esse dois codigos ignoram completamente qualquer erro , não é uma boa pratica
// mas para meios imediatos , e não encontrando soluções pode ser util



class Export{

    public function excel($name, $fileName, $data){
        // nome do arquivo
        $fileName = $fileName . '.xls';
        // Abrindo tag tabela e criando título da tabela
        $html = '';
        $html= '<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        </head>';
        $html .= '<table border="1">';
        $html .= '<tr>';
        $html .= '<th colspan="' . count($data) . '">' . $name . '</th>';
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

        // configurando header para download
        header("Content-Description: PHP Generated Data");
        header("Content-Type: application/x-msexcel");
        header("Content-Disposition: attachment; filename=\"{$fileName}\"");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Pragma: no-cache");
        // envio conteúdo
        return $html;
        exit;
    }

    public function xml($data){

    }
}



?>