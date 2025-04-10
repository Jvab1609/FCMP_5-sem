/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula4;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 202310501
 */
public class Exemplos {
    public static void main(String[] args) {
        Thread myThread = new Thread() {
            public void run() {
                int i = 0;
                while (i < 100) {
                    try {
                        sleep(100);
                    } catch (InterruptedException ex) {
                        Logger.getLogger(Exemplos.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    i++;
                    System.out.println("i = " + i);
                }
            }
        };
       
        myThread.start();
        try {
            Thread.sleep(10000); // Coloquei o main para dormir. Quando acordar, mata a myThread
        } catch (InterruptedException e){
        }
        myThread.stop();
        
        
    }
}
