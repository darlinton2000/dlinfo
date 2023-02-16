<?php

namespace Sts\Controllers;

//Redirecionar ou parar o processamento quando o usuário não acessa o arquivo index.php
if (!defined('C7E3L8K9E5')){
    header("Location: /");
    //die("Erro: Página não encontrada!");
}

/**
 * Controller da página SobreEmpresa
 * 
 * @author Darlinton Luis Siqueira <darlinton2000@gmail.com>
 */
class SobreEmpresa
{
    /** @var array|string|null $dados Recebe os dados que devem ser enviados para VIEW */
    private array|string|null $data;

    /**
     * Instanciar a classe responsável em carrega a View
     *
     * @return void
     */
    public function index()
    {   
        $aboutCompany = new \Sts\Models\StsSobreEmpresa();
        $this->data['about-company'] = $aboutCompany->index();

        $footer = new \Sts\Models\StsFooter();
        $this->data['footer'] = $footer->index();

        $loadView = new \Core\ConfigView("sts/Views/sobreEmpresa/sobreEmpresa", $this->data);
        $loadView->loadView();
    }
}