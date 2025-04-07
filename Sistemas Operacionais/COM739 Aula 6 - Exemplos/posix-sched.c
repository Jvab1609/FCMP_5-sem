/**
  * Um programa pthread simples que ilustra o scheduling do POSIX.
 *
 * Figure 6.8
 *
  * Para compilar:
 *
 *	gcc posix-sched.c -o posix-sched -lpthread
 *
 * @author Gagne, Galvin, Silberschatz
  * Fundamentos de Sistemas Operacionais � Nona Edi��o
 * Copyright John Wiley & Sons - 2013.
 */

#include <pthread.h>
#include <stdio.h>
#define NUM_THREADS 5

/* o thread � executado nessa fun��o */
void *runner(void *param); 

main(int argc, char *argv[])
{
	int i, scope;
	pthread_t tid[NUM_THREADS]; 	/* identificador do thread */
	pthread_attr_t attr; 		/* configura��o de atributos do thread */

	/* captura os atributos padr�o */
	pthread_attr_init(&attr);

	/* primeiro pesquisa sobre o escopo atual */
	if (pthread_attr_getscope(&attr,&scope) != 0)
		fprintf(stderr, "Unable to get scheduling scope.\n");
	else {
		if (scope == PTHREAD_SCOPE_PROCESS)
			printf("PTHREAD_SCOPE_PROCESS\n");
		else if (scope == PTHREAD_SCOPE_SYSTEM)
			printf("PTHREAD_SCOPE_SYSTEM\n");
		else 
			fprintf(stderr,"Illegal scope value.\n");
	}
	
	/* configura o algoritmo de scheduling com PCS ou SCS */
	if (pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM) != 0)
		printf("unable to set scheduling policy.\n");

	/* cria os threads */
	for (i = 0; i < NUM_THREADS; i++) 
		pthread_create(&tid[i],&attr,runner,NULL); 

	/**
	  * Agora vincula todos os threads 
	 */
	for (i = 0; i < NUM_THREADS; i++) 
		pthread_join(tid[i], NULL);
}

/**
  * O thread assumir� o controle nessa fun��o.
 */
void *runner(void *param) 
{
	/* faz alguma coisa ... */

	pthread_exit(0);
}

