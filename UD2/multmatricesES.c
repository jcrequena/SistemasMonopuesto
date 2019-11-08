#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define FIL 1024
long int ma1[FIL][FIL];
long int ma2[FIL][FIL];

int main(void)
{	
	int fil,col,k;
	long long **des;

	for ( fil = 0; fil < FIL; fil ++ )
	{
		for ( col = 0; col < FIL; col ++ )
		{	
			ma1[fil][col] = 1 + fil + col;
                        printf("La salida es %lu",ma1[fil][col]);
		}
	}
	for ( fil = 0; fil < FIL; fil ++ )
	{
		for ( col = 0; col < FIL; col ++ )
		{	
			ma2[fil][col] = 1 + fil + col;
			printf("La salida es %lu",ma2[fil][col]);
		}
	}
	des = (long long **)malloc(FIL * sizeof(long long *));
	for ( fil = 0; fil < FIL; fil ++ )
	{
		des[fil]= (long long *)malloc(FIL *sizeof(long long)); 
	}
	for ( fil = 0; fil < FIL; fil ++ )
	{
		for ( col = 0; col < FIL; col ++ )
		{	
			des[fil][col] = 0;
			for ( k = 0; k < FIL; k++ )
				des[fil][col] += ( ma1[fil][k] * ma2[k][col] ); 
		}
	}
	return 0;
}
