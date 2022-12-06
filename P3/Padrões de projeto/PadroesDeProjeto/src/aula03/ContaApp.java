package aula03;

public class ContaApp {

	public static void main(String[] args) {
		Conta conta1 = new Conta();
		conta1.saldo = 1000;
		conta1.nome = "Icaro";
		conta1.numero = 1;
		System.out.println("Saldo da conta 1: " + conta1.saldo);
		conta1.sacar(100);
		System.out.println("Saldo da conta 1: " + conta1.saldo);

		Conta conta2 = new Conta(2, "Conta 2", 10000, 1000);
		System.out.println("Saldo da conta 2: " + conta2.saldo);

	}
}