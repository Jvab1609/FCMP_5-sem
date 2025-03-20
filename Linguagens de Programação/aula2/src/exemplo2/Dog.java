/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exemplo2;

/**
 *
 * @author 202310501
 */
public class Dog extends Animal implements Terrestrial, Mammal {
    
    private boolean walking;
    private int breasts;

    public Dog(boolean walking, int breasts, boolean alive) {
        super(alive); // Passando a característica do pai
        this.walking = walking;
        this.breasts = breasts;
    }
    
    @Override
    public String getSpecies() {
        return "Dog";
    }

    @Override
    public boolean isWalking() {
        return walking;
    }

    @Override
    public int getNumberOfBreasts() {
        return breasts;
    }
    @Override
    public String toString() {
        return getSpecies() + " e está vivo? " + this.isAlive();
    }
}
