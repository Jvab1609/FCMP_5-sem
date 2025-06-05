/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package questao6;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jvalb
 */
public class Posto {
    private String nome;
    private List<Combustivel> combustiveis;

    public Posto(String nome) {
        this.nome = nome;
        combustiveis = new ArrayList<>();
    }
    
    public void adicionarCombustivel(Combustivel c) {
        combustiveis.add(c);
    }

    public void listarCombustiveis() {
        for (Combustivel c : combustiveis) {
            c.dados();
        }
    }
    
    public void venderCombustivel(String nome, double litros) {
        for (Combustivel c : combustiveis) {
            if (c.getNome().equals(nome)) {
                double valor = c.vender(litros);
                if (valor > 0)
                    System.out.println("Venda realizada: R$" + valor);
                return;
            }
        }
        System.out.println("Combustivel invalido");
    }
}

