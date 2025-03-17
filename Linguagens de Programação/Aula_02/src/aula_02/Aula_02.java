/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package aula_02;

/**
 *
 * @author 202310501
 */
public class Aula_02 {
    
    private String nome;
    

    public Aula_02() { // construtor que só cria o objeto
    }
    
    public Aula_02(String nome) { // construtor que instancia a classe no objeto e altera o estado
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
    }
    
}
