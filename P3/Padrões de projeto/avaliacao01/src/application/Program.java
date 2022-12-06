package application;

import entities.Pessoa;
import entities.Repositorio;
import entities.Utilitarios;

public class Program {
    public static void main(String[] args) {
        // USANDO O MÉTODO DUPLICA
        Pessoa p1 = new Pessoa("João", "12345612398", 1);
        Pessoa p2 = new Pessoa("Pedro", "98765415965", 2);
        Pessoa p3 = new Pessoa("Maria", "13495364845", 3);

        Repositorio repositorio01 = new Repositorio();
        repositorio01.guarda(p1);
        repositorio01.guarda(p2);
        repositorio01.guarda(p3);

        Repositorio repositorio02 = new Repositorio();

        Utilitarios.duplica(repositorio01, repositorio02);
        System.out.println(repositorio02);
        System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");

        // USANDO O MÉTODO DIFERENCA
        Repositorio repositorio03 = new Repositorio();
        Pessoa p4 = new Pessoa("Vinicius", "1", 1);
        Pessoa p5 = new Pessoa("Luiz", "2", 2);
        Pessoa p6 = new Pessoa("Gabriel", "3", 3);
        Pessoa p7 = new Pessoa("Paulo", "4", 1);
        Pessoa p8 = new Pessoa("Yure", "5", 2);
        Pessoa p9 = new Pessoa("Roberto", "6", 3);
        repositorio03.guarda(p4);
        repositorio03.guarda(p5);
        repositorio03.guarda(p6);
        repositorio03.guarda(p7);
        repositorio03.guarda(p8);
        repositorio03.guarda(p9);

        Repositorio repositorio04 = new Repositorio();
        repositorio04.guarda(p4);
        repositorio04.guarda(p6);
        repositorio04.guarda(p9);


        Repositorio repositorio05 = new Repositorio();

        Utilitarios.diferenca(repositorio03, repositorio04, repositorio05);
        System.out.println(repositorio05);
    }
}
