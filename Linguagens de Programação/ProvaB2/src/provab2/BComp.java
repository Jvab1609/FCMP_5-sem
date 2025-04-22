/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab2;

import java.awt.event.KeyEvent;

/**
 *
 * @author jvalb
 */
public class BComp extends Bolinha {

    private ProvaB2 ouvinte;
    
    private int[] probs = {300, 300, 300, 300, 200, 200, 200, 200};
    
    
    
    public BComp(int s, int d, int x, int y, ProvaB2 ouvinte) {
        super(s, d, x, y);
        this.ouvinte = ouvinte;
    }
    
    @Override
    public void processarInput(int tecla, int height, int width) {
        int s = this.getS();
        int d = this.getD();
        int x = this.getX();
        int y = this.getY();
        
        int mov = 5;
        
        MessageEvent evento = new MessageEvent(this, tecla-1);
       
        if (tecla < probs[0]) {
            y-=d;
            this.setY(y);
            mov = 0;
            System.out.println("CIMA");
        }
        else if (tecla >= probs[0] && tecla < probs[0] + probs[1]) {
            y+=d;
            this.setY(y);
            mov = 1;
            System.out.println("BAIXO");
        }
        else if (tecla >= probs[0] + probs[1] && tecla < probs[0] + probs[1] + probs[2]) {
            x-=d;
            this.setX(x);
            mov = 2;
            System.out.println("ESQ");
        }
        else if (tecla >= probs[0] + probs[1] + probs[2] && tecla < probs[0] + probs[1] + probs[2] + probs[3]) {
            x+=d;
            this.setX(x);
            mov = 3;
            System.out.println("DIR");
        }
        else if (tecla >= probs[0] + probs[1] + probs[2] + probs[3] && tecla < probs[0] + probs[1] + probs[2] + probs[3] + probs[4]) {
            if (d < 20) {
                d++;
                this.setD(d);
                System.out.println("ACEL");
            }
            else {
                ouvinte.messageArrived(evento);
                if (probs[4] >= 100) {
                    probs[4] -= 50;
                }
                probs[5] += 50;
            }
        }
        else if (tecla >= probs[0] + probs[1] + probs[2] + probs[3] + probs[4] && tecla < probs[0] + probs[1] + probs[2] + probs[3] + probs[4] + probs[5]) {
            if (d > 1) {
                d--;
                this.setD(d);
                System.out.println("DES");
            }
            else {
                ouvinte.messageArrived(evento);
                probs[4] += 50;
                if (probs[5] >= 100) {
                    probs[5] -= 50;
                }
            }
        }    
        else if (tecla >= probs[0] + probs[1] + probs[2] + probs[3] + probs[4] + probs[5] && tecla < probs[0] + probs[1] + probs[2] + probs[3] + probs[4] + probs[5] + probs[7]) {
            if (s < 100) { 
                s++;
                this.setS(s);
                System.out.println("AUM");
            }
            else {
                ouvinte.messageArrived(evento);
                if (probs[6] >= 100) {
                    probs[6] -= 50;
                }    
                probs[7] += 50;
            }
        }
        else {
            if (s > 2) {
                s--;
                this.setS(s);
                System.out.println("DIM");
            }
            else {
                ouvinte.messageArrived(evento);
                probs[6] += 50;
                if (probs[7] >= 100) {
                    probs[7] -= 50;
                }
            }
        }

        if (checarColisao(x, y, height, width)) { 
            ouvinte.messageArrived(evento);
            System.out.println("CHECOU");
            
            if (probs[mov] >= 100) {
                probs[mov] -= 50;
            }
            
            if (mov % 2 == 0) {
                probs[mov + 1] += 50;
            }
            else {
                probs[mov - 1] += 50;
            }
        }
    }

    public int[] getProbs() {
        return probs;
    }
    
    public String strProbs() {
        String string = "";
        for (int i = 0; i < probs.length; i++) {
            string += String.valueOf(probs[i]);
            if (i < probs.length - 1) {
                string += " ";
            }
        }
        return string;
    }
               
}
