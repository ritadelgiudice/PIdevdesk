import java.util.Scanner;

public class LoginSimples {
    public static void main(String[] args) {
        String usuarioCorreto = "admin";
        String senhaCorreta = "1234";

        Scanner scanner = new Scanner(System.in);

        boolean loginValido = false;

        System.out.println("=== Sistema de Login ===");

        

        while (!loginValido) {
            System.out.print("Usuário: ");
            String usuarioDigitado = scanner.nextLine();

            System.out.print("Senha: ");
            String senhaDigitada = scanner.nextLine();

            if (usuarioDigitado.equals(usuarioCorreto) && senhaDigitada.equals(senhaCorreta)) {
                System.out.println("✅ Login bem-sucedido! Bem-vindo(a), " + usuarioDigitado + "!");
                loginValido = true;
            } else {
                System.out.println("❌ Usuário ou senha incorretos. Tente novamente.\n");
            }
        }

        scanner.close();
    }
}
