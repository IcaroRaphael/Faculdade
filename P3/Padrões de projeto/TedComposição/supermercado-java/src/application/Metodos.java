package application;

import entities.HorarioCompra;
import entities.Produto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Metodos {
    static Scanner sc = new Scanner(System.in);
    static SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

    public static Produto criaProduto(){
        sc.nextLine();
        String nome = validaString("Nome: ").toUpperCase();
        HorarioCompra horarioCompra = validaHorario();
        double preco = validaDouble("Preço: ");
        return new Produto(nome, preco, horarioCompra);
    }

    public static HorarioCompra validaHorario(){
        while(true){
            try{
                System.out.print("Insira o horário no formato [dd/MM/yyyy HH:mm:ss]: ");
                String texto = sc.nextLine();
                Date data = sdf.parse(texto);
                return new HorarioCompra(data);
            }
            catch (ParseException e) {
                System.out.println("Erro, insira a data e horário no formato válido!");
            }
            catch (RuntimeException e){
                System.out.println("Erro, insira a data e horário no formato válido!");
            }
        }
    }

    public static double validaDouble(String txt){
        while(true){
            try{
                System.out.print(txt);
                double decimal = sc.nextDouble();
                return decimal;
            }
            catch (RuntimeException e){
                sc.nextLine();
                System.out.println("Erro, insira um número válido!");
            }
        }
    }

    public static int validaInteiro(String txt){
        while(true){
            try{
                System.out.print(txt);
                int num = sc.nextInt();
                return num;
            }
            catch (RuntimeException e){
                sc.nextLine();
                System.out.println("Erro, insira um número inteiro válido!");
            }
        }
    }

    public static String validaString(String txt){
        while(true){
            try{
                System.out.print(txt);
                String texto = sc.nextLine();
                return texto;
            }
            catch (RuntimeException e){
                System.out.println("Erro, insira um texto válido!");
            }
        }
    }
}
