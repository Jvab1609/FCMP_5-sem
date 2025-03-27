#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <sys/time.h>

#define NUMCONS		2
#define NUMPROD		20
#define BUFFERSIZE	1000


char cabo[75];
int p = 36;


pthread_t cons[NUMCONS];
pthread_t prod[NUMPROD];
int buffer[BUFFERSIZE];
int currentidx;
pthread_mutex_t buffer_mutex;
void *consumidor(void *arg);
void *produtor(void *arg);

int main(int argc, char **argv) {
    for (int i = 0; i < sizeof(cabo); i++) {
        cabo[i] = "_";

    }
    cabo[74] = "\0";
    cabo[p] = "J";
    cabo[p+1] = "B";
}

void *produtor(void *arg) {
	int n, c;
	while(1) {
		n = (int) (drand48() * 1000.0);
		pthread_mutex_lock(&buffer_mutex); // tenho locks e unlocks antes e depois de fazer a consulta
		c = currentidx;
		buffer[currentidx++] = n;
		pthread_mutex_unlock(&buffer_mutex);
		printf("Produzindo numero %d posicao %d\n", n, c);
		sleep((int) (drand48() * 4.0));
	}
}

void *consumidor(void *arg) {
	int n, c;
	while(1) {
		pthread_mutex_lock(&buffer_mutex);
		n = buffer[--currentidx];
		c = currentidx;
		pthread_mutex_unlock(&buffer_mutex);
		printf("Consumindo numero %d posicao %d\n", n, c);
		sleep((int) (drand48() * 4.0));
	}
}



