package aula03;

public class Conta {
	int numero;
	String nome;
	double saldo;
	double limite;
		
	public void sacar(double qtd) {
		this.saldo -= qtd;
	}

	public Conta(){
	}

	public Conta(int numero, String nome, double saldo, double limite) {
		this.numero = numero;
		this.nome = nome;
		this.saldo = saldo;
		this.limite = limite;
	}
}
