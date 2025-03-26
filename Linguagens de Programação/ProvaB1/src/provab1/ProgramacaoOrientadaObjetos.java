/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab1;

/**
 *
 * @author jvalb
 */
public class ProgramacaoOrientadaObjetos extends Disciplina implements Pratica {
    private String tema;
    private double peso;

    public ProgramacaoOrientadaObjetos() {
    }
    
    public void definirTrabalho(String tema) {
        this.tema = tema;
    }
    public void definirTrabalho(String tema, double peso) {
        this.tema = tema;
        this.peso = peso;
    }

    @Override
    public double calcularMedia() {
        if (peso != 0) {
            return 6.0 * peso;
        }
        else {
            return 6.0;
        }
    }
    
    @Override
    public String reservarLaboratorio() {
        return "Laboratório 4 reservado para aula de Linguagens";
    }
    
}
