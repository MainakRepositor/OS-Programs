#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>

int simple_init(void) 
{
	printk(KERN_INFO "Loading Module\n");

	return 0;
}

void simple_exit(void) 
{
	printk(KERN_INFO "Removing Module\n");
}