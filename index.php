<?php
    require_once('connection.php'); 

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
        <link rel="stylesheet" type="text/css" href="style.css">
        </link>
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
                        <th>
                            Nome
                            <div class="dropdown">
                                <button class="dropdown-btn">+</button>
                                <ul class="dropdown-content">
                                    <li onclick="sortTable('nome', 'asc')">A-Z</li>
                                    <li onclick="sortTable('nome', 'desc')">Z-A</li>
                                </ul>
                            </div>
                        </th>
                        <th class="col-preco">
                            Preço           
                            <div class="dropdown">
                                <button class="dropdown-btn">+</button>
                                <ul class="dropdown-content">
                                    <li onclick="sortTable('preco', 'asc')">Menor para Maior</li>
                                    <li onclick="sortTable('preco', 'desc')">Maior para Menor</li>
                                </ul>
                            </div>
                        </th>
                        <th>Descrição</th>
                        <th class="col-acoes">Ações</th>
                    </tr>
                </thead>
                <tbody id="product-table-body">
                    <?php
                    // Consulta SQL para obter todos os produtos
                    $sql = "SELECT codigo_produto, nome_produto, preco_produto, descricao_produto FROM produtos";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) 
                    {
                        // Exibe cada produto como uma linha na tabela
                        while ($row = $result->fetch_assoc()) 
                        {
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
                    <input type="text" id="confirm-input" placeholder="Digite CONFIRMAR aqui..." style="width: 95%; padding: 10px; font-size: 16px;">
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
            }

            function editProduct(id) 
            {
                window.location.href = "editProduct.php?codigo=" + id; 
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
                productIdToDelete = id;
                showModal();  
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
                                window.location.href = "index.php"; 
                            } else 
                            {
                                console.error('Erro:', data.message || 'Erro desconhecido');
                                alert('Erro ao deletar o produto. Tente novamente.');
                            }
                        })
                    .catch(error => 
                    {
                        console.error('Erro na requisição:', error);
                        alert('Erro ao deletar o produto. Informe ao administrador.');
                    });
                } else 
                {
                    alert('Você precisa digitar "CONFIRMAR" corretamente.');
                }
            }
            
            function filterTable() 
            {
                // Captura o valor do input de pesquisa e converte para minúsculo para comparação
                let input = document.getElementById('search-input').value.toLowerCase();
                let table = document.querySelector('table tbody');
                let rows = table.getElementsByTagName('tr');

                for (let i = 0; i < rows.length; i++) 
                {
                    let codigoProduto = rows[i].getElementsByTagName('td')[0];
                    let nomeProduto = rows[i].getElementsByTagName('td')[1];
                    if (codigoProduto || nomeProduto) 
                    {
                        let codigoText = codigoProduto.textContent.toLowerCase();
                        let nomeText = nomeProduto.textContent.toLowerCase();

                        // Verifica se o código ou o nome do produto contém o texto de pesquisa
                        if (codigoText.indexOf(input) > -1 || nomeText.indexOf(input) > -1) 
                        {
                            rows[i].style.display = ''; 
                        } else 
                        {
                            rows[i].style.display = 'none'; 
                        }
                    }
                }
            }

            document.querySelectorAll('.dropdown-btn').forEach(button => 
            {
                button.addEventListener('click', (event) => 
                {
                    const dropdown = event.target.closest('.dropdown');
                    dropdown.classList.toggle('show');
                });
            });

            window.addEventListener('click', (event) => 
            {
                if (!event.target.matches('.dropdown-btn')) 
                {
                    document.querySelectorAll('.dropdown.show').forEach(dropdown => 
                    {
                        dropdown.classList.remove('show');
                    });
                }
            });

            function sortTable(columnName, order) 
            {
                let table = document.querySelector('table tbody');
                let rows = Array.from(table.getElementsByTagName('tr'));

                let columnIndex;
                switch (columnName) 
                {
                    case 'nome':
                        columnIndex = 1; 
                        break;
                    case 'preco':
                        columnIndex = 2; 
                        break;
                    default:
                        return; 
                }

                // Define a função de comparação para ordenação
                console.log(rows)
                rows.sort((a, b) => 
                {
                    let aText = a.getElementsByTagName('td')[columnIndex].textContent.trim();
                    let bText = b.getElementsByTagName('td')[columnIndex].textContent.trim();

                    if (columnName === 'preco') 
                    {
                        aText = parseFloat(aText.replace('R$', '').replace(',', '.'));
                        bText = parseFloat(bText.replace('R$', '').replace(',', '.'));
                    }

                    if (order === 'asc') 
                    {
                        return aText > bText ? 1 : -1;
                    } else if (order === 'desc') 
                    {
                        return aText < bText ? 1 : -1;
                    }
                });

                table.innerHTML = '';

                rows.forEach(row => table.appendChild(row));
            }
        </script>
    </body>
</html>
