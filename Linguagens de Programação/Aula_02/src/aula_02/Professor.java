/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula_02;

/**
 *
 * @author 202310501
 */
public class Professor extends Pessoa{
    private String titulo;

    public Professor(String nome, String titulo) {
        super(nome); // pegando atributo do pai
        this.titulo = titulo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    @Override
    public String pronomeTratamento(String genero) {
        if (genero.equalsIgnoreCase("M")) {
            return "Professor";
        }
        else {
            return "Professora";
        }
    }
    
    public String pronomeTratamento(String genero, String graduacao) {
        if (genero.equalsIgnoreCase("M")) {
            return "Professor" + " " + graduacao;
        }
        else {
            return "Professora" + " " + graduacao;
        }
    }
    
    
}
