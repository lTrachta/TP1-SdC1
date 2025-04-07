#include <stdio.h>
#include <stdlib.h>

// Función para convertir el índice GINI (float) a entero y sumarle 1.
int convertir_gini(float gini) {
    int valor = (int)gini;
    return valor + 1;
}

int main(int argc, char *argv[]) {
    if(argc < 2) {
        printf("Uso: %s <indice_gini>\n", argv[0]);
        return 1;
    }
    float gini = atof(argv[1]);
    int resultado = convertir_gini(gini);
    printf("Resultado de la conversión: %d\n", resultado);
    return 0;
}
