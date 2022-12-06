package tde01;

public class Programa {
    public static void main(String[] args) {

        Produto produto1 = new Produto(123, "TV", 900, 600, false);
        Vendedor vendedor1 = new Vendedor("José", "Rua Cabedelo", 2020);
        Venda venda1 = new Venda();
        venda1.setProduto(produto1);
        venda1.setVendedor(vendedor1);
        venda1.setQuantidadeItens(2);
        venda1.calcularValor();
        venda1.calcularComissao();
        venda1.imprimir();

        linha();
        Produto produto2 = new Produto(456, "HeadSet", 100, 80, true);
        Vendedor vendedor2 = new Vendedor("João", "Rua João Pessoa", 2030);
        Venda venda2 = new Venda();
        venda2.setProduto(produto2);
        venda2.setVendedor(vendedor2);
        venda2.setQuantidadeItens(3);
        venda2.efetuarDesconto(10);
        venda2.calcularValor();
        venda2.calcularComissao();
        venda2.imprimir();

        linha();
        Venda venda3 = new Venda();
        venda3.setProduto(produto2);
        venda3.setVendedor(vendedor2);
        venda3.setQuantidadeItens(2);
        venda3.efetuarDesconto(30);
        venda3.calcularValor();
        venda3.calcularComissao();
        venda3.imprimir();
    }

    public static void linha(){
        System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");
    }
}
