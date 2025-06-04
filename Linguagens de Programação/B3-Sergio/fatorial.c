
// Recursivo
long fatRec(long f) {
    if (f == 0) {
        return 1;
    }
    else {
        return (f * fatRec(f - 1));
    }
}

// Iterativo
long fatIter(long f) {
    long i, aux;
    aux = f;
    if (f == 0) {
        return 1;
    }
    else {
        for(i = f - 1; i > 0; i--) {
            aux = aux * i;
        }
        return aux;
    }
}

int main() {

    int contador = 0;
    for (int i = 0; i < 10; i++) {
        if (i % 2 == 0) {
            contador++;
        }
    }
    printf("%% de pares = %.1f", contador/10);

    return 0;

}



// 1

#include <stdio.h>

void transferir(char* conta_remet, char* conta_dest, double qtd) {
    printf("Transferindo %.2f de %s para %s\n", qtd, conta_remet, conta_dest);
}

int main() {
    transferir("123", "456", 500.0);
    return 0;
}





typedef struct {
    char numero[20];
    char titular[50];
    double saldo;
} conta;

void transferir(conta* remetente, conta* destinatario, double qtd) {
    if (qtd <= 0) {
        printf("Quantidade deve ser positiva.\n");
        return;
    }

    if (remetente->saldo < qtd) {
        printf("Saldo insuficiente na conta %s\n", remetente->numero);
        return;
    }

    remetente->saldo -= qtd;
    destinatario->saldo += qtd;

    printf("Transferiu %.2f remetente %s destinatario %s\n", qtd, remetente->numero, destinatario->numero);
}

int main() {
    conta jorge = {"123", "Jorge", 1000.0};
    conta fabio = {"456", "Fábio", 500.0};

    transferir(&jorge, &fabio, 200.0);

    printf("Novo saldo - %s: %.2f, %s: %.2f\n",
           jorge.titular, jorge.saldo,
           fabio.titular, fabio.saldo);

    return 0;
}



// 2


#define MAX 10

void inserirLista(int lista[], int *inicio, int *fim){
    printf("\nDigite um número de tarefa para inserir na lista:   ");
    int tarefaNova;
    scanf("%d", &tarefaNova);
    int aux = (*fim + 1) % MAX;
    if (aux != *inicio) {
        *fim = aux;
        lista[aux] = tarefaNova;
        printf("Valor adicionado!  %d\n", tarefaNova);
    }
    else {
        printf("Lista cheia! Tente remover uma tarefa.");
    }
}

void removerLista(int lista[], int *inicio, int *fim){
    if (*inicio == *fim) {
        printf("Lista vazia! Tente adicionar novos valores antes de remove-los.");
    }
    else {

        lista[*inicio] == 0;
        *inicio += 1;
        printf("Primeira tarefa removida!");
    }
}
void listarLista(int lista[], int *inicio, int *fim){
    if (*inicio == *fim) {
        printf("Lista vazia! Tente adicionar novas tarefas antes de lista-la.");
    }
    else {
        printf("Lista: \n");

        for (int i = *inicio + 1; i != *fim +1; i++) {
            if ((i + 1) % MAX == 0) {
                i = 0;
            }
            printf("%d\t", lista[i]);
        }
        printf("\n");
    }
}



int main(int argc, char** argv) {
    int lista[MAX];
    int inicio = 0, fim = 0, ok = 1;
    char opcao = '0';
    while(ok) {
        system('cls');
        imprimeMenu();
        opcao = getch();
        switch(opcao) {
            case '1': system('cls'); inserirLista(lista, &inicio, &fim); getch(); break;
            case '2': system('cls'); removerLista(lista, &inicio, &fim); getch(); break;
            case '3': system('cls'); listarLista(lista, &inicio, &fim); getch(); break;
            case '4': system('cls'); ok = 0; break;
            default: system('cls'); printf("\nOpcao invalida!\n"); getch(); break;
        }
    }
    return 0;
}



