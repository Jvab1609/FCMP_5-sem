/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao6;

/**
 *
 * @author jvalb
 */
public abstract class Combustivel {
    private String nome;
    private double precoLitro;   
    private Estoque estoque;
    
    public Combustivel(String nome, double precoLitro, Estoque estoque) {
        this.nome = nome;
        this.precoLitro = precoLitro;
        this.estoque = estoque;
    }

    public String getNome() {
        return nome;
    }

    public double getPrecoLitro() {
        return precoLitro;
    }

    public void setPrecoLitro(double precoLitro) {
        this.precoLitro = precoLitro;
    }
    
    public double vender(double litros) {
        double atual = estoque.getNivelAtual();
        if (litros <= atual) {
            estoque.setNivelAtual(atual - litros);
            
            return litros * precoLitro;
        }
        else {
            System.out.println("Estoque insuficiente de " + nome);
            return 0;
        }
    }
    
    public abstract void dados();
}

