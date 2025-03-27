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
//gcc -Wall -lrt produtor.c -o produtor
int main() {
	const int SIZE = 4096;
	const char *name = "SO";
	const char *message0= "Estudar ";
	const char *message1= "Sistemas Operacionais ";
	const char *message2= "eh bom!";
	int shm_fd;
	void *ptr;
	shm_fd = shm_open(name, O_CREAT | O_RDWR, 0666);
	ftruncate(shm_fd,SIZE);
	ptr = mmap(0,SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, shm_fd, 0);
	if (ptr == MAP_FAILED) {
		printf("Mapeamento falhou\n");
		return -1;
	}
	sprintf(ptr,"%s",message0);
	ptr += strlen(message0);
	sprintf(ptr,"%s",message1);
	ptr += strlen(message1);
	sprintf(ptr,"%s",message2);
	ptr += strlen(message2);
	return 0;
}


