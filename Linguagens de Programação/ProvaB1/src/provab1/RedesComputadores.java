/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab1;

/**
 *
 * @author jvalb
 */
public class RedesComputadores extends Disciplina implements Teorica, Pratica {

    public RedesComputadores() {
    }
    
    @Override
    public double calcularMedia() {
       return 6.0;
    }

    @Override
    public String reservarSala() {
       return "Sala 101 reservada para aula de Redes";
    }

    @Override
    public String reservarLaboratorio() {
        return "Laboratório 3 reservado para aula de Redes";
    }
    
}
