/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao6;

/**
 *
 * @author jvalb
 */
public class Estoque {
    private double capacidadeMaxLitros;
    private double nivelAtual;

    public Estoque(double capacidadeMaxLitros, double nivelAtual) {
        this.capacidadeMaxLitros = capacidadeMaxLitros;
        this.nivelAtual = nivelAtual;
    }

    public double getCapacidadeMaxLitros() {
        return capacidadeMaxLitros;
    }


    public double getNivelAtual() {
        return nivelAtual;
    }

    public void setNivelAtual(double nivelAtual) {
        this.nivelAtual = nivelAtual;
    }
    
}
