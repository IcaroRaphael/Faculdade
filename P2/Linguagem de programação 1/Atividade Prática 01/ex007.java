
import java.util.Scanner;
import java.util.Locale;

public class ex007 {
	public static void main(String[] args) {
		/*7.Uma pousada estipulou o preço da diária em R$ 40,00 e mais uma taxa de
		 serviços diários de:
		 • R$ 15,00, se o número de dias for menor que 10;
		 • R$ 8,00, se o número de dias for maior ou igual a 10.
		 Criar um programa em Java que informe o nome, o valor da conta de cada
		 cliente e ao final o total arrecadado pela pousada. (Comando while)*/
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		double total = 0.0;
		
		char stop = 'S';
		while(stop != 'N') {
			if(stop != 'N') {
				System.out.print("Nome do cliente: ");
				String nome = scan.next();
				
				System.out.print("Valor da conta: ");
				double valor = scan.nextDouble();
				total += valor;
				
				System.out.printf("cliente: %s|Valor: %.2f\n", nome, valor);
				
				System.out.print("Você deseja continuar? [S/N]:");
				stop = scan.next().toUpperCase().charAt(0);
				System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");
			}
		}
		System.out.printf("Total arrecadado: %.2f\n", total);
		
		scan.close();
	}
}