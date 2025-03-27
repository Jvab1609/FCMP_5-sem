/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab1;

import java.util.ArrayList;

/**
 *
 * @author jvalb
 */
public class ProgramacaoOrientadaObjetos extends Disciplina implements Pratica {
    private String tema;
    public ProgramacaoOrientadaObjetos() {
    }
    
    public void definirTrabalho(String tema) {
        this.tema = tema;
        System.out.println("Tema do trabalho de POO: " + tema);
    }
    public void definirTrabalho(String tema, double peso) {
        this.tema = tema;
        System.out.println("Tema do trabalho de POO: " + tema + ", com peso " + String.valueOf(peso));
    }

    @Override
    public double calcularMedia() {
        return 7.0;
    }
    
    @Override
    public String reservarLaboratorio() {
        return "Laboratorio 4 reservado para aula de POO";
    }
    
}
