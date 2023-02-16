<?php

namespace Sts\Controllers;

//Redirecionar ou parar o processamento quando o usuário não acessa o arquivo index.php
if (!defined('C7E3L8K9E5')){
    header("Location: /");
    //die("Erro: Página não encontrada!");
}

/**
 * Controller da página Contato
 * http://localhost/DLGestor/app/sts/Controllers/Contato.php
 * @author Darlinton Luis Siqueira <darlinton2000@gmail.com>
 */
class Contato
{
    /** @var array|string|null $dados Recebe os dados que devem ser enviados para VIEW */
    private array|string|null $data = null;

    /** @var array|null $dataForm Recebe os dados que devem ser enviados para VIEW */
    private array|null $dataForm;

    /**
     * Instanciar a classe responsável em carrega a View
     *
     * @return void
     */
    public function index(): void
    {   
        $this->dataForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

        if (!empty($this->dataForm['AddContMsg'])){
            unset($this->dataForm['AddContMsg']);
            $createContactMsg = new \Sts\Models\StsContato();
            if ($createContactMsg->create($this->dataForm)){
                //echo "Cadastrado!<br>";
            } else {
                //echo "Não cadastrado!<br>";
                $this->data['form'] = $this->dataForm;
            }
        }

        $contentContact = new \Sts\Models\StsContentContact();
        $this->data['content'] = $contentContact->index();
        
        $footer = new \Sts\Models\StsFooter();
        $this->data['footer'] = $footer->index();
        
        $loadView = new \Core\ConfigView("sts/Views/contato/contato", $this->data);
        $loadView->loadView();
    }
}