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
    
    private int[] probs = {300, 300, 300, 300, 200, 150, 150, 150};
    
    
    
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
                probs[4] -= 50;
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
                probs[5] -= 50;
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
                probs[6] -= 50;
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
                probs[7] -= 50;
            }
        }

        
//        switch(tecla) {;
//            case 1: 
//                y-=d;
//                this.setY(y);
//                break;
//            case 2: 
//                y+=d;
//                this.setY(y);
//                break;
//            case 3:
//                x-=d;
//                this.setX(x);
//                break;
//            case 4:
//                x+=d;
//                this.setX(x);
//                break;
//            case 5:
//                if (d < 20) {
//                    d++;
//                    this.setD(d);
//                }
//                break;
//            case 6:
//                if (d > 1) {
//                    d--;
//                    this.setD(d);
//                }
//                break;     
//            case 7:
//                if (s < 100) { 
//                    s++;
//                    this.setS(s);
//                }
//                break;
//            case 8:
//                if (s > 1) {
//                    s--;
//                    this.setS(s);
//                }
//                break;                 
//        }

        if (checarColisao(x, y, height, width)) { 
            ouvinte.messageArrived(evento);
            System.out.println("CHECOU");
            for (int i = 0; i < 4; i++) {
                if (i != mov) {
                    probs[i] += 50;
                }
                else {
                    probs[i] -= 50;
                }
            }
        }
    }

    public int[] getProbs() {
        return probs;
    }
               
}
