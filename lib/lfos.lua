local LFO = require('lfo')
local Lfo = include('lib/lfos/lfo')
local lfo_count = 18

local Lfos = {
  list = nil
}

function Lfos:new(options)
  local instance = options or {}
  setmetatable(instance, self)
  self.__index = self
  return instance
end

function Lfos:init()
  local oscillators = {}

  for i = 1, lfo_count do
    local osc = Lfo:new()
    osc:init(LFO, i)
    osc:start()
    table.insert(oscillators, osc)
  end

  self.list = oscillators
end

function Lfos:poll(i)
  return {
    period = self.list[i]:get('period'), -- seconds
    value = self.list[i]:get('raw') -- 0..1.0
  }
end

return Lfos