/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package provab1;

/**
 *
 * @author jvalb
 */
public class ProvaB1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        RedesComputadores r = new RedesComputadores();
        ProgramacaoOrientadaObjetos p = new ProgramacaoOrientadaObjetos();
        ProgramacaoOrientadaObjetos pI = new ProgramacaoOrientadaObjetosI();
        System.out.println(r.reservarSala());
        System.out.println(p.reservarLaboratorio());
        p.definirTrabalho("Classes em Java", 0.3);
        pI.definirTrabalho("Encapsulamento");
        
        r.addLocal("Sala 101");
        r.addLocal("Lab 3");
        System.out.println("Locais de Redes: " + r.getLocais());
    }
    
}
