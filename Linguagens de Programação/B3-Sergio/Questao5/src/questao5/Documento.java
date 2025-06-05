/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao5;

/**
 *
 * @author jvalb
 */
public class Documento {
    private String nome;
    private int numeroPags;

    public Documento(String nome, int numeroPags) {
        this.nome = nome;
        this.numeroPags = numeroPags;
    }

    public String getNome() {
        return nome;
    }

    public int getNumeroPags() {
        return numeroPags;
    }
}


