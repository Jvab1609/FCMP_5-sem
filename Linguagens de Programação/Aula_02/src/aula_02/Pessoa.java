/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula_02;

import java.util.Date;

/**
 *
 * @author 202310501
 */
public class Pessoa {
    
    // Variáveis de classe devem ser criadas nela diretamente, não dentro de métodos
    private String nome;
    private Date dataDeNascimento;
    private Number altura;

    
    public Pessoa(String nome) {
        this.nome = nome;
    }

    public Pessoa(String nome, Date dataDeNascimento, Number altura) {
        this.nome = nome;
        this.dataDeNascimento = dataDeNascimento;
        this.altura = altura;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataDeNascimento() {
        return dataDeNascimento;
    }

    public void setDataDeNascimento(Date dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    }

    public Number getAltura() {
        return altura;
    }

    public void setAltura(Number altura) {
        this.altura = altura;
    }
    
    public String pronomeTratamento(String genero) {
        if (genero.equalsIgnoreCase("M")) {
            return "Senhor";
        }
        else {
            return "Senhora";
        }
    }
    
}
