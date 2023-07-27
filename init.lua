require('ivan.base')
require('ivan.highlights')
require('ivan.maps')
require('ivan.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
	require('ivan.macos')
end
if is_win then
	require('ivan.windows')
end
if is_wsl then
	require('ivan.wsl')
end
