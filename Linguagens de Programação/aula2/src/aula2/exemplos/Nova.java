/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula2.exemplos;

/**
 *
 * @author jmjunior
 */
public class Nova {
    public static void main(String[] args) {
        Animal a = new Animal() { // forma de instanciar a classe implementando o método abstrato
            @Override
            public void faz() {
                throw new UnsupportedOperationException(); 
            }
        }; // Isso funciona apenas para essa instância, pois não alterei no escopo da classe
        // Se fosse declarar mais uma, teria que fazer de novo
        Animal animais[] = {
            new Cachorro(),
            new CachorroPequeno(),
            new CachorroGrande(),
            new Gato(),
            new GatoPobre(),
            new GatoRico()
        };
        
        for (int i = 0; i < animais.length; i++) {
            animais[i].faz();
        }
        
    }
}
