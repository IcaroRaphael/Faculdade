package application;

import entities.Produto;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        /*Aplicativo Java para um Supermercado

        •O dono do estabelecimento pediu a funcionalidade "Promoção para você", que funciona da seguinte maneira:

        O mercado é aberto 24h.
        •Após as 20h, todos os produtos recebem um desconto de 10%.
        •Aos sábados e domingos esse desconto vale o dia inteiro.
        •Ou seja, além de ter uma classe para os produtos do supermercado, você deve criar outra com o dia/horário da
        compra.

        •Use a técnica de composition para passar o objeto referente ao horário da compra para o objeto referente ao
        produto que está sendo comprado. Assim, no objeto produto o preço é calculado com base no horário e dia da
        semana.

        Na sua main, peça ao usuário o preço do produto, dia da semana e horário da compra (hora, minuto e segundos), e
        devolva o valor final do produto com base naquele horário.*/

        Locale.setDefault(Locale.US);
        Scanner sc = new Scanner(System.in);

        System.out.println("BEM VINDO AO SUPERMERCADO!");
        int n = Metodos.validaInteiro("Insira quantos produtos serão lidos: ");

        List<Produto> produtos = new ArrayList<>();

        for(int i = 1; i <= n; i++){
            System.out.println();
            System.out.printf("- INSIRA OS DADOS DO %dº PRODUTO:\n", i);
            produtos.add(Metodos.criaProduto());
        }

        System.out.println();
        System.out.println("- RESULTADOS:");
        for(Produto p : produtos){
            System.out.println(p);
        }

        sc.close();
    }
}