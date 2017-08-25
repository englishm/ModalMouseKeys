--- === ModalMouseKeys ===
---
--- Move the mouse cursor using your keyboard

local obj={}
obj.__index=obj

-- Metadata
obj.name = "ModalMouseKeys"
obj.version = "0.0.1"
obj.author = "Mike English <mike.english@gmail.com>"
obj.homepage = "https://github.com/englishm/ModalMouseKeys"
obj.license = "MIT - https://opensource.org/licenses/MIT"

-- To begin, we'll simply use our `:init()` to wrap vimouse
function obj:init()
  local function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*/)")
  end
  obj.spoonPath = script_path()
  self.vimouse = dofile(obj.spoonPath..'/vimouse.lua')
  self.vimouse('cmd', 'm')
end

return obj
