<?php

namespace Core;

if (!defined('C7E3L8K9E5')){
    header("Location: /");
    //die("Erro: Página não encontrada!");
}

/**
 * Classe Abstrata não pode ser instanciada
 * Define as constantes do projeto
 */
abstract class Config
{
    protected function config(): void
    {
        //URL do projeto
        define('URL', 'http://localhost/DLInfo/');
        define('URLADM', 'http://localhost/DLInfo/adm/');

        define('CONTROLLER', 'Home');
        define('CONTROLLERERRO', 'Erro');

        //Credenciais do banco de dados
        define('HOST', 'localhost');
        define('USER', 'root');
        define('PASS', '');
        define('DBNAME', 'dlinfo');
        define('PORT', 3306);

        //Email administrativo
        define('EMAILADM', 'darlinton2000@gmail.com');
    }
}