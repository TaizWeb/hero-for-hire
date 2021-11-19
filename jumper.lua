require("entity")
require("mob")
do
  local _class_0
  local _parent_0 = Mob
  local _base_0 = {
    name = "jumper",
    behavior = function(self)
      self:step()
      local _exp_0 = self.facing
      if "north" == _exp_0 then
        if player.y < self.y then
          return self:jump()
        end
      elseif "south" == _exp_0 then
        if (player.y > self.y) then
          return self:jump()
        end
      elseif "east" == _exp_0 then
        if player.x > self.x then
          return self:jump()
        end
      elseif "west" == _exp_0 then
        if player.x < self.x then
          return self:jump()
        end
      end
    end,
    jump = function(self)
      self.dx, self.dy = 0
      self.x = player.x
      self.y = player.y
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, ...)
      return _class_0.__parent.__init(self, ...)
    end,
    __base = _base_0,
    __name = "Jumper",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        local parent = rawget(cls, "__parent")
        if parent then
          return parent[name]
        end
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Jumper = _class_0
  return _class_0
end
