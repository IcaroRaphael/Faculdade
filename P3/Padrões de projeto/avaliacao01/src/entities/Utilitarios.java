package entities;

import java.util.ArrayList;
import java.util.List;
import entities.interfaces.Pessoa;


public class Utilitarios {

    public static void duplica(Repositorio a, Repositorio b){
        b.setLista(a.getLista());
    }

    public static void diferenca(Repositorio a, Repositorio b, Repositorio c){
        List<Pessoa> listaC = new ArrayList<>();

        int cont = 0;
        for(Pessoa p1 : a.getLista()){
            cont = 0;
            for(Pessoa p2 : b.getLista()){
                if(p1.getCPF().equals(p2.getCPF())){
                    cont++;
                }
            }
            if(cont == 0){
                listaC.add(p1);
            }
        }

        c.setLista(listaC);
    }
}
