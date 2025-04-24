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
    }
    
    // Método para tratamento de colisão
    public boolean checarColisao(int height, int width, int xAnt, int yAnt, int xOutra, int yOutra, int sOutra) {  
        
        if (y < 0) {
            y = 0;
            return true;
        }
        else if (y > height - s) {
            System.out.println(y);
            y = height - s;
            return true;
        }
        if (x < 0) {
            x = 0;
            return true;
        }
        else if (x > width - s) {
            x = width - s;
            return true;
        }
        float distY = y + s/2.0f - (yOutra + sOutra/2.0f);
        distY = Math.abs(distY);
        float distX = x + s/2.0f - (xOutra + sOutra/2.0f);
        distX = Math.abs(distX);
        
        
        
        if (distY < (s/2.0f + sOutra/2.0f) &&
                distX < (s/2.0f + sOutra/2.0f)) {
            if (x == xAnt && y == yAnt) {
                if (x < xOutra) {
                    x = xOutra - s;
                }
                else {
                    x = xOutra + sOutra;
                }
                
                if (y < yOutra) {
                    y = yOutra - s;
                }
                else {
                    y = yOutra + sOutra;
                }
            }
            else {
                x = xAnt;
                y = yAnt;
            }
            
            
            
            return true;
        }
        
        else {
            return false;
        }
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

    public abstract void processarInput(int tecla, int height, int width, int xOutra, int yOutra, int sOutra);
    
}
