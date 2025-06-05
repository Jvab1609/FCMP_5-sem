/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package questao6;

/**
 *
 * @author jvalb
 */
public class Questao6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Posto posto = new Posto("Posto Central");
        
        Estoque estoqueGas = new Estoque(1000, 1000);
        Estoque estoqueEta = new Estoque(800, 800);
        Estoque estoqueDie = new Estoque(1200, 1200);
        
        
        posto.adicionarCombustivel(new Gasolina(5.99, estoqueGas));
        posto.adicionarCombustivel(new Etanol(4.49, estoqueEta));
        posto.adicionarCombustivel(new Diesel(6.29, estoqueDie));

        posto.listarCombustiveis();

        posto.venderCombustivel("Gasolina", 50);
        posto.venderCombustivel("Diesel", 1500);
    }
    
}


