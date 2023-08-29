require("config.highlights")
require("config.options")
require("config.maps")
require("config.lazy")

local has = vim.fn.has
local is_mac = has("macunix")
local is_linux = has("unix")
local is_win = has("win32")
local is_wsl = has("wsl")

if is_mac == 1 then
	require("config.macos")
end
if is_linux == 1 then
	require("config.linux")
end
if is_win == 1 then
	require("config.windows")
end
if is_wsl == 1 then
	require("config.wsl")
end
