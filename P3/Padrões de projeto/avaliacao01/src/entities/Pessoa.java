package entities;

public class Pessoa implements entities.interfaces.Pessoa {
    private String nome;
    private String cpf;
    private char tipo;

    public Pessoa(){
    }

    public Pessoa(String nome, String cpf, int cadeira) {
        this.nome = nome;
        this.cpf = cpf;
        this.tipo = getTipo(cadeira);
    }

    @Override
    public String getCPF() {
        return this.cpf;
    }

    @Override
    public String getNome() {
        return this.nome;
    }

    @Override
    public char getTipo(int cadeira) {
        if(cadeira % 2 == 0){
            return 'F';
        }
        else {
            return 'N';
        }
    }

    @Override
    public String toString() {
        return String.format("\nPessoa{" +
                "nome='" + nome + '\'' +
                ", cpf='" + cpf + '\'' +
                ", tipo=" + tipo +
                '}');
    }
}
