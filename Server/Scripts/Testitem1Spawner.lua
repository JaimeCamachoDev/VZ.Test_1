-- Testitem1Spawner.lua
-- Objetivo: cuando el bloque VZ:Testitem1 se coloca, generar un enemigo.

local CONFIG = {
  triggerBlockId = "VZ:Testitem1",
  enemyEntityId = "hy:slime",
  spawnOffsetY = 1.0
}

-- Nota:
-- Los nombres exactos de API/eventos pueden variar según la versión final del SDK.
-- Esta base centraliza toda la lógica para facilitar el ajuste.

local function spawnEnemyAboveBlock(world, blockPosition)
  local spawnPos = {
    x = blockPosition.x,
    y = blockPosition.y + CONFIG.spawnOffsetY,
    z = blockPosition.z
  }

  world:spawnEntity(CONFIG.enemyEntityId, spawnPos)
end

-- Evento esperado de colocación de bloque.
-- Ajusta el nombre y firma del callback si tu runtime usa otra convención.
function OnBlockPlaced(event)
  if event == nil or event.block == nil or event.world == nil then
    return
  end

  if event.block.id ~= CONFIG.triggerBlockId then
    return
  end

  spawnEnemyAboveBlock(event.world, event.block.position)
end

return {
  OnBlockPlaced = OnBlockPlaced
}
