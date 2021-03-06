#ifndef _MEM_H_
#define _MEM_H_
#include "size.h"

#define MAGIC 0xDEADBABE

void memset(u8int* addr, char c, u32int n);
void memcpy(u8int* addr, u8int* from, u32int n);
u8int strcmp(char* str_one, char* str_two);
u32int strlen(char* str); 
void *memret(u32int sz);
void kheapset(u32int addr);

#endif
