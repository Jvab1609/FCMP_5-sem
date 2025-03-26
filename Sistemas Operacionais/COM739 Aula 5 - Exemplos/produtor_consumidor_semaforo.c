#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <sys/time.h>
#include <semaphore.h>
#define NUMCONS		2
#define NUMPROD		2
#define BUFFERSIZE	1000
pthread_t cons[NUMCONS];
pthread_t prod[NUMPROD];
int buffer[BUFFERSIZE];
int currentidx;
pthread_mutex_t buffer_mutex;
sem_t buffer_full, buffer_empty;
void *consumidor(void *arg);
void *produtor(void *arg);

int main(int argc, char **argv) {
	int i;
	time_t t;
	srand48(time(&t));
	currentidx = 0;
	pthread_mutex_init(&buffer_mutex, NULL);
	sem_init(&buffer_full, 0, 0);
	sem_init(&buffer_empty, 0, 0);
	for(i = 0; i < NUMCONS; i++) {
		pthread_create(&(cons[i]), NULL, consumidor, NULL);
	}
	for(i = 0; i < NUMPROD; i++) {
		pthread_create(&(prod[i]), NULL, produtor, NULL);
	}
	for(i = 0; i < NUMCONS; i++) {
		pthread_join(cons[i], NULL);
	}
	for(i = 0; i < NUMPROD; i++) {
		pthread_join(prod[i], NULL);
	}
}

void *produtor(void *arg) {
	int n;
	while(1) {
		n = (int) (drand48() * 1000.0);
		pthread_mutex_lock(&buffer_mutex);
		if(currentidx == BUFFERSIZE) { // se o índice for igual ao tamanho do buffer,
			pthread_mutex_unlock(&buffer_mutex); // desbloqueio o mutex
			sem_wait(&buffer_full); // começo a esperar alguém liberar
		} else {
            int c = currentidx;
			buffer[currentidx++] = n;
			if(currentidx == 1) sem_post(&buffer_empty); // Se estava em 0 antes (pilha estava vazia), pode ter consumidores esperando => sinaliza para eles
			pthread_mutex_unlock(&buffer_mutex);
			printf("Produzindo numero %d posicao %d\n", n, c);
		}
		sleep((int) (drand48() * 4.0));
	}
}


void *consumidor(void *arg) {
	int n;
	while(1) {
		pthread_mutex_lock(&buffer_mutex);
		if(currentidx > 0) {
			n = buffer[--currentidx];
			int c = currentidx;
			if(currentidx == (BUFFERSIZE - 1)) // Se tiver aberto espaço, ele fala para os produtores que não está mais cheio
				sem_post(&buffer_full);
			pthread_mutex_unlock(&buffer_mutex);
			printf("Consumindo numero %d posicao %d\n", n, c);
		} else {
			pthread_mutex_unlock(&buffer_mutex); // Se não estiver vazio, consome
			sem_wait(&buffer_empty);
		}
		sleep((int) (drand48() * 4.0));
	}
}



