# VZ.Test_1

Mod base para Hytale que agrega un bloque nuevo llamado **Testitem1**.

## Objetivo del mod
Cuando el jugador coloca el bloque `Testitem1` en el suelo, el servidor genera (spawn) un enemigo de ejemplo sobre ese bloque.

## Archivos agregados
- `Common/Blocks/Testitem1.block.json` → definición del bloque.
- `Common/Localization/es-ES.json` → textos de nombre/descripcion.
- `Server/Scripts/Testitem1Spawner.lua` → lógica de spawn al colocar bloque.
- `docs/RESEARCH.md` → notas de investigación y limitaciones del entorno.

## Comportamiento implementado
1. Se registra el bloque con id `VZ:Testitem1`.
2. El script de servidor escucha colocación de bloques.
3. Si el bloque colocado es `VZ:Testitem1`, se genera `hy:slime` 1 bloque por encima.

## Ajustes rápidos
En `Server/Scripts/Testitem1Spawner.lua` puedes cambiar:
- `enemyEntityId` para otro enemigo.
- `spawnOffsetY` para altura de aparición.

## Nota importante
En este entorno no fue posible consultar la documentación oficial online de Hytale por restricciones de red (`403`). Por eso la integración se dejó como base estructurada, lista para ajustar los nombres exactos de eventos/API según tu versión del SDK.
