/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula_02;

/**
 *
 * @author 202310501
 */
public class Teste {
    public static void main(String[] args) {
        Aula_02 a = new Aula_02();
        a.setNome("teste");
        System.out.println(a.getNome());
    
        Pessoa p1 = new Pessoa("Ze");
        Pessoa p2 = new Pessoa("Maria");
        // p = p2 é como se eu pegasse o ponteiro e apontasse p/ outra variável
        System.out.println(p1.getNome());
        System.out.println(p2.getNome());
        //p.setDataDeNascimento(dataDeNascimento);
        
        Pessoa p3 = new Professor("Jao", "Doutor"); // Para esse, não consigo acessar os métodos específicos de professor
        Professor pr1 = new Professor("Maria", "Doutora");
        // pr1 = p3 não funciona porque declarei um como Professor e outro como Pessoa
        
        //pr1 = (Professor) p3; // Agora, sim, eu consigo converter p3 para professor e atribuir o valor
        Pessoa a2 = new Aluno("Pedro", "202310192");
        System.out.println(p3.pronomeTratamento("m"));
        System.out.println(pr1.pronomeTratamento("F", "Doutor"));
        System.out.println(a2.pronomeTratamento("M"));
        
        
        
    }
}
