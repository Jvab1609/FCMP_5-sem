/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package questao7;

/**
 *
 * @author jvalb
 */
public class Questao7 {

    /**
     * @param args the command line arguments
     */
    
    
    public static int contador = 0;
    public static void main(String[] args) throws InterruptedException {
        // TODO code application logic here
        
        Thread t1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                contador++;
            }
        });
        Thread t2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                contador++;
            }
        });

        t1.start();
        t1.join();
        t2.start();
        t2.join();
        
        
        System.out.println("Valor final do contador: " + contador);
    }
    
}
