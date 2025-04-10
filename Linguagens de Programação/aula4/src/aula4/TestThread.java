/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula4;

/**
 *
 * @author 202310501
 */
public class TestThread {
    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            (new MyThread()).start();
        }
        
//        Thread t = new MyThread();;
//        t.start();
    }
}
