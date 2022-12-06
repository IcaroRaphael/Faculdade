package tde01;

public class Vendedor {
	
	//ATRIBUTOS
	private String nome;
	private int codigo;
	private double comissao = 5;
	private String endereco;
	
	//CONSTRUTOR
	public Vendedor(String nome, String endereco, int codigo) {
		this.nome = nome;
		this.endereco = endereco;
		this.codigo = codigo;
	}
	
	//M?TODOS GETTERS AND SETTERS
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public double getComissao() {
		return comissao;
	}
	public void setComissao(double comissao) {
		this.comissao = comissao;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
}
