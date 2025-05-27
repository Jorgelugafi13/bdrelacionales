<?php 
    header("content-Type: application/json");
    header("access-control-Allow-Origin: *");
    
    
    $usuarios=[

        ["id" => 1, "nombre" => "Jorge luis", "correo" => "jorgeluis@gmail.com"],
        ["id" => 1, "nombre" => "hugo", "correo" => "hugo@gmail.com"],
        ["id" => 1, "nombre" => "Sergio Martinez", "correo" => "sergio@gmail.com"],
    ];

    echo json_encode($usuarios);
?>
