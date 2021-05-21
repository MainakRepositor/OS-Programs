#include<stdlib.h>
#include<stdio.h>
#include<string.h>

int main(int argc, char *argv[])
{
	char d[50];

	if(argc == 2) {
		bzero(d,sizeof(d));
		strcat(d,"ls ");
		strcat(d,"-i ");
		strcat(d,argv[1]);
		system(d);
	}
	else {
		printf("Invalid No. of inputs");
	}
	return 0;
}
