package entities;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Funcionario extends Pessoa{
    private int matricula;
    private Cargo cargo;
    private Date dataAdmissao;
    private double salario;

    public Funcionario(String nome, Date dataNascimento, Endereco endereco, List<Telefone> telefones, int matricula, Cargo cargo, Date dataAdmissao, double salario) {
        super(nome, dataNascimento, endereco, telefones);
        this.matricula = matricula;
        this.cargo = cargo;
        this.dataAdmissao = dataAdmissao;
        this.salario = salario;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public Date getDataAdmissao() {
        return dataAdmissao;
    }

    public void setDataAdmissao(Date dataAdmissao) {
        this.dataAdmissao = dataAdmissao;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public void reajustarSalario(double salario){
        setSalario(salario);
    }

    public void promover(Cargo cargo){
        setCargo(cargo);
    }

    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    @Override
    public String toString() {
        return "Funcionario{" +
                "nome='" + super.getNome() + '\'' +
                ", dataNascimento=" + sdf.format(super.getDataNascimento()) +
                ", endereco=" + super.getEndereco() +
                ", telefones=" + super.getTelefones() +
                ", Idade=" + super.obterIdade() +
                ", Matricula=" + getMatricula() +
                ", Cargo=" + getCargo() +
                ", dataAdmissao=" + sdf.format(getDataAdmissao()) +
                ", Salario=" + getSalario() +
                '}';
    }
}
