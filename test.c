#include <stdio.h>

int strcmpx(char *, char*);

int main(int ac, char **av) {
	printf("%d\n", strcmpx("bien", "ouquoi"));
	printf("%d\n", strcmpx("bien", "oubien"));
	printf("%d\n", strcmpx("bien", "joué"));
	printf("%d\n", strcmpx("bien", NULL));
	printf("%d\n", strcmpx("bien", "bien"));
}