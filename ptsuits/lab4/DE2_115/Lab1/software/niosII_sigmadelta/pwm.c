#include <stdio.h>
#include "altera_avalon_pwm_regs.h"
#include "system.h"

int main()
{ 
	int rx_char;
	char line[100];
	
  printf("Nios II SigmaDelta Lab\n");
  
  printf("\nPlease enter LED intensity between 1 to 4 (0 to exit)\n");
  
  IOWR_ALTERA_SIGMADELTA_PHINC(SIGMADELTA_0_BASE, 5);
  
  while (1)
	{
  
	  fgets(line, sizeof(line),stdin);
	  sscanf(line,"%d",&rx_char);
	
		switch (rx_char)
		{
			case 4:
				IOWR_ALTERA_SIGMADELTA_PHINC(SIGMADELTA_0_BASE,4);
				printf("Phinc = 4\n");
				break;
	
			case 3:
				IOWR_ALTERA_SIGMADELTA_PHINC(SIGMADELTA_0_BASE,3);
				printf("Phinc = 3\n");
				break;
	
			case 2:
				IOWR_ALTERA_SIGMADELTA_PHINC(SIGMADELTA_0_BASE,2);
				printf("Phinc = 2\n\n");
				break;
	
			case 1:
				IOWR_ALTERA_SIGMADELTA_PHINC(SIGMADELTA_0_BASE,1);
				printf("Phinc = 1\n");
				break;
	
			case 0:
			  return 0;
				break;
	
			default:
			  printf("Please enter an integer value from 0 to 4\n");
				break;
		}
	}
  return 0;
}
