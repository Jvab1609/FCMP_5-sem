/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab2;

/**
 *
 * @author jvalb
 */
public class BComp extends Bolinha {

    public BComp(int s, int d, int x, int y) {
        super(s, d, x, y);
    }

    @Override
    public void processarInput(int tecla, int height, int width) {
        int s = this.getS();
        int d = this.getD();
        int x = this.getX();
        int y = this.getY();
        
       
        if (tecla < 200) {
            y-=d;
            this.setY(y);
        }
        else if (tecla >= 200 && tecla < 400) {
            y+=d;
            this.setY(y);
        }
        else if (tecla >= 400 && tecla < 600) {
            x-=d;
            this.setX(x);
        }
        else if (tecla >= 600 && tecla < 800) {
            x+=d;
            this.setX(x);
        }
        else if (tecla >= 800 && tecla < 950) {
            if (d < 20) {
                d++;
                this.setD(d);
            }
        }
        else if (tecla >= 950 && tecla < 1050) {
            if (d > 1) {
                d--;
                this.setD(d);
            }
        }    
        else if (tecla >= 1050 && tecla < 1150) {
            if (s < 100) { 
                s++;
                this.setS(s);
            }
        }
        else {
            if (s > 1) {
                s--;
                this.setS(s);
            }
        }
        
        checarColisao(x, y, height, width);
    }

    public void run() {
        while (true) {
            
        }
    }
                
    
}
