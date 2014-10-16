package.path = '../../lua-otalk/?.lua;' .. package.path

local M = {}

local utils = require "helpers"

local NS = "urn:xmpp:jingle:1"
local GROUPNS = "urn:xmpp:jingle:apps:grouping:0"
local INFONS = "urn:xmpp:jingle:apps:rtp:info:1"

function M.jingleToTable(element)
  local jingle = {}
  jingle.action = utils.getAttribute(element, "action")
  jingle.initiator = utils.getAttribute(element, "initiator")
  jingle.responder = utils.getAttribute(element, "responder")
  jingle.sid = utils.getAttribute(element, "sid")

  jingle.contents = utils.children(element, "contents", NS)
end

return M

