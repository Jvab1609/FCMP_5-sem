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
    
    public boolean checarColisao(int height, int width) {  
        
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
        
//        else if (((hitbox[0] < hitboxOutra[1] && hitbox[0] > hitboxOutra[0]) ||
//                (hitbox[1] > hitboxOutra[0] && hitbox[1] < hitboxOutra[1])) &&
//                ((hitbox[2] < hitboxOutra[3] && hitbox[2] > hitboxOutra[2]) ||
//                (hitbox[3] > hitboxOutra[2] && hitbox[3] < hitboxOutra[3]))) {
//            
//
//            switch (mov) {
//                case 0:
//                    y = hitboxOutra[3] + 1;
//                    break;
//                case 1:
//                    y = hitboxOutra[2] - s - 1;
//                    break;
//                case 2:
//                    x = hitboxOutra[1] + 1;
//                    break;
//                case 3:
//                    x = hitboxOutra[0] - s - 1;
//                    break;
//                case 5:
//                    y = yAnt;
//                    x = xAnt;
//            }
//            
//            System.out.println("COLISÃO ENTRE");
//            return true;
//        }
        
        
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

    public abstract void processarInput(int tecla, int height, int width);
    
}
