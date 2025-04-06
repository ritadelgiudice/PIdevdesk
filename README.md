# Sistema de Registro de Produtos Hidráulicos - Java 

## Descrição e Desenvolvedores
Este é um projeto integrado desenvolvido para o módulo de desktop dos cursos de Análise e Desenvolvimento de sistemas e Gestão de Tecnologia da informação para a UNIFEOB.
Feito por:
Giovane Primo Moretti - 24002113
Gabriel Trinca de Marchi - 24002112
Gabriel Henrique dos Reis Diunizio - 24000541
Rafael Melanda Menatto - 23200271
Rita de Cássia Del Giudice Conceição - 24000469

## Tecnologias Utilizadas
- Java
- Estruturas de Dados (Listas)
- Visual Studio Code

## Configuração do Ambiente no Visual Studio Code
1. **Instale o Java**: Certifique-se de ter o Java instalado na máquina.
   - Baixe e instale o JDK (Java Development Kit) em https://www.oracle.com/java/technologies/javase-downloads.html.

2. **Instale o VS Code** (caso ainda não tenha):
   - Baixe em https://code.visualstudio.com/.

3. **Adicione a Extensão Java para VS Code**:
   - No VS Code, vá até a aba "Extensões" (`Ctrl + Shift + X`) e procure por `Extension Pack for Java`.
   - Instale a extensão para suporte ao desenvolvimento Java.

4. **Configure o Ambiente**:
   - Abra o VS Code e crie uma nova pasta para o projeto.
   - Dentro da pasta, crie um arquivo `SistemaRegistro.java` e cole o código-fonte do programa.

5. **Compilar e Executar o Programa**:
   - No terminal do VS Code, navegue até o diretório do arquivo:
     ```sh
     cd caminho/para/o/projeto
     ```
   - Compile o programa:
     ```sh
     javac SistemaRegistro.java
     ```
   - Execute o programa:
     ```sh
     java SistemaRegistro
     ```

## Conceitos de POO Aplicados
- **Abstração**: Classe `Produto` representa um produto hidráulico.
- **Encapsulamento**: Atributos privados com métodos de acesso (`getNome()`, `getCodigo()`, `getPreco()`).
- **Herança**: O programa pode ser facilmente estendido para outros tipos de produtos.
- **Polimorfismo**: Métodos reutilizáveis para manipular produtos.

## Funcionalidades
- **Adicionar Produto**: O usuário pode inserir um novo produto informando nome, código e preço.
- **Evitar Duplicação**: Caso um código já exista, o sistema exibe uma mensagem de aviso.
- **Armazenamento Temporário**: Os produtos são armazenados em memória (ArrayList), sem persistência em banco de dados.

## Exemplo de Uso
```
Produto registrado com sucesso: Tubo PVC
Produto registrado com sucesso: Conector PVC
Produto já registrado: Tubo PVC
```
# Projeto Banco de Dados - Produto e Detalhe do Produto

Este projeto contém um script SQL para criação e manipulação de um banco de dados com duas tabelas principais: `Produto` e `Detalhe_Produto`. O objetivo é representar uma relação entre produtos e seus respectivos detalhes, utilizando boas práticas de modelagem relacional.

## Estrutura do Banco de Dados

### Tabela: Produto

Armazena informações básicas sobre produtos.

| Coluna      | Tipo         | Descrição                       |
|-------------|--------------|---------------------------------|
| idProduto   | INT          | Identificador único do produto (PK) |
| nome        | VARCHAR(100) | Nome do produto                 |
| preco       | DECIMAL(10,2)| Preço do produto                |
| validade    | DATE         | Data de validade do produto     |

### Tabela: Detalhe_Produto

Armazena detalhes adicionais sobre os produtos.

| Coluna        | Tipo         | Descrição                            |
|---------------|--------------|--------------------------------------|
| idDetalhe     | INT          | Identificador único do detalhe (PK) |
| idProduto     | INT          | Chave estrangeira para Produto      |
| descricao     | VARCHAR(255) | Descrição adicional do produto      |
| fornecedor    | VARCHAR(100) | Nome do fornecedor                  |

### Relacionamento

A tabela `Detalhe_Produto` possui uma chave estrangeira (`idProduto`) que se relaciona com a tabela `Produto`, representando um relacionamento de **1 para muitos** (um produto pode ter vários detalhes).

## Inserções de Dados

O script também inclui exemplos de inserção de dados (`INSERT INTO`) para ambas as tabelas, facilitando testes e visualização da estrutura.

## Como usar

1. Abra seu gerenciador MySQL (como o MySQL Workbench).
2. Crie um novo banco de dados (opcional).
3. Execute o conteúdo do arquivo `Codigo.sql`.
4. As tabelas serão criadas e populadas automaticamente com dados de exemplo.

## Requisitos

- MySQL 5.7 ou superior
- Um ambiente para execução de comandos SQL (como Workbench, DBeaver, phpMyAdmin, etc.)

