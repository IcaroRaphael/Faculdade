
import java.util.Scanner;
import java.util.Locale;

public class ex005 {
	public static void main(String[] args) {
		/*5.A prefeitura de João Pessoa abriu uma linha de crédito para os
		 funcionários municipais. O valor máximo da prestação não poderá
		 ultrapassar 30% do salário bruto. Fazer um algoritmo que permita
		 entrar com o salário bruto e o valor da prestação e informar se o
		 empréstimo pode ou não ser concedido. (comando if)*/
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Insira o salário: R$");
		double salario = scan.nextDouble();
		
		double max = 0.3 * salario;
		
		System.out.print("Insira a prestação: R$");
		double prestacao = scan.nextDouble();
		
		if(prestacao <= max) {
			System.out.println("Empréstimo aprovado!");
		}else {
			System.out.println("Empréstimo reprovado!");
		}
		
		scan.close();
	}
}