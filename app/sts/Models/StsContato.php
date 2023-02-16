<?php

namespace Sts\Models;

//Redirecionar ou parar o processamento quando o usuário não acessa o arquivo index.php
if (!defined('C7E3L8K9E5')){
    header("Location: /");
    //die("Erro: Página não encontrada!");
}

/**
 * Models responsável em cadastrar no BD
 * 
 * @author Darlinton Luis Siqueira <darlinton2000@gmail.com>
 */
class StsContato 
{
    private array $data;

    public function create(array $data): bool
    {
        $this->data = $data;
        $this->data['created'] = date("Y-m-d H:i:s");
        //var_dump($this->data);

        $createContactMsg = new \Sts\Models\helper\StsCreate();
        $createContactMsg->exeCreate("sts_contacts_msgs", $this->data);

        if ($createContactMsg->getResult()){
            //Recupera o ultimo id inserido
            //var_dump(($createContactMsg->getResult()));
            $_SESSION['msg'] = "<p class='alert-success'>Mensagem enviada com sucesso!</p>";
            return true;
        } else {
            $_SESSION['msg'] = "<p class='alert-danger'>Erro: Mensagem não enviada com sucesso!</p>";
            return false;
        }
    }
}
