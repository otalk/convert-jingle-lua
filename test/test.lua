package.path = '../../lua-otalk/?.lua;' .. '../src/?.lua;' .. package.path

require "verse".init("client")
c = verse.new()

local utils = require "utils"
require "jingle"
local jingle = jingleStanza()

local converter = require "converter"
local jingleTable = converter.toTable(jingle)
local meta = {__tostring = utils.tableString}
utils.setMetatableRecursively(jingleTable, meta)
print(jingleTable)


