/*
** EPITECH PROJECT, 2021
** B-ASM-400-BDX-4-1-asmminilibc-alexandre.quenelle
** File description:
** main
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main (void) {
    char *tmp = strdup("aldexandre");
    char *tmp_bis = strdup("dr");
    void *s = malloc(10);
    void *z = malloc(10);
    void *memmove_cpy = malloc(10);

    printf("strlen -> %d\n", strlen(tmp));
    printf("strcmp -> %d\n", strcmp(tmp, tmp_bis));
    printf("strchr -> %s\n", strchr(tmp, '^'));
    printf("strncmp -> %d\n", strncmp(tmp, tmp_bis, 5));
    printf("memset -> %p\n", memset(s, 'e', 5));
    printf("return of memset -> %s\n", s);
    printf("memcpy -> %p\n", memcpy(z, s, 3));
    printf("return of memcpy -> %s\n", z);
    printf("memcpy -> %p\n", memmove(memmove_cpy, s, 2));
    printf("return of memmove -> %s\n", memmove_cpy);
    printf("strcasecmp -> %d\n", strcasecmp(tmp, tmp_bis));
    printf("rindex -> %s\n", rindex(tmp, 'o'));
    printf("strstr -> %s\n", strstr(tmp, tmp_bis));

    return (0);
}