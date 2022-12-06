package atividadePratica02;

import java.util.Scanner;
import java.util.Locale;

public class UsaEmprestimo {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		Emprestimo emprestimo = new Emprestimo();
		
		System.out.print("Insira o nome: ");
		emprestimo.nomeUsuario = scan.next();
		
		System.out.print("Insira a idade: ");
		emprestimo.idade = scan.nextInt();
		
		System.out.printf("Insira o valor do empréstimo: ");
		emprestimo.valorEmprestimo = scan.nextDouble();
		
		System.out.printf("Insira o juros mensal: ");
		double percentual = scan.nextDouble();
		emprestimo.percentualJurosMes = percentual/100;
		
		System.out.print("Insira o tempo em meses: ");
		emprestimo.mesesParaPagar = scan.nextInt();
		
		emprestimo.Imprimir();
		double total = emprestimo.calcularEmprestimo();
		System.out.printf("Valor do empréstimo com juros: %.2f\n", total);
		System.out.printf("Tipo de juros: %s\n", emprestimo.tipo);
		
		scan.close();
	}
}