
package aula2;

public class Aluno extends Pessoa {
    private String ra;

    public Aluno(String nome, String ra) {
        super(nome);
        this.ra = ra;
    }

    public String getRa() {
        return ra;
    }

    public void setRa(String ra) {
        this.ra = ra;
    }
    
}
