# Nunes Sports

## Descrição
O projeto Nunes Sports é uma aplicação web desenvolvida para gerenciar produtos esportivos, permitindo operações de CRUD (Create, Read, Update, Delete) para itens como tênis, roupas, e acessórios esportivos. Este projeto simula a gestão de inventário para uma loja fictícia de artigos esportivos. Sendo que a aplicação web é conectada a um banco de dados no MySQL e as ações refletem no mesmo.

## Tecnologias Utilizadas
- **Frontend**: HTML, CSS, JavaScript.
- **Backend**: PHP, XAMPP.
- **Banco de Dados**: MySQL.
- **Ferramentas de Desenvolvimento**: Git, Visual Studio Code.

## Funcionalidades
- **Exibição de Produtos**: Visualização de todos os produtos cadastrados em uma tabela dinâmica. Com possibilidade de ordenar por nome e preço (crescente e decrescente). 
- **Pesquisa de Produtos**: Possibilidade de pesquisar produtos pelo código do produto ou nome do produto.
- **Adicionar Produto**: Possibilidade de adicionar novos produtos ao inventário.
- **Editar Produto**: Atualização das informações de produtos existentes.
- **Deletar Produto**: Remoção de produtos do banco de dados.
- **Persistência de Dados**: Todas as operações CRUD são refletidas diretamente no banco de dados MySQL.

## Instalação

### Pré-requisitos
Certifique-se de ter o seguinte software instalado:
- [XAMPP](https://www.apachefriends.org/pt_br/download.html).
- [MySQL] Incluso no XAMPP.
- [Git](https://git-scm.com/).
- Um editor de código, como [Visual Studio Code](https://code.visualstudio.com/).
- Inportar banco de dados do arquivo "nunes_sports" no MySQL.

### Passos para Configuração do Ambiente Local

1. Clone o repositório:
    ```bash
    git clone https://github.com/natachapfalcao/nunes-sports
    cd nunes-sports
    ```

2. Instale e configure o XAMPP:
    - Instale o XAMPP.
    - No XAMPP é necessário dar start nos modulos "Apache" e "MySQL" (As vezes acontece de dar problema na postas, pois o msn usa a mesma porta do MySQL - Verifique se há outro servidor MySQL em execução. Isso pode ser feito utilizando o Gerenciador de Tarefas do Windows: Abra o Gerenciador de Tarefas (Ctrl + Shift + Esc). Vá até a aba Processos. Procure por um processo chamado mysqld.exe ou mysql.exe. Se encontrar, encerre o processo clicando com o botão direito e escolhendo Finalizar tarefa).
    - Adicione a parta do projeto na pasta htdocs do xampp que deve estár no seu disco local (caminho normalmente é Disco Local (C:)> xampp > htdocs).
    <!-- ```bash
    npm install
    ``` -->

3. Importe o banco de dados no seu MySQL:
    - Dentro do XAMPP clique em "admin" do MySQL para ser direcionado para a página phpMyAdmin (http://localhost/phpmyadmin/).
    - Na página phpMyAdmin clique em importar para importar o banco de dado.
    - Escolha o arquivo "" referente ao banco de dado disponibilizado e clique em importar (ao final dessa operação o banco deve aparece nos bancos existente do lado esquerdo da página).

4. Atualize as credenciais do banco de dados no arquivo `connection.php`:
    ```php
    <?php
        $dbHost = 'Localhost';
        $dbUsername = 'root'; // Substitua por seu usuário do MySQL
        $dbPassword = ''; // Substitua por sua senha do MySQL
        $dbName = 'nunes_sports';

        $conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
    ?>
    ```

5. Inicie o servidor Node.js:
    ```bash
    node server.js
    ```

6. Abra o arquivo `index.php` no seu navegador lembrando de obedeçer a url http://localhost/nunes_sports/index.php (http://localhost/pasta/pagina.php) ou utilize uma extensão de servidor local no VS Code para visualizar a página.

## Uso
- **Pesquisar produtos**: É possivel pesquisar produtos pelo código ou nome do produto.
- **Ordendar produto**: É possível ordenar os produtos por nome de A-Z ou Z-A clicando no "+" ao lado de "nome" no cabesário da tabela, também é possível ordenar os produtos por preço do maior para o menos e do menos para o maior no "+" ao lado de "preço" no cabesário da tabela.
- **Criar Novo Produto**: Clique no botão "Criar Novo Produto", preencha o formulário e clique em "Salva" se quiser criar apenas esse produto ou "Salvar e Criar Novo" se quiser salvar e adicionar outro produto, por fim é possível cancelar a operação clicando em "Cancelar".
- **Editar Produto**: Clique no botão "Editar" ao lado de um produto e atualize as informações ou cancele a operação clicando em "Cancelar". Vale ressaltar o código do produto não pode ser editado. 
- **Deletar Produto**: Clique no botão "Deletar" para remover um produto ou cancele a operação clicando em "Cancelar".

## Estrutura do Projeto
- `connection.php`: Página responsável pela conexão com o banco de dado MySQL.
- `index.php`: Página principal com a interface inicial com o usuário.
- `newProduct.php`: Página segundária com a interface de usuário, direcionada quando o usuário clica em "Criar Novo Produto" no pagina index.php.
- `editProduct.php`: Página segundária com a interface de usuário, direcionada quando o usuário clica em "Editar" no pagina index.php.
- `deleteProduct.php`: Função de deletar no banco de dados .
- `style.css`: Arquivo de estilos CSS.
- `productStyle.css`: Arquivo de estilos CSS da páginas newProduct.php e editProduct.php.

## Melhorias futuras
- Página de login para o sistema
- Deletar vários produtos de uma vez

## Contribuindo
Se você deseja contribuir com este projeto, siga os passos abaixo:
1. Faça um fork deste repositório.
2. Crie uma branch para sua feature (`git checkout -b feature/nome-da-feature`).
3. Commit suas mudanças (`git commit -m 'Adicionei uma nova feature'`).
4. Faça um push para a branch (`git push origin feature/nome-da-feature`).
5. Abra um Pull Request.

## Licença
<!-- Este projeto está licenciado sob a [MIT License](https://opensource.org/licenses/MIT). -->

## Autor
**Natacha Pereira Falcão** - [natachapfalcao@gmaim.com](mailto:natachapfalcao@gmail.com)

---

*Este projeto foi desenvolvido como parte de uma simulação para o gerenciamento de produtos esportivos. Toda a lógica e implementação são fictícias e têm fins educativos.*
