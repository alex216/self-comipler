#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main(int argc, char **argv){
	int i;
	int j;
	char str[16];

	if (argc < 2)
		return 1;
	
	printf(".intel_syntax noprefix\n");
	printf(".global main\n");
	printf("main:\n");
	printf("	mov rax, %c\n",argv[1][0]);
	i = 1;
	while(i < strlen(argv[1])){
		if(argv[1][i] == '+'||'-')
			j = 0;
			while(isdigit(argv[1][i+j+1]))
				j++;
			strncpy(str,&argv[1][i+1],j);
			if(argv[1][i] == '+')
				printf("	add rax, %s\n", str);
			else
				printf("	sub rax, %s\n", str);
		memset(str, '\0', sizeof(str));
		i = i + j;
		i++;
	}

	printf("	ret\n");
	return 0;
}

/*
sample mnemonic code:

.intel_syntax noprefix
.global main
main:
	mov rax, 5
	add rax, 20
	sub rax, 4
	ret
*/
