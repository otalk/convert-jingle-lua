package.path = '../../lua-otalk/?.lua;' .. package.path

local M = {}
local converter = require "converter"

function M.getAttribute(element, attr, defaultVal)
  return element.attr[attr] or defaultVal or ""
end

function M.children(element, name, namespace)
  local children = {}
  for tag in element:childtags(name, namespace) do
    local child = converter.toTable(tag)
    if (child) then
      table.insert(children, child)
    end
  end
  return children
end

return M

