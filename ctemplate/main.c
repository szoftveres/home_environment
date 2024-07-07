#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int asmnum(void);

char* asmstring(void);

int
main (void) {
    printf("%s (len:%i)\n", asmstring(), asmnum());
    return 0;
}
