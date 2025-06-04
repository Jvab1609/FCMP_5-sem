public class Prova() {
    public void main(String[] args) {
        int contador = 0;
        for (int i = 0; i < 10; i++) {
            if (i % 2 == 0) {
                contador++;
            }
        }
        System.out.println("% de pares = " + (contador / 10.0));
    } 
}



