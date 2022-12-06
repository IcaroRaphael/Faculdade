
import java.util.Scanner;
import java.util.Locale;

public class ex006 {
	public static void main(String[] args) {
		/*6.Faça um programa que receba duas notas de seis alunos, calcule e mostre
		 (comando for):
		 • A média aritmética das duas notas de cada aluno;
		 • A mensagem que está na tabela a seguir:
		 Média aritmética Mensagem:
		 - Abaixo de 3: Reprovado
		 - De 3 a 7: Exame
		 - Acima de 7: Aprovado
		 • O total de alunos aprovados;
		 • O total de alunos de exame;
		 • Total de alunos reprovados;
		 • A média da classe.*/
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		int contAprovados = 0;
		int contExame = 0;
		int contReprovados = 0;
		double somaTotal = 0;
		
		for(int i = 1; i <= 6; i++) {
			System.out.printf("INSIRA OS DADOS DO %dº ALUNO...\n", i);
			
			System.out.print("1º nota: ");
			double n1 = scan.nextDouble();
			
			System.out.print("2º nota: ");
			double n2 = scan.nextDouble();
			
			double media = (n1 + n2) / 2;
			somaTotal += media;
			
			if(media < 3) {
				System.out.printf("Média: %.1f (Reprovado!)\n", media);
				contReprovados++;
			}else if((media >= 3) && (media < 7)) {
				System.out.printf("Média: %.1f (Exame!)\n", media);
				contExame++;
			}else if(media >= 7) {
				System.out.printf("Média: %.1f (Aprovado!)\n", media);
				contAprovados++;
			}
			System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");
		}
		System.out.printf("Total aprovados: %d\n", contAprovados);
		System.out.printf("Total exame: %d\n", contExame);
		System.out.printf("Total reprovados: %d\n", contReprovados);
		System.out.printf("Média da classe: %.1f\n", ((somaTotal)/(contAprovados+contReprovados+contExame)));
		
		scan.close();
	}
}