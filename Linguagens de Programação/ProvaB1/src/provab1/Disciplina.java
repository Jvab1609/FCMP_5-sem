/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package provab1;

import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author jvalb
 */
public abstract class Disciplina {
    private int codigo;
    private List<String> locais = new ArrayList<>();
    private List<Double> notas = new ArrayList<>();
    
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public List<String> getLocais() {
        return locais;
    }

    public void addLocal(String local) {
        this.locais.add(local);
    }

    public abstract double calcularMedia();
         
}
