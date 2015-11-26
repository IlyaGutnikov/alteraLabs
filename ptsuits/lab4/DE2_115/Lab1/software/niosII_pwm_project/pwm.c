#include <stdio.h>
#include "altera_avalon_pwm_regs.h"
#include "system.h"

int main()
{ 
	int rx_char;
	char line[100];
	
  printf("Nios II PWM Lab\n");
  
  printf("\nPlease enter an LED intensity between 1 to 4 (0 to exit)\n");
  
  IOWR_ALTERA_AVALON_GEN(SIGMADELTA_0_BASE,16);

  
  while (1)
	{
  
	  fgets(line, sizeof(line),stdin);
	  sscanf(line,"%d",&rx_char);
	
		switch (rx_char)
		{
			case 4:
				IOWR_ALTERA_AVALON_GEN(SIGMADELTA_0_BASE,8);
				printf("Level 4 intensity\n");
				break;
	
			case 3:
				IOWR_ALTERA_AVALON_GEN(SIGMADELTA_0_BASE,4);
				printf("Level 3 intensity\n");
				break;
	
			case 2:
				IOWR_ALTERA_AVALON_GEN(SIGMADELTA_0_BASE,2);
				printf("Level 2 intensity\n");
				break;
	
			case 1:
				IOWR_ALTERA_AVALON_GEN(SIGMADELTA_0_BASE,1);
				      //  IOWR_ALTERA_AVALON_PWM_DT(MY_PWM_BASE,25000000);
				printf("Level 1 intensity\n");
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
