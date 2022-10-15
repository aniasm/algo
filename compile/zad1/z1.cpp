#include <stdio.h>
#include <cstring>
#include <algorithm>
#include "zad1.h"

int d[100][100];
int Levenstein(char *s, char *t){
	int i,j,m,n,tmp;
	m=strlen(s);
	n=strlen(t);
	
	for(int i=0;i<m+1; i++) d[i][0]=i;
	for(int j=0;j<n+1; j++) d[0][j]=j;
	
	for(int i=1; i<m+1; i++){
		for(int j=1; j<n+1; j++){
			if(s[i-1] == t[j-1]) tmp =0;
			else tmp=1;
			
			d[i][j] = std::min({d[i-1][j]+1,d[i][j-1]+1,d[i-1][j-1]+tmp});
		}
	}
	return d[m][n];
}	
