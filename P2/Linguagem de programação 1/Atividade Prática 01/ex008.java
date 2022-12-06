
import java.util.Locale;
import java.util.Scanner;

public class ex008 {
	public static void main(String[] args) {
		/*8. Leia uma relação de pacientes de uma clínica, cada um com o nome, o
		 sexo, o peso, a idade e a altura. Para sinalizar o fim da lista será
		 fornecido “fim” no nome do último paciente.
		 Exiba um relatório contendo:
		 • a quantidade de pacientes.
		 • a média de idade dos homens.
		 • a quantidade de mulheres com altura entre 1,60 e 1,70 e peso acima de 70kg.
		 • a quantidade de pessoas com idade entre 18 e 25.
		 • o nome do paciente mais velho.
		 • o nome da mulher mais baixa.*/
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		int contPacientes = 0;
		int somaHomens = 0;
		int contHomens = 0;
		int contMulheres = 0;
		int contJovens = 0;
		String velho = "";
		String baixa = "";
		double maisVelho = 0;
		double maisBaixa = 0;
		
		String nome = "";
		while((nome.equals("FIM")) == false) {
			System.out.printf("INSIRA OS DADOS DO %dº PACIENTE...\n", (contPacientes + 1));
			
			System.out.print("Insira o nome: ");
			nome = scan.next().toUpperCase();
			
			if((nome.equals("FIM")) == false) {
				contPacientes++;
				
				System.out.print("Insia o sexo [M/F]: ");
				char sexo = scan.next().toUpperCase().charAt(0);
				
				System.out.print("Insira o peso: ");
				double peso = scan.nextDouble();
				
				System.out.print("Insira a idade: ");
				int idade = scan.nextInt();
				
				System.out.print("Insira a altura: ");
				double altura = scan.nextDouble();
				
				if(sexo == 'M') {
					somaHomens += idade;
					contHomens++;
					if(idade > maisVelho) {
						maisVelho = idade;
						velho = nome;
					}
				}
				if((sexo == 'F') && ((altura >= 1.60) && (altura <= 1.70)) && (peso > 70)) {
					contMulheres++;
				}
				if((idade >= 18) && (idade <= 25)) {
					contJovens++;
				}
				if((sexo == 'F') && (maisBaixa == 0)) {
					maisBaixa = altura;
					baixa = nome;
				}else {
					if(altura < maisBaixa) {
						maisBaixa = altura;
						baixa = nome;
					}
				}
			}
			System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");
		}
		System.out.printf("Quantidade de pacientes: %d\n", contPacientes);
		double mediaHomens = (somaHomens/contHomens);
		System.out.printf("Média de idade dos homens: %.1f\n", mediaHomens);
		System.out.printf("Quantidade de mulheres com altura entre 1,60 e 1,70 e peso acima de 70kg: %d\n", contMulheres);
		System.out.printf("Quantidade de pessoas com idade entre 18 e 25: %d\n", contJovens);
		System.out.printf("Nome do paciente mais velho: %s\n", velho);
		System.out.printf("Nome da mulher mais baixa: %s\n", baixa);
		
		scan.close();
	}
}