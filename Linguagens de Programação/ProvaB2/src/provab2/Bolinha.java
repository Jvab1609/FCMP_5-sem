/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab2;

import java.awt.Color;
import java.awt.Graphics;

/**
 *
 * @author jvalb
 */

public abstract class Bolinha {
    
    private int s;
    private int d;
    private int x;
    private int y;

    public Bolinha(int s, int d, int x, int y) {
        this.s = s;
        this.d = d;
        this.x = x;
        this.y = y;
    }
    
    public void pintaBolinha(Graphics g, Color cor) {
        g.setColor(cor);
        g.fillOval(x, y, s, s);
        //jPanel1.paint(g); // Cada vez que a janela der refresh, vai pintar
    }
    
    public boolean checarColisao(int x, int y, int height, int width) {
        int s = this.s;     
        if (y <= 0) {
            y = 0;
            this.setY(y);
        }
        else if (y >= height - s) {
            y = height - s;
            this.setY(y);
        }
        if (x <= 0) {
            x = 0;
            this.setX(x);
        }
        else if (x >= width - s) {
            x = width - s;
            this.setX(x);
        }
        else {
            return false;
        }
        return true;
    }

    public void setS(int s) {
        this.s = s;
    }

    public void setD(int d) {
        this.d = d;
    }

    public void setX(int x) {
        this.x = x;
    }

    public void setY(int y) {
        this.y = y;
    }

    public int getS() {
        return s;
    }

    public int getD() {
        return d;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public abstract void processarInput(int tecla, int height, int width);
    
}
