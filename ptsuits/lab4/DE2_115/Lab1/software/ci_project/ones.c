/**********************************************************************
 * Includes
 **********************************************************************/
#include <stdio.h>
#include <string.h>
#include <stdio.h>
#include "altera_avalon_performance_counter.h"
#include "system.h"
#include "alt_types.h"

/**********************************************************************
 * Defines
 **********************************************************************/
#define DATA_BLOCK_SIZE_W	1000
#define CYCLE_COUNT			1000

/**********************************************************************
 * Global variables
 **********************************************************************/
alt_u32 data_buffer[DATA_BLOCK_SIZE_W];

alt_u32 ones_ci(alt_u32 *data_block)
{
	int i;
	alt_u32 result=0;
	for(i=0;i<DATA_BLOCK_SIZE_W;i++)
	{
		result = ALT_CI_COUNTONES(data_block[i]);
	}
    return (result);
}


void ones_sw(alt_u32* data_block, unsigned char* byte)
{
	int g;
	for(g=0;g<DATA_BLOCK_SIZE_W;g++)
	{
		unsigned char temp;
		int i,j;
		byte[0]=(unsigned char) data_block[g];
		byte[1]=(unsigned char) data_block[g]>>8;
		byte[2]=(unsigned char) data_block[g]>>16;
		byte[3]=(unsigned char) data_block[g]>>24;
		for( i=3;i>0;--i)
			for( j=0;j<i;++j)
				if(byte[j]>byte[j+1])
				{
					temp = byte[j];
					byte[j]=byte[j+1];
					byte[j+1]=temp;
				}
	}
}

int main(void)
{
	alt_32 i;
	alt_u32 total_result_sw, total_result_ci;

	unsigned char res[4];
	for( i=0;i<DATA_BLOCK_SIZE_W;i++) data_buffer[i]=i;

	PERF_RESET (PERFORMANCE_COUNTER_0_BASE);
	PERF_START_MEASURING (PERFORMANCE_COUNTER_0_BASE);

	total_result_sw=0;

		PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 1);
		ones_sw(data_buffer,res);
		PERF_END (PERFORMANCE_COUNTER_0_BASE, 1);


	total_result_ci=0;

		PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 2);
		total_result_ci = ones_ci(data_buffer);
		PERF_END (PERFORMANCE_COUNTER_0_BASE, 2);

	PERF_STOP_MEASURING (PERFORMANCE_COUNTER_0_BASE);


	perf_print_formatted_report(PERFORMANCE_COUNTER_0_BASE, ALT_CPU_FREQ, 2, "SW", "CI");

	printf("Result software: %x %x %x %x\n", res[3],res[2],res[1],res[0]);
	printf("Result CI: %u\n", total_result_ci);
	//printf((total_result_sw!=total_result_ci)?"Error!\n":"OK\n");

	return 0;

}

