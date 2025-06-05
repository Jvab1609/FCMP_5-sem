/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao6;

/**
 *
 * @author jvalb
 */
public class Diesel extends Combustivel {
    
    
    public Diesel(double precoLitro, Estoque estoqueDie) {
        super("Diesel", precoLitro, estoqueDie);
    }

    @Override
    public void dados() {
        System.out.println("Combustível: Diesel | Preço: R$" + getPrecoLitro());
    }
}



