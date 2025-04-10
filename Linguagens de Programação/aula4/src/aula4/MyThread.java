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
public class MyThread extends Thread { // Para dizer que a classe é uma thread, estendo a classe Thread

    @Override
    public void run() { // Reimplementei o método run (herdado da superclasse) para dizer o que a Thread vai fazer
        for (int i = 0; i < 100; i++) {
            System.out.println(getName() + " - " + i);
            try {
                int t = (int) (Math.random()*(500-100 + 1) + 100);
                sleep(t);
            } catch (InterruptedException ex) {
            }
        }
    }
    
}
