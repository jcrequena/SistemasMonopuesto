#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <unistd.h>
#define FIL 64
long int ma1[FIL][FIL];
long int ma2[FIL][FIL];

int main(void)
{	
	int fil,col,k;
	long long **des;
    int sal=0;
    long ext =0;
	while (1)
	{
        
        for ( fil = 0; fil < FIL; fil ++ )
	    {
		    for ( col = 0; col < FIL; col ++ )
		    {	
			    ma1[fil][col] = 1 + fil + col;
			    sleep(0.1);
                	    printf("Matriz [%d][%d] = %lu\n",fil,col,ma1[fil][col]);
		    }
	    }
	    for ( sal = 0; sal < 10000; sal ++ )
        {
            printf("Ciclos ghost --> monitor\n");
        }
	}
	return 0;
}
