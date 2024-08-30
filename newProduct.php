<?php
require_once('connection.php'); // Inclui a conexão com o banco de dados

// Verifica se o formulário foi enviado
if (isset($_POST['submit']) || isset($_POST['save-create-new'])) 
{
    // Captura os dados do formulário
    $productCode = $_POST['product-code'];
    $productName = $_POST['product-name'];
    $productPrice = $_POST['product-price'];
    $productDescription = $_POST['product-description'];

    // Verifica se os campos obrigatórios estão preenchidos
    if (!empty($productCode) && !empty($productName) && !empty($productPrice)) 
    {
        // Cria a query SQL de inserção com os nomes de colunas corretos
        $sql = "INSERT INTO produtos (codigo_produto, nome_produto, preco_produto, descricao_produto) VALUES (?, ?, ?, ?)";

        // Prepara a query
        $stmt = $conn->prepare($sql);

        // Vincula os parâmetros
        $stmt->bind_param("ssds", $productCode, $productName, $productPrice, $productDescription);

        // Executa a query
        if ($stmt->execute()) 
        {
            // Redireciona para index.php se o botão 'Salvar' foi clicado
            echo 
            "<script>
                alert ('Produto adicionado com sucesso!');
                window.location.href = 'index.php'; 
            </script>";

            // Redireciona para newProduct.php se o botão 'Salvar e Criar Novo' foi clicado
            if (isset($_POST['save-create-new'])) 
            {
                echo "<script>alert('Produto salvo! Preparando para adicionar um novo produto.'); window.location.href = 'newProduct.php';</script>";
            }
        } else 
        {
            echo "Erro ao adicionar produto: " . $stmt->error;
        }

        // Fecha a declaração
        $stmt->close();
    }

}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo Produto - Nunes Sports</title>
    <style>
        body 
        {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container 
        {
            width: 80%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 
        {
            font-size: 36px;
            color: #333;
            margin-bottom: 10px;
        }

        h2 
        {
            font-size: 24px;
            color: #555;
            margin-bottom: 20px;
        }

        form label 
        {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        form input[type="text"], form input[type="number"], form textarea 
        {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
            margin-bottom: 10px;
        }

        form input[type="text"]:required, form input[type="number"]:required, form textarea:required 
        {
            border-color: #ff0000;
        }

        .help-text 
        {
            font-size: 14px;
            color: #777;
            margin-top: -8px;
            margin-bottom: 10px;
        }

        .actions 
        {
            margin-top: 20px;
            display: flex;
            justify-content: flex-start;
            gap: 10px;
        }

        .actions button 
        {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn-save 
        {
            background-color: #28a745;
            color: white;
        }

        .btn-save:hover 
        {
            background-color: #218838;
        }

        .btn-save-create 
        {
            background-color: #007bff;
            color: white;
        }

        .btn-save-create:hover 
        {
            background-color: #0056b3;
        }

        .btn-cancel 
        {
            background-color: #dc3545;
            color: white;
        }

        .btn-cancel:hover 
        {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Novo Produto</h1>
    <h2>Adicione um novo produto preenchendo os seguintes campos:</h2>

    <form action="newProduct.php" method="POST">
        <label for="product-code">Código do Produto <span style="color: red;">*</span></label>
        <input type="text" id="product-code" name="product-code" required>
        <div class="help-text">O Código precisa ser único, não pode existir nenhum produto com o mesmo código.</div>

        <label for="product-name">Nome do Produto <span style="color: red;">*</span></label>
        <input type="text" id="product-name" name="product-name" required>

        <label for="product-price">Preço do Produto <span style="color: red;">*</span></label>
        <input type="number" id="product-price" name="product-price" required step="0.01">

        <label for="product-description">Descrição do Produto</label>
        <textarea id="product-description" name="product-description" rows="4"></textarea>

        <div class="actions">
            <button type="submit" name="submit" class="btn-save">Salvar</button>
            <button type="submit" name="save-create-new" class="btn-save-create">Salvar e Criar Novo</button>
            <button type="button" class="btn-cancel" onclick="cancel()">Cancelar</button>
        </div>
    </form>
</div>

<script>
    function saveAndCreateNew() 
    {
        alert("Produto salvo! Preparando para adicionar um novo produto.");
        // Lógica para salvar o produto e recarregar a página para adicionar um novo
    }

    function cancel() 
    {
        window.location.href = "index.php"; // Redireciona para a página 'index.php'
    }
</script>

</body>
</html>
