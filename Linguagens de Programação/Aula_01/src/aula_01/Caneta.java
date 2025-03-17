/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula_01;

/**
 *
 * @author jvalb
 */
public class Caneta {
    public int nivel;
    public String modelo;
    public Caneta(int nivel, String modelo) { // método construtor customizado
        this.nivel = nivel; // campos DESTE objeto que está rodando serão os parâmetros passados
        this.modelo = modelo;
    }
    public void escrever (String texto) {
        if (nivel > 0) { // condicionei o comportamento do objeto ao estado atual
            System.out.println(texto);
            nivel--;
        }
    }
    public String getModelo() {
        return modelo;
    }
  
    
    public static void main(String[] args) {
        Caneta c = new Caneta(3, "Esferográfica");
        for (int i = 0; i < 2; i++) {
            c.escrever("Texto" + i);
        }
    }
}
