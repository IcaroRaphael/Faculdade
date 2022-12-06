package entities;

public class Endereco {
    private int cep;
    private int numero;
    private String complemento;

    public Endereco(int cep, int numero, String complemento) {
        this.cep = cep;
        this.numero = numero;
        this.complemento = complemento;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    @Override
    public String toString() {
        return "(" +
                "cep=" + cep +
                ", numero=" + numero +
                ", complemento='" + complemento + '\'' +
                ')';
    }
}
