#include <linux/module.h>
#include <linux/kernel.h>

char *mystring;
module_param(mystring, charp, 0000);

int init_module(void){
	printk(KERN_INFO "mystring is a string: %s\n", mystring);
	return 0;
}

void cleanup_module(void){
	printk(KERN_INFO "Goodbye world.\n");
}

