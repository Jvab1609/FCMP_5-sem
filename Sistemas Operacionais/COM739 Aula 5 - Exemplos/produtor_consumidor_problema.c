#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <sys/time.h>

#define NUMCONS		2 // número de consumidores e produtores
#define NUMPROD		2
#define BUFFERSIZE	1000 // tamanho da pilha

pthread_t cons[NUMCONS];
pthread_t prod[NUMPROD];
int buffer[BUFFERSIZE];
int currentidx; // índice atual (topo) da pilha

void *consumidor(void *arg);
void *produtor(void *arg);

int main(int argc, char **argv) {
	int i;
	time_t t;
	srand48(time(&t)); // semente randômica baseada no tempo
	currentidx = 0;
	for(i = 0; i < NUMCONS; i++) {
		pthread_create(&(cons[i]), NULL, consumidor, NULL);
	}
	for(i = 0; i < NUMPROD; i++) {
		pthread_create(&(prod[i]), NULL, produtor, NULL);
	}
	for(i = 0; i < NUMCONS; i++) {
		pthread_join(cons[i], NULL); // join para o programa não parar quando o main acabar, e continuar rodando as threads
	}
	for(i = 0; i < NUMPROD; i++) {
		pthread_join(prod[i], NULL);
	}
}

// threads
void *produtor(void *arg) {
	int n; // variável local
	while(1) { // laço infinito
		n = (int) (drand48() * 1000.0);
		buffer[currentidx++] = n; // grava na posição atual o valor de n e incrementa depois (sintaxe ++), sendo o index compartilhado
		// muitas operações numa linha só - muita chance de dar errado
		printf("Produzindo numero %d posicao %d\n", n, currentidx);
		sleep((int) (drand48() * 4.0));
	}
}
void *consumidor(void *arg) {
	int n;
	while(1) {
		n = buffer[--currentidx];
		printf("Consumindo numero %d posicao %d\n", n, currentidx);
		sleep((int) (drand48() * 4.0));
	}
}
