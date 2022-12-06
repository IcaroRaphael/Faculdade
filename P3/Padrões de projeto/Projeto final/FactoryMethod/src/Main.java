import factory.Poligono;
import factory.PoligonoFactory;

public class Main {
    public static void main(String[] args) {
        Poligono poligono01 = PoligonoFactory.criaPoligono(3);
        System.out.println(poligono01.getDescricao());

        Poligono poligono02 = PoligonoFactory.criaPoligono(4);
        System.out.println(poligono02.getDescricao());

        Poligono poligono03 = PoligonoFactory.criaPoligono(5);
        System.out.println(poligono03.getDescricao());
    }
}