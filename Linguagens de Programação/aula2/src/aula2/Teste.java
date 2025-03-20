/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula2;

/**
 *
 * @author jmjunior
 */
public class Teste {
    public static void main(String[] args) {
        Aula2 a = new Aula2();
        a.setNome("teste");
        System.out.println(a.getNome());
        Pessoa p = new Pessoa("Ze");
        p.setNome("Ze");
        Pessoa p2 = new Pessoa("Maria");
        //p = p2;
        System.out.println(p.getNome());
        System.out.println(p2.getNome());
        System.out.println(p);
        System.out.println(p2);
        
        Pessoa p3 = new Professor("Jao", "Doutor");
        Professor pr1 = new Professor("Maria", "Doutora");
        Pessoa a2 = new Aluno("Pedro", "342375987");
        
        System.out.println(p3.pronomeTratamento("M"));
//        System.out.println(pr1.pronomeTratamento("F"));
//        System.out.println(a2.pronomeTratamento("F"));
        
    }
}
