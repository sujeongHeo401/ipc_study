ubuntu@ip-172-31-42-29:~/programming$  vi sigloop.c
#include <signal.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

static void signal_handler(int signo){
        printf("Catch SIGINT! But no stop ! \n");
}

int main(void){
        if(signal (SIGNINT, signal_handler) == SIG_ERR){
                print("Can't catch SIGINT!\n");
                exit(1);
        }
        for (;;)
                pause();
        return 0;
}
