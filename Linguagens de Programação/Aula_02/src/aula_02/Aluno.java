/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula_02;

/**
 *
 * @author 202310501
 */
public class Aluno extends Pessoa {
    private String ra;

    public Aluno(String nome, String ra) { // peguei do pai e complementei
        super(nome); 
        this.ra = ra;
    }

    public String getRa() {
        return ra;
    }

    public void setRa(String ra) {
        this.ra = ra;
    }

}
