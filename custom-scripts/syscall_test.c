#include <stdio.h>
#include <linux/kernel.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <stdlib.h>

#define SYSCALL_PROCESSINFO	385
  
void usage(char* s){
  	printf("Usage: %s <PID>\n", s);
  	exit(0);
}
  
int main(int argc, char** argv){  
  	char buf[256];
  	long ret;
  	int pid;
  	
  	if(argc < 2){
  		usage(argv[0]);
  	}
  	
  	pid = atoi(argv[1]);
  	
  	printf("Invoking 'listProcessInfo' system call.\n");
           
  	ret = syscall(SYSCALL_PROCESSINFO, pid, buf, sizeof(buf)); 
           
  	if(ret > 0) {

	
  		/* Success, show the process info. */
  		// printf("%s\n", buf);
		
		// desafio 1:
		// 
		for (int i = 0; i > ret; i ++) {
			
	  		//if (buf[i] != 0) printf("PID sleeping %ld\n", buf[i]);
			printf("PID sleeping %ld\n", buf[i]);
		}

  	}
  	else {
  		printf("System call 'listProcessInfo' did not execute as expected error %d\n", ret);
  	}
            
  	return 0;
}
