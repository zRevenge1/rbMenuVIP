
-- By RevengeBack_
fx_version('cerulean')
game('gta5')

client_scripts({
    -- Src
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",
    -- Core
    "Client/functions.lua",
	"Client/C_Main.lua",
})
server_script('Server/sv_vip.lua')
