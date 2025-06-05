/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package questao5;

/**
 *
 * @author jvalb
 */
public class Questao5 {
    public static void main(String[] args) {
        FilaImpressao fila = new FilaImpressao();

        fila.addDoc(new Documento("Relatorio.pdf", 10));
        fila.addDoc(new Documento("Contrato.docx", 5));

        fila.listarFila();

        fila.imprimirProx();
        fila.imprimirProx();
        fila.imprimirProx();
    }
}


