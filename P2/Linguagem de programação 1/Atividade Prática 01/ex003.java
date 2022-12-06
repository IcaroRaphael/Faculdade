
import java.util.Scanner;
import java.util.Locale;

public class ex003 {
	public static void main(String[] args) {
		/*3.Uma empresa decidiu dar 20% de aumento aos funcionários cujos
		 salários são inferiores a 500 reais. Escreva um programa que leia
		 o salário de vários funcionários e mostre o valor do salário
		 reajustado ou uma mensagem caso o funcionário não tenha direito
		 ao aumento. O programa será encerrado quando se digitar “fim” para
		 o nome do funcionário. (Comando while)*/
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		String nome = "";
		
		while(nome.equals("FIM") == false){
			System.out.print("Insira o nome: ");
			nome = scan.next().toUpperCase();
			if(nome.equals("FIM") == false) {
				System.out.print("Insira seu Salário: ");
				double salario = scan.nextDouble();
				if(salario < 500) {
					double novoSalario = salario * 1.2;
					System.out.printf("Novo salário: %.2f\n", novoSalario);
				}else {
					System.out.println("Desculpe, você não possui direito ao aumento.");
				}
			}
			System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");
		}
		
		scan.close();
	}
}