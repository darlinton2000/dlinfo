<?php

namespace Sts\Models\helper;

use PDOException;

//Redirecionar ou parar o processamento quando o usuário não acessa o arquivo index.php
if (!defined('C7E3L8K9E5')){
    header("Location: /");
    //die("Erro: Página não encontrada!");
}

/**
 * Classe responsável por criar registros no BD
 * 
 * @author Darlinton <darlinton2000@gmail.com>
 */
class StsCreate extends StsConn
{
    private string $table;
    private array $data;
    private string|null $result = null;
    private object $insert;
    private string $query;
    private object $conn;

    function getResult(): string|null
    {
        return $this->result;
    }

    public function exeCreate(string $table, array $data): void
    {
        $this->table = $table;
        $this->data = $data;
        $this->exeReplaceValues();
    }

    private function exeReplaceValues(): void
    {
        $coluns = implode(', ', array_keys($this->data));
        $values = ':' . implode(', :', array_keys($this->data));
        $this->query = "INSERT INTO {$this->table} ($coluns) VALUES ($values)";
        $this->exeInstruction();
    }

    private function exeInstruction(): void
    {
        $this->connection();
        try {
            $this->insert->execute($this->data);
            $this->result = $this->conn->lastInsertId();
        } catch (PDOException $err){
            $this->result = null;
        }
    }
    
    private function connection(): void
    {
        $this->conn = $this->connectDb();
        $this->insert = $this->conn->prepare($this->query);
    }
}