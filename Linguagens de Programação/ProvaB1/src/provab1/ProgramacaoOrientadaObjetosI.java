/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab1;

import java.util.ArrayList;

/**
 *
 * @author jvalb
 */
public class ProgramacaoOrientadaObjetosI extends ProgramacaoOrientadaObjetos {

    public ProgramacaoOrientadaObjetosI() {
        this.notas = new ArrayList<>();
        this.locais = new ArrayList<>();
    }
    
    @Override
    public void definirTrabalho(String tema) {
        super.definirTrabalho(tema + " I");
    }
}
