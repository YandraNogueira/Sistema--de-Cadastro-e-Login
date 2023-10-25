<?php

class Crud
{
    private $connect;

    private $nome;
    private $email;
    private $senha;


    function __construct($conect)
    {
        $this->connect = $conect;
    }


    public function decodeUser($userEmpresa)
    {
        $sql = $this->connect->prepare("SELECT * FROM log WHERE usuario=?");

        $sql->bindValue(1,$userEmpresa);

        $sql->execute();

        $result = $sql->fetchAll(PDO::FETCH_ASSOC);

        return $result;

    }

    public function setDados($nome,$email,$senha){
        $this->nome = $nome;
        $this->email = $email;
        $this->senha = $senha;
    }

    public function insertDados(){
        $sql = $this->connect->prepare("INSERT INTO clientes(nome,email,senha,data_now)VALUES(?,?,?,now())");
        
        $sql->bindParam(1,$this->nome);
        $sql->bindParam(2,$this->email);
        $sql->bindParam(3,$this->senha);

        if ($sql->execute()) {
            echo "Ok";
        }else{
            echo "Erro!";
        }
    }

    
}

?>