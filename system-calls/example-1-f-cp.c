#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#define BUF_SIZE 1024

int main(int argc , char* argv[])
{
	int fp,fq;
        ssize_t bytesRead, bytesWritten;
	
	char buffer[BUF_SIZE];
	mode_t mode = S_IRUSR | S_IWUSR | S_IXUSR | S_IRGRP |S_IROTH | S_IXOTH ;

	fp = open (argv [1], O_RDONLY);
	if(fp == -1 ) {
		perror("the source file can't be opened in read mode");
		return 1;
	}
	fq = open (argv[2], O_WRONLY | O_EXCL | O_CREAT, mode);

	if(fq == -1) {
		perror("the source file can't be opened in write mode");
		return 2;
	}
	while((bytesRead = read (fp, &buffer, BUF_SIZE)) > 0) {
		bytesWritten=write (fq, &buffer, (ssize_t)bytesRead);
	}	
	close (fp);
	close (fq);
	
	return 0;
}
