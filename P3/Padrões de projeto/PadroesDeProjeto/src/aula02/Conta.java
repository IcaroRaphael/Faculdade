package aula02;

public class Conta {
	int numero;
	String nome;
	double saldo;
	double limite;
		
	void sacar(double qtd) {
		this.saldo = this.saldo - qtd;
	}
	
	
	
	

}
