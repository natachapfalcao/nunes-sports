<?php
    require_once('connection.php'); 

    header('Content-Type: application/json');

    $data = json_decode(file_get_contents('php://input'), true);

    if (isset($data['id'])) 
    {
        $productId = $data['id'];

        // Prepara a query para deletar o produto
        $sql = "DELETE FROM produtos WHERE codigo_produto = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $productId);

        if ($stmt->execute()) 
        {
            // Verifica se alguma linha foi afetada
            if ($stmt->affected_rows > 0) 
            {
                echo json_encode(['success' => true]);
            } else 
            {
                echo json_encode(['success' => false, 'message' => 'Produto não encontrado']);
            }
        } else 
        {
            echo json_encode(['success' => false, 'message' => 'Erro ao executar a query: ' . $stmt->error]);
        }

        $stmt->close();
    } else 
    {
        echo json_encode(['success' => false, 'message' => 'ID do produto não fornecido']);
    }

    $conn->close();
?>
