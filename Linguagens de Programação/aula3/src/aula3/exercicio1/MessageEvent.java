/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula3.exercicio1;

import java.util.EventObject;

/**
 *
 * @author 202310501
 */
public class MessageEvent extends EventObject{
    private String message;

    
    public MessageEvent(Object source, String message) {
        super(source);
        this.message = message; // Defino a mensagem na hora de construir o evento
    }

    // É necessário criar um construtor para receber a origem, do pai
    public String getMessage() {
        return message;
    }

    
}
