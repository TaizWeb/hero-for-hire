require("entity")
do
  local _class_0
  local _parent_0 = Entity
  local _base_0 = {
    name = "player",
    x = 0,
    y = 0,
    width = 25,
    height = 25,
    speed = 5,
    draw = function(self)
      love.graphics.setColor(1, 1, 1, 1)
      return love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    end,
    checkMovement = function(self)
      if (love.keyboard.isDown("left")) then
        self.dx = self.speed * -1
      elseif (love.keyboard.isDown("right")) then
        self.dx = self.speed
      elseif (love.keyboard.isDown("up")) then
        self.dy = self.speed * -1
      elseif (love.keyboard.isDown("down")) then
        self.dy = self.speed
      else
        self.dx = 0
        self.dy = 0
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
    __name = "Player",
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
  Player = _class_0
  return _class_0
end
