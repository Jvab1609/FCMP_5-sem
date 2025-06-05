/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao6;

/**
 *
 * @author jvalb
 */
public class Gasolina extends Combustivel {
    
    
    public Gasolina(double precoLitro, Estoque estoqueGas) {
        super("Gasolina", precoLitro, estoqueGas);
    }

    @Override
    public void dados() {
        System.out.println("Combustível: Gasolina | Preço: R$" + getPrecoLitro());
    }
}



