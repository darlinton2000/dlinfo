<?php

//Redirecionar ou parar o processamento quando o usuário não acessa o arquivo index.php
if (!defined('C7E3L8K9E5')) {
    header("Location: /");
    //die("Erro: Página não encontrada!");
}

if (isset($this->data['form'])) {
    $valueForm = $this->data['form'];
    extract($valueForm);
}

// Acessa o IF quando encontrou algum registro no banco de dados
if (!empty($this->data['content'][0])) {

    //Ler o registro da página home retornado do banco de dados
    //A função extract é utilizado para extrair o array e imprimir através do nome da chave
    extract($this->data['content'][0]);
} else {
    echo "<p style='color: #f00;'>Erro: Nenhum informação de contato encontrado!</p>";
}

?>
<section class="contact">
    <div class="max-width">
        <h2 class="title"><?php if (isset($title_contact)){ echo $title_contact; } ?></h2>
        <div class="contact-content">
            <div class="column left">
                <p><?php if (isset($desc_contact)){ echo $desc_contact; } ?></p>
                <div class="icons">
                    <div class="row">
                        <i class="<?php if (isset($icon_company)){ echo $icon_company; } ?>"></i>
                        <div class="info">
                            <div class="head"><?php if (isset($title_company)){ echo $title_company; } ?></div>
                            <div class="sub-title"><?php if (isset($desc_company)){ echo $desc_company; } ?></div>
                        </div>
                    </div>

                    <div class="row">
                        <i class="<?php if (isset($icon_address)){ echo $icon_address; } ?>"></i>
                        <div class="info">
                            <div class="head"><?php if (isset($title_address)){ echo $title_address; } ?></div>
                            <div class="sub-title"><?php if (isset($desc_address)){ echo $desc_address; } ?></div>
                        </div>
                    </div>

                    <div class="row">
                        <i class="<?php if (isset($icon_email)){ echo $icon_email; } ?>"></i>
                        <div class="info">
                            <div class="head"><?php if (isset($title_email)){ echo $title_email; } ?></div>
                            <div class="sub-title"><?php if (isset($desc_email)){ echo $desc_email; } ?></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="column right">
                <div class="text"><?php if (isset($title_form)){ echo $title_form; } ?></div>
                <form method="POST" action="">
                    <?php

                    if (isset($_SESSION['msg'])) {
                        echo $_SESSION['msg'];
                        unset($_SESSION['msg']);
                    }

                    ?>
                    <div class="fields">
                        <div class="field name">
                            <input name="name" type="text" id="name" placeholder="Nome Completo" required value="<?php if (isset($name)) {
                                                                                                                        echo $name;
                                                                                                                    } ?>"><br><br>
                        </div>
                        <div class="field email">
                            <input name="email" type="email" id="email" placeholder="Seu melhor e-mail" required value="<?php if (isset($email)) {
                                                                                                                            echo $email;
                                                                                                                        } ?>"><br><br>
                        </div>
                    </div>

                    <div class="field">
                        <input name="subject" type="text" id="subject" placeholder="Assunto da mensagem" required value="<?php if (isset($subject)) {
                                                                                                                                echo $subject;
                                                                                                                            } ?>"><br><br>
                    </div>

                    <div class="field textarea">
                        <textarea name="content" rows="6" cols="50" placeholder="Conteúdo da mensagem" required><?php if (isset($content)) {
                                                                                                                    echo $content;
                                                                                                                } ?></textarea><br><br>
                    </div>

                    <div class="button-area">
                        <button name="AddContMsg" type="submit" value="Enviar">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>