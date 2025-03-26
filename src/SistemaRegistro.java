import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

// Classe Produto
class Produto {
    private String nome;
    private String codigo;
    private double preco;
    
    public Produto(String nome, String codigo, double preco) {
        this.nome = nome;
        this.codigo = codigo;
        this.preco = preco;
    }
    
    public String getNome() {
        return nome;
    }
    
    public String getCodigo() {
        return codigo;
    }
    
    public double getPreco() {
        return preco;
    }
    
    @Override
    public String toString() {
        return "Nome: " + nome + ", Código: " + codigo + ", Preço: R$" + preco;
    }
}

// Classe RegistroProdutos para gerenciar os produtos
class RegistroProdutos {
    private List<Produto> produtos;
    
    public RegistroProdutos() {
        this.produtos = new ArrayList<>();
    }
    
    public void adicionarProduto(Produto produto) {
        if (produtoJaExiste(produto.getCodigo())) {
            System.out.println("Produto já registrado: " + produto.getNome());
        } else {
            produtos.add(produto);
            System.out.println("Produto registrado com sucesso: " + produto.getNome());
        }
    }
    
    private boolean produtoJaExiste(String codigo) {
        for (Produto p : produtos) {
            if (p.getCodigo().equals(codigo)) {
                return true;
            }
        }
        return false;
    }
    
    public void listarProdutos() {
        if (produtos.isEmpty()) {
            System.out.println("Nenhum produto registrado.");
        } else {
            System.out.println("Lista de produtos registrados:");
            for (Produto p : produtos) {
                System.out.println(p);
            }
        }
    }
}

// Classe principal com interação do usuário
public class SistemaRegistro {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        RegistroProdutos registro = new RegistroProdutos();
        
        while (true) {
            System.out.println("\n1. Adicionar Produto");
            System.out.println("2. Listar Produtos");
            System.out.println("3. Sair");
            System.out.print("Escolha uma opção: ");
            
            int opcao = scanner.nextInt();
            scanner.nextLine(); // Consumir a quebra de linha
            
            if (opcao == 1) {
                System.out.print("Nome do Produto: ");
                String nome = scanner.nextLine();
                
                System.out.print("Código do Produto: ");
                String codigo = scanner.nextLine();
                
                System.out.print("Preço do Produto: ");
                double preco = scanner.nextDouble();
                
                Produto produto = new Produto(nome, codigo, preco);
                registro.adicionarProduto(produto);
            } else if (opcao == 2) {
                registro.listarProdutos();
            } else if (opcao == 3) {
                System.out.println("Saindo do sistema...");
                break;
            } else {
                System.out.println("Opção inválida!");
            }
        }
        
        scanner.close();
    }
}
