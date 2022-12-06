package entities.interfaces;


public interface Repositorio {
    void guarda(Pessoa pessoa);
    Pessoa recupera(String cpf);
    Pessoa primeiro();
    Pessoa proximo();
}
