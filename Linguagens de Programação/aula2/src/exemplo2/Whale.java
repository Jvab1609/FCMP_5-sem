/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exemplo2;

/**
 *
 * @author 202310501
 */
public class Whale extends Animal implements Mammal, Aquatic {
    
    private boolean swimming;
    private int breasts;

    public Whale(boolean swimming, int breasts, boolean alive) {
        super(alive); // Passando a característica do pai
        this.swimming = swimming;
        this.breasts = breasts;
    }
    
    @Override
    public String getSpecies() {
        return "Whale";
    }

    @Override
    public int getNumberOfBreasts() {
        return breasts;
    }

    @Override
    public boolean isSwimming() {
        return swimming;
    }
    
}
