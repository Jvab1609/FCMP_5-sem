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
    
    // Aqui na bolinha controlada pelo computador, pensei em fazer por probabilidades.
    // A cada vez que o limite é atingido, aquele movimento é "penalizado", e o contrário é bonificado com mais probabilidade de acontecer
    
    private int[] probs = {300, 300, 300, 300, 200, 200, 200, 200};
    
    public BComp(int s, int d, int x, int y, ProvaB2 ouvinte) {
        super(s, d, x, y);
        this.ouvinte = ouvinte;
    }
    
    private int somaProbs(int i) {
        int soma = 0;
        for (int j = 0; j <= i; j++) {
            soma += probs[i];
        }
        return soma;
    }
    
    @Override
    public void processarInput(int tecla, int height, int width, int xOutra, int yOutra, int sOutra) {
        int s = this.getS();
        int d = this.getD();
        int x = this.getX();
        int y = this.getY();
        
        int xAnt = x;
        int yAnt = y;
        
        int mov = 5;
        
        MessageEvent evento = new MessageEvent(this, tecla-1);
       
        if (tecla < somaProbs(0)) {
            y-=d;
            this.setY(y);
            mov = 0;
            System.out.println("CIMA");
        }
        else if (tecla >= somaProbs(0) && tecla < somaProbs(1)) {
            y+=d;          
            this.setY(y);
            mov = 1;
            System.out.println("BAIXO");
        }
        else if (tecla >= somaProbs(1) && tecla < somaProbs(2)) {
            x-=d;
            this.setX(x);
            mov = 2;
            System.out.println("ESQ");
        }
        else if (tecla >= somaProbs(2) && tecla < somaProbs(3)) {
            x+=d;
            this.setX(x);
            mov = 3;
            System.out.println("DIR");
        }
        else if (tecla >= somaProbs(3) && tecla < somaProbs(4)) {
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
        else if (tecla >= somaProbs(4) && tecla < somaProbs(5)) {
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
        else if (tecla >= somaProbs(5) && tecla < somaProbs(6)) {
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
            if (s > 2) { // Coloquei o mínimo como 2 porque com 1 a bolinha some
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

        if (checarColisao(height, width, xAnt, yAnt, xOutra, yOutra, sOutra)) { 
            // Manda para o painel que a bolinha colidiu, para ele fazer outra vez.
            ouvinte.messageArrived(evento);
            
            probs[mov] -= 50;
            
            
            if (mov % 2 == 0) {
                probs[mov + 1] += 50;
            }
            else {
                probs[mov - 1] += 50;
            }
        }
        
        for (int i = 0; i < probs.length; i++) {
            if (probs[i] > 500) {
                probs[i] = 500;
            }
            else if (probs[i] < 50) {
                probs[i] = 50;
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
