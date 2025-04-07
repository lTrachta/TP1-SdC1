#include <stdio.h>
#include <stdlib.h>

extern int calcular_conversion(int valor);

int main(int argc, char *argv[]) {
    if(argc < 2) {
        printf("Uso: %s <indice_gini>\n", argv[0]);
        return 1;
    }
    float gini = atof(argv[1]);
    int resultado = calcular_conversion(gini);
    printf("Resultado de la conversión: %d\n", resultado);
    return 0;
}
