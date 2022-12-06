package application;

import entities.Pessoa;
import entities.Telefone;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Metodos {
    public static int validaInteiro(String txt){
        while(true){
            try{
                System.out.print(txt);
                int inteiro = new Scanner(System.in).nextInt();
                return inteiro;
            }
            catch(Exception e){
                System.out.println("Erro! Insira apenas números inteiros.\n");
            }
        }
    }

    public static String validaString(String txt){
        while(true){
            try{
                System.out.print(txt);
                String texto = new Scanner(System.in).nextLine();
                return texto;
            }
            catch(Exception e){
                System.out.println("Erro! Insira apenas caracteres válidos.\n");
            }
        }
    }

    public static double validaDouble(String txt){
        while(true){
            try{
                System.out.print(txt);
                double decimal = new Scanner(System.in).nextDouble();
                return decimal;
            }
            catch(Exception e){
                System.out.println("Erro! Insira apenas números.\n");
            }
        }
    }

    public static int validaNumeroTelefone(){
        while(true){
            int numero = validaInteiro("Telefone: ");
            String txtNumero = String.valueOf(numero);
            if(txtNumero.length() == 9){
                return numero;
            }
            else{
                System.out.println("Erro! Número deve conter 9 dígitos.\n");
            }
        }
    }

    public static List<Telefone> cadastrarTelefones(){
        List<Telefone> telefones = new ArrayList<>();
        int quantTelefones = Metodos.validaInteiro("Insira a quantidade de telefones: ");
        for (int j = 1; j <= quantTelefones; j++) {
            System.out.printf("- %d telefone:\n", j);
            int ddd = Metodos.validaDDD();
            int numeroTelefone = Metodos.validaNumeroTelefone();

            Telefone telefone = new Telefone(ddd, numeroTelefone);
            telefones.add(telefone);
        }
        return telefones;
    }

    public static int validaDDD(){
        String[] codigosRegionais = new String[]{"11","12","13","14","15","16","17","18","19","21","22","24","27","28","31","32","33","34","35","37","38","41","42","43","44","45","46","47","48","49","51","53","54","55","61","62","63","64","65","66","67","68","69","71","73","74","75","77","79","81","82","83","84","85","86","87","88","89","91","92","93","94","95","96","97","98","99"};
        List<String> codigos = Arrays.asList(codigosRegionais);
        while(true){
            int ddd = validaInteiro("DDD: ");
            String txtNumero = String.valueOf(ddd);
            if(codigos.contains(txtNumero)){
                return ddd;
            }
            else{
                System.out.println("DDD inválido! tente novamente.\n");
            }
        }
    }

    public static Date validaData(String txt) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        int anoAtual = Calendar.getInstance().get(Calendar.YEAR);
        while(true){
            try{
                System.out.print(txt + " [DD/MM/AAAA]: ");
                String data = new Scanner(System.in).next();
                int dia = Integer.parseInt(data.substring(0,2));
                int mes = Integer.parseInt(data.substring(3,5));
                int ano = Integer.parseInt(data.substring(6));
                if((data.length() == 10) && (data.substring(2, 3).equals("/") && data.substring(5, 6).equals("/"))){
                    if(dia >= 1 && dia <= 31){
                        if(mes >= 1 && mes <= 12){
                            if(ano <= anoAtual){
                                return sdf.parse(data);
                            }else {System.out.println("Erro! Ano nascimento inválido.\n");}
                        }else {System.out.println("Erro! Mês nascimento inválido.\n");}
                    }else {System.out.println("Erro! Dia de nascimento inválido.\n");}
                }else {System.out.println("Erro! Data no formato inválido.\n");}
            }catch (Exception e){
                System.out.println("Erro! Data no formato inválido.\n");
            }
        }
    }

    public static char escolhaFuncionarioCliente(){
        while(true){
            try{
                System.out.print("Funcionário ou Cliente? [F/C]:");
                char tipoPessoa = new Scanner(System.in).next().toUpperCase().charAt(0);
                if(tipoPessoa == 'F'){
                    return 'F';
                }else if(tipoPessoa == 'C'){
                    return 'C';
                }else {
                    System.out.println("Erro! Caracter inválido.\n");
                }
            }
            catch (Exception e){
                System.out.println("Erro! Insira um caracter válido.\n");
            }
        }
    }

    public static int validaMatriculaFuncionario(){
        while(true){
            try {
                int matricula = validaInteiro("Insira um número de matrícula [5 dígitos]: ");
                String txtMatricula = String.valueOf(matricula);
                if(txtMatricula.length() == 5){
                    return matricula;
                }else {
                    System.out.println("Erro! Matrícula deve conter 5 dígitos.\n");
                }
            }catch (Exception e){
                System.out.println("Erro! Matrícula deve conter 5 números inteiros.\n");
            }
        }
    }

    public static int validaCodigoCliente(){
        while(true){
            try {
                int codigo = validaInteiro("Insira um número de código [6 dígitos]: ");
                String txtCodigo = String.valueOf(codigo);
                if(txtCodigo.length() == 6){
                    return codigo;
                }else {
                    System.out.println("Erro! Código deve conter 6 dígitos.\n");
                }
            }catch (Exception e){
                System.out.println("Erro! Código deve conter 6 números inteiros.\n");
            }
        }
    }

    public static void mostraPessoas(List<Pessoa> lista){
        System.out.println("* PESSOAS: *");
        for(Pessoa p : lista){
            System.out.printf("- %s\n", p);
        }
    }

    public static void linha(){
        System.out.println("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-");
    }
}
