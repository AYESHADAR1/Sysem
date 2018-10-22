 #include <stdio.h>
 #include <signal.h>
int main()
{
  
  
  int k  = kill(getppid(), SIGKILL);
  if (k ==0 )
      {
         printf("Child killed");
      } 
  else if (k == -1 )
      {
    
         printf("ooppsss Not killed!!!!!!"); 
       } 
  
   
  
}
       
 
  
