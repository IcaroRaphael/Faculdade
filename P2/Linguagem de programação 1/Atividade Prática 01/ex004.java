
import java.util.Scanner;
import java.util.Locale;

public class ex004 {
	public static void main(String[] args) {
		/*4.Um motorista parou no posto de gasolina, comprou dois refrigerantes
		 e abasteceu o seu carro com gasolina. Leia a quantidade de litros de
		 gasolina foram necessários para abastecer o veículo e informe o valor
		 total da conta desse cliente, sabendo-se que cada refrigerante custou
		 R$3,00 e o litro de gasolina está custando R$2,50.(Estrutura Sequencial).*/
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		double refrigerante = 3.00;
		double gasolina = 2.50;
		
		System.out.print("Insira quantos litros foram abastecidos: ");
		double litros = scan.nextDouble();
		
		double total = (litros * gasolina) + (refrigerante * 2);
		System.out.printf("Total: R$%.2f\n", total);
		scan.close();
	}
}