/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao5;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jvalb
 */
public class FilaImpressao {
    private List<Documento> fila = new ArrayList<>();
    
    public void addDoc(Documento doc) {
        fila.add(doc);
        System.out.println("Documento " + doc.getNome() + " adicionado");
    }
    
    public void imprimirProx() {
        if (fila.isEmpty()) {
            System.out.println("Sem documentos para imprimir");
            return;
        }
        
        Documento doc = fila.getFirst();
        System.out.println("Imprimindo: ");
        for (int i = 0; i < doc.getNumeroPags(); i++) {
            System.out.println("Doc " + doc.getNome() + "\tPag " + (i + 1));
        }
        fila.removeFirst();
    }
    
    public void listarFila() {
        System.out.println("Documento\t\tNumero de pags");
        for (int i = 0; i < fila.size(); i++) {
            Documento doc = fila.get(i);
            System.out.println(doc.getNome() + "\t\t" + doc.getNumeroPags());
        }
    }
}


