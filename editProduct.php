<?php
    require_once('connection.php');

    // Se o formulário for enviado
    if ($_SERVER['REQUEST_METHOD'] === 'POST') 
    {
        $productCode = $_POST['product-code'];  // Pega o código do produto do campo do formulário
        $productName = $_POST['product-name'];
        $productPrice = $_POST['product-price'];
        $productDescription = $_POST['product-description'];

        // Atualiza o produto no banco de dados
        $sql = "UPDATE produtos SET nome_produto = ?, preco_produto = ?, descricao_produto = ? WHERE codigo_produto = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sdss", $productName, $productPrice, $productDescription, $productCode);

        if ($stmt->execute()) 
        {
            echo "<script>alert('Produto atualizado com sucesso!'); window.location.href = 'index.php';</script>";
        } else 
        {
            echo "<script>alert('Erro ao atualizar o produto. Tente novamente.');</script>";
        }

        $stmt->close();
        $conn->close();
        exit;
    }

    // Verifica se o código do produto foi passado na URL
    if (isset($_GET['codigo'])) 
    {
        $productCode = $_GET['codigo'];

        // Consulta SQL para obter os dados do produto
        $sql = "SELECT codigo_produto, nome_produto, preco_produto, descricao_produto FROM produtos WHERE codigo_produto = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $productCode);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) 
        {
            $product = $result->fetch_assoc();
        } else 
        {
            echo "<script>alert('Produto não encontrado.'); window.location.href = 'index.php';</script>";
            exit;
        }

        $stmt->close();
    } else 
    {
        echo "<script>alert('Código do produto não fornecido.'); window.location.href = 'index.php';</script>";
        exit;
    }
?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Produto - Nunes Sports</title>
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
    <h1>Editar Produto</h1>
    <h2>Atualize os dados do produto preenchendo os campos abaixo:</h2>

    <form method="POST" action="editProduct.php?id=<?php echo htmlspecialchars($productCode); ?>">
        <label for="product-code">Código do Produto <span style="color: red;">*</span></label>
        <input type="text" id="product-code" name="product-code" required readonly value="<?php echo htmlspecialchars($product['codigo_produto']); ?>">
        <div class="help-text">O Código precisa ser único, não pode existir nenhum produto com o mesmo código.</div>

        <label for="product-name">Nome do Produto <span style="color: red;">*</span></label>
        <input type="text" id="product-name" name="product-name" required value="<?php echo htmlspecialchars($product['nome_produto']); ?>">

        <label for="product-price">Preço do Produto <span style="color: red;">*</span></label>
        <input type="number" id="product-price" name="product-price" required step="0.01" value="<?php echo htmlspecialchars($product['preco_produto']); ?>">

        <label for="product-description">Descrição do Produto</label>
        <textarea id="product-description" name="product-description" rows="4"><?php echo htmlspecialchars($product['descricao_produto']); ?></textarea>


        <div class="actions">
            <button type="submit" class="btn-save">Salvar Edição</button>
            <button type="button" class="btn-cancel" onclick="cancel()">Cancelar</button>
        </div>
    </form>
</div>

<script>
    function cancel() 
    {
        window.location.href = "index.php"; // Redireciona para a página 'index.php'
    }
</script>

</body>
</html>
