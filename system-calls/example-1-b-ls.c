#include <stdio.h>
#include <dirent.h>
#include <stdlib.h>

int main(int argc, char **argv) 
{
    if(argc == 1) {
        printf("Usage: %s [directory]\n", *argv);
        exit(0);
    }
    struct dirent *dp;
    DIR *dirp = opendir(argv[1]);
    while ((dp = readdir(dirp)) != NULL) {
	puts(dp->d_name);	 
    }
    
    closedir(dirp);
    return 0;
}
