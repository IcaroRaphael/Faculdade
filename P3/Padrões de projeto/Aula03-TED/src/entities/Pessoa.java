package entities;

import application.Metodos;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public abstract class Pessoa {
    private String nome;
    private Date dataNascimento;
    private Endereco endereco;
    private List<Telefone> telefones;

    public Pessoa(String nome, Date dataNascimento, Endereco endereco, List<Telefone> telefones) {
        this.nome = nome;
        this.dataNascimento = dataNascimento;
        this.endereco = endereco;
        this.telefones = telefones;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public List<Telefone> getTelefones() {
        return telefones;
    }

    public int obterIdade(){
        int anoAtual = Calendar.getInstance().get(Calendar.YEAR);
        int mesAtual = Calendar.getInstance().get(Calendar.MONTH) + 1;

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(getDataNascimento());
        int anoNascimento = calendar.get(Calendar.YEAR);
        int mesNascimento = calendar.get(Calendar.MONTH) + 1;

        if(mesAtual < mesNascimento){
            return anoAtual - anoNascimento-1;
        }else{
            return anoAtual - anoNascimento;
        }
    }
}

