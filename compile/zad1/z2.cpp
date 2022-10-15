#include <iostream>
#include "zad1.h"

int main() {
	char s[99], t[99];
	printf("Ograniczenia wyrazow <= 100 znakow\n");
	printf("Podaj 1. wyraz\n");
	scanf("%s", s);
	
	printf("podaj 2. wyraz\n");
	scanf("%s",t);
	
	printf("Odleglosc to: %d\n",Levenstein(s,t));
	
	return 0;
}		
