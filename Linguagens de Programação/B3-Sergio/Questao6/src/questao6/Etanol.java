/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao6;

/**
 *
 * @author jvalb
 */
public class Etanol extends Combustivel {
    
    
    public Etanol(double precoLitro, Estoque estoqueEta) {
        super("Etanol", precoLitro, estoqueEta);
    }

    @Override
    public void dados() {
        System.out.println("Combustível: Etanol | Preço: R$" + getPrecoLitro());
    }
}
