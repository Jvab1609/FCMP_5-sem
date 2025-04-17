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
        
        switch(tecla) {
            case 0: 
                y-=d;
                this.setY(y);
                break;
            case 1: 
                y+=d;
                this.setY(y);
                break;
            case 2:
                x-=d;
                this.setX(x);
                break;
            case 3:
                x+=d;
                this.setX(x);
                break;
            case 4:
                if (d < 20) {
                    d++;
                    this.setD(d);
                }
                break;
            case 5:
                if (d > 1) {
                    d--;
                    this.setD(d);
                }
                break;     
            case 6:
                if (s < 100) { 
                    s++;
                    this.setS(s);
                }
                break;
            case 7:
                if (s > 1) {
                    s--;
                    this.setS(s);
                }
                break;                 
        }
        checarColisao(x, y, height, width);
    }
                
    
}
