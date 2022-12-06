package tde01;

public class Venda {

	//ATRIBUTOS
	Produto produto;
	Vendedor vendedor;
	public double desconto;
	private int quantidadeItens;
	public double valor;
	
	//M?TODOS GETTERS AND SETTERS


	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}


	public Vendedor getVendedor() {
		return vendedor;
	}

	public void setVendedor(Vendedor vendedor) {
		this.vendedor = vendedor;
	}

	public int getQuantidadeItens() {
		return quantidadeItens;
	}
	public void setQuantidadeItens(int quantidadeItens) {
		this.quantidadeItens = quantidadeItens;
	}
	
	//M?TODOS
	public void efetuarDesconto(double desconto) {
		double resultado = produto.getValorVenda() - ((desconto / 100) * produto.getValorVenda());
		if(resultado > produto.getValorCusto()) {
			this.desconto = (desconto / 100) * produto.getValorVenda();
		}
		else {
			this.desconto = 0;
		}
	}
	
	public double calcularValor() {
		this.valor = this.quantidadeItens * produto.getValorVenda();
		if(produto.isPromocao() == true) {
			return this.valor - (this.desconto * getQuantidadeItens());
		}
		else {
			return this.valor;
		}
	}
	
	public double calcularComissao() {
		if(produto.isPromocao() == true) {
			return ((vendedor.getComissao() / 2) / 100) * this.valor;
		}
		else {
			return (vendedor.getComissao() / 100) * this.valor;
		}
	}
	
	public void imprimir() {
		System.out.println("** VENDEDOR: **");
		System.out.printf("Codigo: %d\n", vendedor.getCodigo());
		System.out.printf("Nome: %s\n", vendedor.getNome());
		System.out.printf("Comissão: %.2f\n", calcularComissao());
		System.out.println("** PRODUTO: **");
		System.out.printf("Quantidade de itens: %d\n", this.quantidadeItens);
		System.out.printf("Código: %d\n", produto.getCodigo());
		System.out.printf("Descrição: %s\n", produto.getDescricao());
		System.out.printf("Valor do produto: %.2f\n", produto.getValorVenda());
		System.out.println("Produto está na promoção: " + produto.isPromocao());
		System.out.printf("Valor do desconto: %.2f\n", (this.desconto) * getQuantidadeItens());
		System.out.printf("VALOR TOTAL: %.2f\n", calcularValor());
	}
}