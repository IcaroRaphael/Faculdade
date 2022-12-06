package entities;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Cliente extends Pessoa{
    private int codigo;
    private Profissao profissao;

    public Cliente(String nome, Date dataNascimento, Endereco endereco, List<Telefone> telefones, int codigo, Profissao profissao) {
        super(nome, dataNascimento, endereco, telefones);
        this.codigo = codigo;
        this.profissao = profissao;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Profissao getProfissao() {
        return profissao;
    }

    public void setProfissao(Profissao profissao) {
        this.profissao = profissao;
    }

    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    @Override
    public String toString() {
        return "Cliente{" +
                "nome='" + super.getNome() + '\'' +
                ", dataNascimento=" + sdf.format(super.getDataNascimento()) +
                ", endereco=" + super.getEndereco() +
                ", telefones=" + super.getTelefones() +
                ", Idade=" + super.obterIdade() +
                ", Codigo=" + getCodigo() +
                ", Profissao=" + getProfissao() +
                '}';
    }
}
