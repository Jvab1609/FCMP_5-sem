package aula2;

import java.util.Date;

public class Pessoa {

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
        if(genero.equals("M")) {
            return "Senhor";
        } else {
            return "Senhora";
        }
    }
    
}
