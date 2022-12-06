package factory;

// Classe Criadora
public class PoligonoFactory {

    //Factory Method
    public static Poligono criaPoligono(int numeroDeLados){
        if(numeroDeLados == 3){
            return new Triangulo();
        }
        else if(numeroDeLados == 4){
            return new Quadrado();
        }
        else if(numeroDeLados == 5){
            return new Pentagono();
        }

        return null;
    }
}
