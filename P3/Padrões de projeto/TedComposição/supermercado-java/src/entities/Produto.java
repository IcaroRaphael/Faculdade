package entities;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Produto {
    static SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

    private String nome;
    private double preco;

    private HorarioCompra horarioCompra;
    private boolean promocao;

    public Produto(String nome, double preco, HorarioCompra horarioCompra) {
        this.nome = nome;
        this.preco = preco;
        this.horarioCompra = horarioCompra;
        this.promocao = validaPromocao();
    }

    // A PARTIR DAS 20H OU AOS SABADOS E DOMINGO A PROMOÇÃO SERÁ VERDADEIRA
    public boolean validaPromocao(){
        Calendar cal = Calendar.getInstance();
        cal.setTime(getHorarioCompra());
        if((cal.get(Calendar.DAY_OF_WEEK) == 1) || (cal.get(Calendar.DAY_OF_WEEK) == 7)){
            return true;
        }
        else if(cal.get(Calendar.HOUR_OF_DAY) >= 20){
            return true;
        }
        else{
            return false;
        }
    }

    public double obterValor(){
        if(promocao == true){
            return preco * 0.9;
        }
        else{
            return preco;
        }
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public boolean isPromocao() {
        return promocao;
    }

    public Date getHorarioCompra() {
        return horarioCompra.getHorario();
    }

    @Override
    public String toString() {
        return "Produto{" +
                "nome = '" + nome + '\'' +
                ", preco = " + obterValor() +
                ", horarioCompra = " + sdf.format(getHorarioCompra()) +
                ", promocao = " + promocao +
                '}';
    }
}
