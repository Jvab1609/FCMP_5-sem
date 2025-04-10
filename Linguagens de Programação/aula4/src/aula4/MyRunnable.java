/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula4;


/**
 *
 * @author 202310501
 */
public class MyRunnable implements Runnable {
    private String name;
    
    public MyRunnable(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    
    
    
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            System.out.println("Runnable " + getName() + " - " + i);
            try {
                int t = (int) (Math.random()*(500-100 + 1) + 100);
                Thread.sleep(t); // Sleep, por si só, não funciona porque é específico de Thread. Preciso colocar Thread. na frente
            } catch (InterruptedException ex) {
            }
        }
    }
}
