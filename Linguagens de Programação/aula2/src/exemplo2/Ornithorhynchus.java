/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exemplo2;

/**
 *
 * @author 202310501
 */
public class Ornithorhynchus extends Animal implements Mammal, Aquatic, Terrestrial {
    
    private boolean swimming;
    private boolean walking;
    private int breasts;

    public Ornithorhynchus(boolean swimming, boolean walking, int breasts, boolean alive) {
        super(alive); // Passando a característica do pai
        this.swimming = swimming;
        this.walking = walking;
        this.breasts = breasts;
    }
    
    @Override
    public String getSpecies() {
        return "Ornithorhynchus";
    }

    @Override
    public int getNumberOfBreasts() {
        return breasts;
    }

    @Override
    public boolean isSwimming() {
        return swimming;
    }

    @Override
    public boolean isWalking() {
        return walking;
    }
    
}
