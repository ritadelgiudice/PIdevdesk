# Sistema de Registro de Produtos Hidráulicos - Java 

Este é um programa Java que permite registrar produtos hidráulicos utilizando listas em memória, aplicando conceitos de Programação Orientada a Objetos (POO).

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

## Autores

Giovane Primo Moretti - 24002113
Gabriel Trinca de Marchi - 24002112
Gabriel Henrique dos Reis Diunizio - 24000541
Rafael Melanda Menatto - 23200271
Rita de Cássia Del Giudice Conceição - 24000469
