/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula4;

/**
 *
 * @author 202310501
 */
public class TestRunnable {
    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            (new Thread(new MyRunnable(String.valueOf(i)))).start();
             
            // Aqui, eu n�o consigo chamar start() porque n�o � thread
            // Cria-se uma inst�ncia de thread e passa-se o runnable para ela (INJE��O DE DEPEND�NCIA)
                // Preciso do arcabou�o de uma thread para rodas
        }
    }
}
