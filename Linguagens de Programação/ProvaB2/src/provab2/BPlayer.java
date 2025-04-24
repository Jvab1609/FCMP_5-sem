package provab2;

import java.awt.event.KeyEvent;

/**
 *
 * @author jvalb
 */
public class BPlayer extends Bolinha {
    
    public BPlayer(int s, int d, int x, int y) {
        super(s, d, x, y);
    }

    @Override
    public void processarInput(int tecla, int height, int width, int xOutra, int yOutra, int sOutra) {
        
                
        int s = this.getS();
        int d = this.getD();
        int x = this.getX();
        int y = this.getY();
        
        int xAnt = x;
        int yAnt = y;
        int sAnt = s;
        
        switch(tecla) {
            case KeyEvent.VK_UP: 
                y-=d;
                this.setY(y);

                break;
            case KeyEvent.VK_DOWN: 
                y+=d;
                this.setY(y);
                break;
            case KeyEvent.VK_LEFT:
                x-=d;
                this.setX(x);
                break;
            case KeyEvent.VK_RIGHT:
                x+=d;
                this.setX(x);
                break;
            case KeyEvent.VK_S:
                if (d < 20) {
                    d++;
                    this.setD(d);
                }
                break;
            case KeyEvent.VK_X:
                if (d > 1) {
                    d--;
                    this.setD(d);
                }
                break;     
            case KeyEvent.VK_A:
                if (s < 100) { 
                    s++;
                    this.setS(s);
                }
                break;
            case KeyEvent.VK_Z:
                if (s > 2) { // Coloquei o mínimo como 2 porque com 1 a bolinha some
                    s--;
                    this.setS(s);
                }
                break;                 
        }
        checarColisao(height, width, xAnt, yAnt, sAnt, xOutra, yOutra, sOutra); // Método da superclasse que trata colisão
    }
                
    
}
