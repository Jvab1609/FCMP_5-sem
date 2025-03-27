#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <string.h>
#define BUFFER_SIZE 25
#define READ_END	0
#define WRITE_END	1

int main(void) {
	char write_msg[BUFFER_SIZE] = "Hello World!";
	char read_msg[BUFFER_SIZE];
	pid_t pid;
	int fd[2];
	if (pipe(fd) == -1) {
		fprintf(stderr,"Pipe falhou!");
		return 1;
	}
	pid = fork();
	if (pid < 0) {
		fprintf(stderr, "Fork falhou!");
		return 1;
	}
	if (pid > 0) {
		close(fd[READ_END]); //fecha a extremidade de leitura (não usada)
		write(fd[WRITE_END], write_msg, strlen(write_msg)+1); 
		close(fd[WRITE_END]); //encerra a extremidade de escrita
	}
	else {
		close(fd[WRITE_END]); //fecha a extremidade de escrita (não usada)
		read(fd[READ_END], read_msg, BUFFER_SIZE);
		printf("Filho leu: %s\n",read_msg);
		close(fd[READ_END]); //encerra a extremidade de leitura
	}
	return 0;
}


