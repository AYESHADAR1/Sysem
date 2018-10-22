 #include <signal.h>
#include <stdio.h>
 int main()
 
 {
 
if (raise(SIGUSR1) != 0)
 perror("Failed to raise SIGUSR1");


 
 }
 