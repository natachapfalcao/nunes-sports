<?php
    require_once('connection.php');

    if ($_SERVER['REQUEST_METHOD'] === 'POST') 
    {
        $productCode = $_POST['product-code'];
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
        <link rel="stylesheet" type="text/css" href="productStyle.css">
        </link>
    </head>
    <body>
        <div class="container">
            <h1>Editar Produto</h1>
            <h2>Atualize os dados do produto preenchendo os campos abaixo:</h2>

            <form method="POST" action="editProduct.php?id=<?php echo htmlspecialchars($productCode); ?>
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
