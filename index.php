<?php
    require_once('connection.php'); // Conexão com o banco de dados

    // Consulta SQL para obter todos os produtos
    $sql = "SELECT codigo_produto, nome_produto, preco_produto, descricao_produto FROM produtos";
    $result = $conn->query($sql);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nunes Sports</title>
    <style>
        body 
        {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header 
        {
            padding: 20px;
            background-color: #333;
            color: white;
            text-align: center;
        }

        header h1 
        {
            margin: 0;
            font-size: 36px;
        }

        header h2 
        {
            margin: 5px 0;
            font-size: 24px;
            font-weight: normal;
        }

        .container 
        {
            width: 85%;
            margin: 20px auto;
        }

        .search-box 
        {
            margin-bottom: 20px;
        }

        .search-box input[type="text"] 
        {
            width: calc(100% - 22px);
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .header-actions 
        {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .product-list-title 
        {
            font-size: 28px;
            color: #333;
            margin: 0;
        }

        .actions .btn-create 
        {
            padding: 10px 30px;
            border: none;
            background-color: #28a745;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .actions .btn-create:hover 
        {
            background-color: #218838;
        }

        table 
        {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        table, th, td 
        {
            border: 1px solid #ddd;
        }

        th, td 
        {
            padding: 12px;
            text-align: left;
        }

        th 
        {
            background-color: #f8f9fa;
        }

        .btn 
        {
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        .btn-edit 
        {
            background-color: #007bff;
            color: white;
        }

        .btn-edit:hover 
        {
            background-color: #0056b3;
        }

        .btn-delete 
        {
            background-color: #dc3545;
            color: white;
        }

        .btn-delete:hover 
        {
            background-color: #c82333;
        }

        /* Modal Styles */
        .modal 
        {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }

        .modal-content 
        {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            border-radius: 8px;
        }

        .close 
        {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus 
        {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-header 
        {
            font-size: 20px;
            margin-bottom: 15px;
        }

        .modal-body 
        {
            margin-bottom: 15px;
        }

        .modal-footer 
        {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        .modal-footer button 
        {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .modal-footer .btn-confirm 
        {
            background-color: #28a745;
            color: white;
        }

        .modal-footer .btn-confirm:hover 
        {
            background-color: #218838;
        }

        .modal-footer .btn-cancel 
        {
            background-color: #dc3545;
            color: white;
        }

        .modal-footer .btn-cancel:hover 
        {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<header>
    <h1>Nunes Sports</h1>
    <h2>Movimente-se com Paixão</h2>
</header>

<div class="container">
    <div class="search-box">
        <input type="text" id="search-input" onkeyup="filterTable()" placeholder="Pesquise por nome ou código do produto...">
    </div>

    <div class="header-actions">
        <h3 class="product-list-title">Lista de Produtos</h3>
        <button class="btn btn-create" onclick="createProduct()">Criar Novo Produto</button>
    </div>

    <table>
        <thead>
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Preço</th>
                <th>Descrição</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Consulta SQL para obter todos os produtos
            $sql = "SELECT codigo_produto, nome_produto, preco_produto, descricao_produto FROM produtos";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) 
            {
                // Exibe cada produto como uma linha na tabela
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . htmlspecialchars($row['codigo_produto']) . "</td>";
                    echo "<td>" . htmlspecialchars($row['nome_produto']) . "</td>";
                    echo "<td>R$ " . number_format($row['preco_produto'], 2, ',', '.') . "</td>";
                    echo "<td>" . htmlspecialchars($row['descricao_produto']) . "</td>";
                    echo "<td>
                            <button class='btn btn-edit' onclick='editProduct(" . htmlspecialchars($row['codigo_produto']) . ")'>Editar</button>
                            <button class='btn btn-delete' onclick='openDeleteModal(" . htmlspecialchars($row['codigo_produto']) . ")'>Deletar</button>
                          </td>";
                    echo "</tr>";
                }
            } else 
            {
                echo "<tr><td colspan='5'>Nenhum produto encontrado.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>

<!-- Modal -->
<div id="deleteModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeDeleteModal()">&times;</span>
        <div class="modal-header">
            Confirmar Deleção
        </div>
        <div class="modal-body">
            <p>Para deletar o produto, por favor, digite <strong>CONFIRMAR</strong> no campo abaixo e clique em "OK".</p>
            <input type="text" id="confirm-input" placeholder="Digite CONFIRMAR aqui..." style="width: 100%; padding: 10px; font-size: 16px;">
        </div>
        <div class="modal-footer">
            <button class="btn btn-confirm" onclick="confirmDelete()">OK</button>
            <button class="btn btn-cancel" onclick="closeDeleteModal()">Cancelar</button>
        </div>
    </div>
</div>


<script>
    let productIdToDelete = null;

    function createProduct() 
    {
        window.location.href = "newProduct.php"; 
        // Redireciona para a página de criação de produto
    }

    function editProduct(id) 
    {
        window.location.href = "editProduct.php?codigo=" + id; // Passa o código do produto na URL
    }

    function openDeleteModal(id) 
    {
        productIdToDelete = id;
        document.getElementById('deleteModal').style.display = 'block';
    }

    function closeDeleteModal() 
    {
        document.getElementById('deleteModal').style.display = 'none';
        document.getElementById('confirm-input').value = '';
    }

    function deleteProduct(id) 
    {
    productIdToDelete = id;  // Salva o ID do produto para usar no modal
    console.log('ID do produto a ser deletado:', productIdToDelete);
    showModal();  // Exibe o modal de confirmação
    }

    function confirmDelete() 
    {
    const userInput = document.getElementById('confirm-input').value;
    if (userInput.toLowerCase() === 'confirmar') 
    {
        fetch('deleteProduct.php', 
        {
            method: 'POST',
            headers: 
            {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ id: productIdToDelete })
        })
        .then(response => response.json())
        .then(data => 
        {
            if (data.success) 
            {
                alert('Produto deletado com sucesso!');
                window.location.href = "index.php"; // Recarrega a página após a deleção
            } else 
            {
                console.error('Erro:', data.message || 'Erro desconhecido');
                alert('Erro ao deletar o produto. Tente novamente.');
            }
        })
        .catch(error => 
        {
            console.error('Erro na requisição:', error);
            alert('Erro ao deletar o produto. Tente novamente.');
        });
    } else {
        alert('Você precisa digitar "CONFIRMAR" corretamente.');
    }
}
</script>
</body>
</html>
