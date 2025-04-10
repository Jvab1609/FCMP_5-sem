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
             
            // Aqui, eu não consigo chamar start() porque não é thread
            // Cria-se uma instância de thread e passa-se o runnable para ela (INJEÇÃO DE DEPENDÊNCIA)
                // Preciso do arcabouço de uma thread para rodas
        }
    }
}
