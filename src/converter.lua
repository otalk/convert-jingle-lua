package.path = '../../lua-otalk/?.lua;' .. package.path

local M = {}
local mapTable = {}

function M.register(name, namespace, t)
  local key = name .. "|" .. namespace
  mapTable[key] = t
end

function M.toTable(element)
  local key = element.name .. "|" .. element.attr.xmlns
  return mapTable[key].toTable
end

function M.toXML(name, namespace)
  local key = name .. "|" .. namespace
  return mapTable[key].toXML
end

return M

