#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t pid;
    int i;
    pid = fork();
    if (pid < 0) {
        fprintf(stderr, "Fork falhou\n");
        return 1;
    }
    else if (pid == 0) { //processo filho
        for(i = 0; i < 30; i++) {
            printf("Sou o filho (%d)\n", i);
            sleep(1);
        }
    }
    else { //processo pai 
        printf("PID do filho: %d\n",pid);
        for(i = 0; i < 300; i+=10) {
            printf("Sou o pai (%d)\n", i);
            sleep(1);
        }
        wait(NULL); //processo pai aguardará o filho terminar
        printf("Filho terminou\n");
    }    
    return 0;
}

