<?php
    require_once('connection.php'); 

    if (isset($_POST['submit']) || isset($_POST['save-create-new'])) 
    {
        $productCode = $_POST['product-code'];
        $productName = $_POST['product-name'];
        $productPrice = $_POST['product-price'];
        $productDescription = $_POST['product-description'];

        if (!empty($productCode) && !empty($productName) && !empty($productPrice)) 
        {
            // Cria a query SQL de inserção com os nomes de colunas corretos
            $sql = "INSERT INTO produtos (codigo_produto, nome_produto, preco_produto, descricao_produto) VALUES (?, ?, ?, ?)";

            $stmt = $conn->prepare($sql);

            $stmt->bind_param("ssds", $productCode, $productName, $productPrice, $productDescription);

            if ($stmt->execute()) 
            {
                if (isset($_POST['save-create-new'])) 
                {
                    echo "<script>
                            alert('Produto salvo! Preparando para adicionar um novo produto.'); 
                            window.location.href = 'newProduct.php';
                          </script>";
                } else
                {
                    echo 
                    "<script>
                        alert ('Produto adicionado com sucesso!');
                        window.location.href = 'index.php'; 
                    </script>";
                }   
            } else 
            {
                echo "Erro ao adicionar produto: " . $stmt->error;
            }

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
        <link rel="stylesheet" type="text/css" href="productStyle.css">
        </link>
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
            function cancel() 
            {
                window.location.href = "index.php";
            }
        </script>

    </body>
</html>
