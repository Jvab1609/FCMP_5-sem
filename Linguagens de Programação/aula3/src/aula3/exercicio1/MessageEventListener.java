/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package aula3.exercicio1;

import aula3.exercicio1.MessageEvent;

/**
 *
 * @author 202310501
 */
public interface MessageEventListener {
    public void messageArrived(MessageEvent e);
    // Crio o m�todo abstrato que receber� o evento
    // E todos que quiserem ser ouvintes precisar�o implement�-lo
}
