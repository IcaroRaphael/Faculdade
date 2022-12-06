
import java.util.Scanner;

public class ex002 {
	public static void main(String[] args) {
		/*2.Faça um programa que leia 10 números inteiros e exiba na tela a
		 mensagem ‘Par’ se ele for um número par, ou ‘Ímpar’ se ele for um 
		 número ímpar. (Comando if).*/
		Scanner scan = new Scanner(System.in);
		
		for(int i = 1; i <= 10; i++) {
			System.out.printf("Insira o %dº valor: ", i);
			int num = scan.nextInt();
			if((num % 2) == 0) {
				System.out.println("Tipo: Par");
			}else {
				System.out.println("Tipo: Ímpar");
			}
			System.out.println("-=--=--=--=--=--=--=--=--=--=-");
		}
		System.out.println("Fim!");
		scan.close();
	}
}