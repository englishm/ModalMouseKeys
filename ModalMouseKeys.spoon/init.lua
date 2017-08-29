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

function obj:init()
  local function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*/)")
  end
  obj.spoonPath = script_path()
  self.vimouse = dofile(obj.spoonPath..'/vimouse.lua')
end

--- ModalMouseKeys:bindHotkeys(mapping)
--- Method
--- Binds hotkeys for ModalMouseKeys
---
--- Parameters:
---  * mapping - A table containing hotkey modifier/key details for the following items:
---   * toggle - This will toggle the Mouse Key mode on or off
---   * up - This will move the cursor up when in Mouse Key mode
---   * down - This will move the cursor down when in Mouse Key mode
---   * left - This will move the cursor left when in Mouse Key mode
---   * right - This will move the cursor right when in Mouse Key mode
---
--- Returns:
---  * The ModalMouseKeys object
function obj:bindHotkeys(mapping)
  self.vimouse(mapping)
  return self
end

return obj
