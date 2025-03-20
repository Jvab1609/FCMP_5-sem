/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exemplo2;

/**
 *
 * @author 202310501
 */
public class Main {
    public static void main(String[] args) {
        Animal animals[] = {
            new Dog(true, 12, true),
            new Whale(true, 2, false),
            new Ornithorhynchus(true, false, 2, true)
        };
        
        for (int i = 0; i < animals.length; i++) {
            System.out.println(animals[i].isAlive() + "\t" + animals[i].getSpecies());
            //System.out.println(animals[i].getClass().getName() + "\t" + animals[i].getSpecies());
        }
        
        Terrestrial terrestrials[] = {
            new Dog(false, 10, false),
            new Ornithorhynchus(false, true, 2, true)
        };
        for (int i = 0; i < terrestrials.length; i++) {
            System.out.println(terrestrials[i].isWalking()); 
            // Nesse caso, não estou olhando como um animal, e sim como um terrestre. Por isso, não posso acessar o isAlive()
        }
        
        Dog d = new Dog(true, 2, true);
        System.out.println(d); // getString() reimplementado
        Whale w = new Whale(true, 2, true);
        System.out.println(w);
        
    }
}
