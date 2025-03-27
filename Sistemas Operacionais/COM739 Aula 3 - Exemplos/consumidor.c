#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/types.h>
//Obs.: compilar com:
//gcc -Wall -lrt consumidor.c -o consumidor
int main() {
	const char *name = "SO";
	const int SIZE = 4096;
	int shm_fd;
	void *ptr;
	shm_fd = shm_open(name, O_RDONLY, 0666);
	if (shm_fd == -1) {
		printf("shm_open falhou!\n");
		exit(-1);
	}
	ptr = mmap(0,SIZE, PROT_READ, MAP_SHARED, shm_fd, 0);
	if (ptr == MAP_FAILED) {
		printf("Mapeamento falhou!\n");
		exit(-1);
	}
	printf("%s", (char *) ptr);
	if (shm_unlink(name) == -1) {
		printf("Erro no shm_unlink! %s\n",name);
		exit(-1);
	}
	return 0;
}


