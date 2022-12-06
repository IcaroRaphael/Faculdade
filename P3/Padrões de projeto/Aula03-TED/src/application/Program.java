package application;

import entities.*;

import java.text.ParseException;
import java.util.*;

public class Program {
    public static void main(String[] args) throws ParseException {
        Locale.setDefault(Locale.US);
        Scanner sc = new Scanner(System.in);

        List<Pessoa> pessoas = new ArrayList<>();

        int n = Metodos.validaInteiro("Insira quantas pessoas serão lidas: ");
        System.out.println();

        for (int i = 1; i <= n; i++) {
            System.out.printf("- INSIRA OS DADOS DA %dº PESSOA:\n", i);
            // ENDEREÇO
            int cep = Metodos.validaInteiro("Cep: ");
            int numero = Metodos.validaInteiro("Número: ");
            String complemento = Metodos.validaString("Complemento: ");

            Endereco endereco = new Endereco(cep, numero, complemento);

            // TELEFONES
            List<Telefone> telefones = Metodos.cadastrarTelefones();
            System.out.println();

            // PESSOA
            String nome = Metodos.validaString("Nome: ").toUpperCase();
            Date dataNascimento = Metodos.validaData("Data de nascimento");

            // ESCOLHA (FUNCIONARIO OU CLIENTE)
            char tipoPessoa = Metodos.escolhaFuncionarioCliente();
            if(tipoPessoa == 'F'){
                // CADASTRO FUNCIONARIO
                int matricula = Metodos.validaMatriculaFuncionario();
                Date dataAdmissao = Metodos.validaData("Data de admissão");
                double salario = Metodos.validaDouble("Salário: ");
                String nomeCargo = Metodos.validaString("Nome do cargo: ");

                Cargo cargo = new Cargo(nomeCargo);
                Pessoa pessoa = new Funcionario(nome, dataNascimento, endereco, telefones, matricula, cargo, dataAdmissao, salario);
                pessoas.add(pessoa);
            }else{
                // CADASTRO CLIENTE
                int codigo = Metodos.validaCodigoCliente();
                String nomeProfissao = Metodos.validaString("Nome da profissão: ");

                Profissao profissao = new Profissao(nomeProfissao);
                Pessoa pessoa = new Cliente(nome, dataNascimento, endereco, telefones, codigo, profissao);
                pessoas.add(pessoa);
            }
            Metodos.linha();
        }
        System.out.println();

        Metodos.mostraPessoas(pessoas);

        sc.close();
    }
}
