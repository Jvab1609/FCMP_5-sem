/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab2;

import java.util.EventObject;

/**
 *
 * @author 202310501
 */
public class MessageEvent extends EventObject{
    private int message;

    
    public MessageEvent(Object source, int message) {
        super(source);
        this.message = message; // Defino a mensagem na hora de construir o evento
    }

    // � necess�rio criar um construtor para receber a origem, do pai
    public int getMessage() {
        return message;
    }

    
}
