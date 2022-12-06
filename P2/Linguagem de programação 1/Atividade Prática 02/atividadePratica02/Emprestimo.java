package atividadePratica02;

public class Emprestimo {
	String nomeUsuario;
	int idade;
	double valorEmprestimo;
	double percentualJurosMes;
	int mesesParaPagar;
	String tipo;
	
	void Imprimir() {
		System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");
		System.out.printf("Nome: %s\n", nomeUsuario);
		System.out.printf("Idade: %d\n", idade);
		System.out.printf("Valor do emprestimo: %.2f\n", valorEmprestimo);
		System.out.printf("Percentual de juros ao mês: %.2f\n", (percentualJurosMes*100));
		System.out.printf("Meses para pagar: %d\n", mesesParaPagar);
	}
	double calcularEmprestimo() {
		if((idade >= 18) && (idade < 23)) {
			//JurosComposto
			valorEmprestimo = valorEmprestimo * (Math.pow((1+percentualJurosMes), mesesParaPagar));
			tipo = "Juros compostos";
		}else if((idade >= 23) && (idade <= 33)) {
			//JurosSimples
			valorEmprestimo += (valorEmprestimo * percentualJurosMes * mesesParaPagar);
			tipo = "Juros simples";
		}
		return valorEmprestimo;
	}
}