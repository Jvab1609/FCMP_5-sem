// PSEUDOCÓDIGO

#define N 5 			/* number of philosophers */
#define LEFT (i+N-1)%N 		/* number of i’s left neighbor */
#define RIGHT (i+1)%N 		/* number of i’s right neighbor */
#define THINKING 0 		/* philosopher is thinking */
#define HUNGRY 1 		/* philosopher is trying to get for ks */
#define EATING 2 		/* philosopher is eating */

typedef int semaphore; 		/* semaphores are a special kind of int */
int state[N]; 			/* array to keep track of everyone’s state */
  semaphore mutex = 1; 		/* mutual exclusion for critical regions */
  semaphore s[N]; 		/* one semaphore per philosopher */

void philosopher(int i) { 	/* i: philosopher number, from 0 to N-1 */
  while (TRUE) { 		/* repeat forever */
    think( ); 			/* philosopher is thinking */
    take forks(i); 		/* acquire two for ks or block */
    eat( ); 			/* yum-yum, spaghetti */
    put forks(i); 		/* put both for ks back on table */
  }
}

void take forks(int i) { 	/* i: philosopher number, from 0 to N-1 */
  down(&mutex); 		/* enter critical region */
  state[i] = HUNGRY; 		/* record fact that philosopher i is hungry */
  test(i); 			/* tr y to acquire 2 for ks */
  up(&mutex); 			/* exit critical region */
  down(&s[i]); 			/* block if for ks were not acquired */
}

void put forks(i) { 		/* i: philosopher number, from 0 to N-1 */
  down(&mutex); 		/* enter critical region */
  state[i] = THINKING; 		/* philosopher has finished eating */
  test(LEFT); 			/* see if left neighbor can now eat */
  test(RIGHT); 			/* see if right neighbor can now eat */
  up(&mutex); 			/* exit critical region */
}

void test(i) { 			/* i: philosopher number, from 0 to N-1 */
  if (state[i] == HUNGRY && state[LEFT] != EATING && state[RIGHT] != EATING) {
    state[i] = EATING;
    up(&s[i]);
  }
}
