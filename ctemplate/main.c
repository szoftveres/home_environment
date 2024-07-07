#include <stdio.h>
#include <string.h>
#include <stdlib.h>


char* asm_string (void);
int asm_strlen (char* s);


int
main (void) {
    printf("%s, %i\n", asm_string(), asm_strlen("aaa"));
    return 0;
}
