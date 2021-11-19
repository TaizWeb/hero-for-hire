require("entity")
do
  local _class_0
  local _parent_0 = Entity
  local _base_0 = {
    name = "mob",
    x = 200,
    y = 200,
    direction = "",
    remainingSteps = 0,
    speed = 1,
    behavior = function(self)
      if self.remainingSteps == 0 then
        if math.random(120) == 1 then
          self.dx, self.dy = 0
          self.direction = math.random(4)
          return self:wander(self.direction)
        end
      else
        self.remainingSteps = self.remainingSteps - 1
        return self:updatePosition()
      end
    end,
    wander = function(self, direction)
      self.remainingSteps = 40
      local _exp_0 = direction
      if 1 == _exp_0 then
        self.dx = self.speed
      elseif 2 == _exp_0 then
        self.dx = self.speed * -1
      elseif 3 == _exp_0 then
        self.dy = self.speed
      elseif 4 == _exp_0 then
        self.dy = self.speed * -1
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, ...)
      return _class_0.__parent.__init(self, ...)
    end,
    __base = _base_0,
    __name = "Mob",
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
  Mob = _class_0
  return _class_0
end
