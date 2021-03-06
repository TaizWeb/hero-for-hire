do
  local _class_0
  local _base_0 = {
    x = 0,
    y = 0,
    dx = 0,
    dy = 0,
    width = 25,
    height = 25,
    speed = 8,
    facing = "south",
    draw = function(self)
      love.graphics.setColor(1, 0, 0, 1)
      return love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    end,
    updatePosition = function(self)
      self.x = self.x + self.dx
      self.y = self.y + self.dy
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, x, y)
      self.x = x
      self.y = y
    end,
    __base = _base_0,
    __name = "Entity"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Entity = _class_0
  return _class_0
end
