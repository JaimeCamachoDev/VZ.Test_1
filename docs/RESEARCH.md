# Investigación técnica para `VZ.Test_1`

## Contexto real del repositorio
- El repositorio sólo contenía el `manifest.json` del plugin y recursos de preview.
- No había scripts, bloques ni configuración de gameplay.

## Limitaciones de acceso a documentación oficial
Intenté consultar documentación oficial de Hytale desde este entorno, pero los hosts devuelven `403 Forbidden`.

Comandos intentados:
- `curl -I -L https://docs.hytale.com`
- `curl -I -L https://hytale.com`
- `curl -I -L https://hytale.com/news`

## Suposiciones de implementación usadas
Dado que no fue posible descargar docs oficiales desde el entorno:
1. Se propone una estructura de mod con separación de recursos (`Common`) y scripts de servidor (`Server`).
2. Se define un bloque nuevo `VZ:Testitem1`.
3. Se crea un script de servidor que escucha colocación de bloques y hace spawn de un enemigo cuando se coloca `Testitem1`.
4. El enemigo de ejemplo es `hy:slime` y se deja configurable.

## Resultado
Se dejó una implementación base funcional-conceptual para acelerar la integración final cuando se valide el nombre exacto de eventos/API en la versión del SDK usada por tu servidor.
