import requests
import subprocess
API_URL = "https://api.worldbank.org/v2/en/country/all/indicator/SI.POV.GINI?format=json&date=2011:2020&per_page=32500&page=1&country=ARG"

def obtener_gini():
    res = requests.get(API_URL)
    if res.status_code == 200:
        data = res.json()
        # Filtramos hasta encontrar un año con valor
        for entry in data[1]:
            if entry["value"] is not None:
                return entry["value"]
        raise Exception("No se encontró valor válido de GINI.")
    else:
        raise Exception("Error en la consulta API")

if __name__ == "__main__":
    valor_gini = obtener_gini()
    print("Índice GINI obtenido:", valor_gini)

    # Ejecutar el programa en C y pasarle el valor como argumento
    result = subprocess.run(["../programa_c", str(valor_gini)], capture_output=True, text=True)
    print("Resultado de conversión:", result.stdout)
