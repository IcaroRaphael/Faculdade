
import java.util.Scanner;
import java.util.Locale;

public class ex001 {
    public static void main(String[] args) {
        /*1.Faça um programa que receba o valor dos créditos galácticos de um Star
         trooper e o percentual de aumento, calcule e mostre os créditos galácticos
         com o novo aumento.*/
        Locale.setDefault(Locale.US);
        Scanner scan = new Scanner(System.in);
        
        System.out.println("* BEM VINDO AO STAR TROOPER *");
        System.out.print("Insira os créditos galácticos: ");
        double creditosIn = scan.nextDouble();

        System.out.print("Insira o percentual de aumento: ");
        double aumentoIn = scan.nextDouble();

        double aumentoOut = (aumentoIn / 100) + 1;
        double creditosOut = creditosIn * aumentoOut;
        
        System.out.println("\n* NOVO VALOR *");
        System.out.printf("Aumento percentual: %.1f\n", aumentoIn);
        System.out.printf("Valor acrescido: %.1f\n", (creditosOut - creditosIn));
        System.out.printf("Créditos com aumento: %.1f\n", creditosOut);
        
        scan.close();
    }
}