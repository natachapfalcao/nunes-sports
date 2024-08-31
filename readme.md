# Nunes Sports

## Descrição
O projeto Nunes Sports é uma aplicação web desenvolvida para gerenciar produtos esportivos, permitindo operações de CRUD (Create, Read, Update, Delete) para itens como tênis, roupas, e acessórios esportivos. Este projeto simula a gestão de inventário para uma loja fictícia de artigos esportivos.

## Tecnologias Utilizadas
- **Frontend**: HTML, CSS, JavaScript
- **Backend**: PHP, XAMPP
- **Banco de Dados**: MySQL
- **Ferramentas de Desenvolvimento**: Git, Visual Studio Code

## Funcionalidades
- **Exibição de Produtos**: Visualização de todos os produtos cadastrados em uma tabela dinâmica.
- **Adicionar Produto**: Possibilidade de adicionar novos produtos ao inventário.
- **Editar Produto**: Atualização das informações de produtos existentes.
- **Deletar Produto**: Remoção de produtos do banco de dados.
- **Persistência de Dados**: Todas as operações CRUD são refletidas diretamente no banco de dados MySQL.

## Instalação

### Pré-requisitos
Certifique-se de ter o seguinte software instalado:
- [XAMPP](https://nodejs.org/)
- [MySQL](https://www.mysql.com/) - TIRAR
- [Git](https://git-scm.com/)
- Um editor de código, como [Visual Studio Code](https://code.visualstudio.com/)
- Inportar banco de dados do arquivo "" no MySQL

### Passos para Configuração do Ambiente Local

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/nunes-sports.git
    cd nunes-sports
    ```

2. Instale as dependências do Node.js:
    ```bash
    npm install
    ```

3. Configure o banco de dados MySQL:
   - Crie um banco de dados no MySQL com o nome `nunes_sports_db`.
   - Crie uma tabela chamada `produtos` com a seguinte estrutura:
     ```sql
     CREATE TABLE produtos (
         id INT AUTO_INCREMENT PRIMARY KEY,
         code VARCHAR(255) NOT NULL UNIQUE,
         name VARCHAR(255) NOT NULL,
         price DECIMAL(10, 2) NOT NULL,
         description TEXT NOT NULL
         
     );
     
     ```

4. Atualize as credenciais do banco de dados no arquivo `server.js`:
    ```javascript
    const db = mysql.createConnection({
        host: 'localhost',
        user: 'seu_usuario_mysql',  // Substitua por seu usuário do MySQL
        password: 'sua_senha_mysql',  // Substitua por sua senha do MySQL
        database: 'nunes_sports_db'
    });
    ```

5. Inicie o servidor Node.js:
    ```bash
    node server.js
    ```

6. Abra o arquivo `index.html` no seu navegador ou utilize uma extensão de servidor local no VS Code para visualizar a página.

## Uso
- **Adicionar Produto**: Preencha o formulário e clique em "Adicionar Produto".
- **Editar Produto**: Clique no botão "Editar" ao lado de um produto e atualize as informações.
- **Deletar Produto**: Clique no botão "Deletar" para remover um produto.

## Estrutura do Projeto
- `index.html`: Página principal com a interface de usuário.
- `style.css`: Arquivo de estilos CSS.
- `script.js`: Script JavaScript para interações com o DOM e chamadas à API.
- `server.js`: Servidor Node.js com as rotas para operações CRUD.
- `package.json`: Arquivo de configuração do Node.js e dependências do projeto.

## Contribuindo
Se você deseja contribuir com este projeto, siga os passos abaixo:
1. Faça um fork deste repositório.
2. Crie uma branch para sua feature (`git checkout -b feature/nome-da-feature`).
3. Commit suas mudanças (`git commit -m 'Adicionei uma nova feature'`).
4. Faça um push para a branch (`git push origin feature/nome-da-feature`).
5. Abra um Pull Request.

## Licença
Este projeto está licenciado sob a [MIT License](https://opensource.org/licenses/MIT).

## Autor
**Natacha Pereira Falcão** - [seu-email@dominio.com](mailto:seu-email@dominio.com)

---

*Este projeto foi desenvolvido como parte de uma simulação para o gerenciamento de produtos esportivos. Toda a lógica e implementação são fictícias e têm fins educativos.*
