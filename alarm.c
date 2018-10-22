#include <unistd.h>
#include <stdio.h>
int main()
{

  unsigned int a  = alarm( 60 );   
if (a ==0 )
    {
       printf("no alaram set previously!!!");
       printf("\n");
       printf("Alaram set successfully!!!");
       printf("\n");
    } 
  

}
