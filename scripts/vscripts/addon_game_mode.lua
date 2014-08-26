-- 这个文件是RPG载入的时候，游戏的主程序最先载入的文件
-- 一般在这里载入各种我们所需要的各种lua文件
-- 除了addon_game_mode以外，其他的部分都需要去掉

print ( '[[THDOTS]] ADDON INIT EXECUTED' )

-- 这个函数其实就是一个pcall，通过这个函数载入lua文件，就可以在载入的时候通过报错发现程序哪里错误了
-- 避免游戏直接崩溃的情况
local function loadModule(name)
    local status, err = pcall(function()
        -- Load the module
        require(name)
    end)

    if not status then
        -- Tell the user about it
        print('WARNING: '..name..' failed to load!')
        print(err)
    end
end

function Precache( context )
	
	PrecacheResource( "model", "models/particle/snowball.vmdl", context )
	PrecacheResource( "model", "models/development/invisiblebox.vmdl", context )
	PrecacheResource( "model", "models/props_gameplay/rune_haste01.vmdl", context )
<<<<<<< HEAD
=======
	--PrecacheResource( "model", "models/thd2/yyy.vmdl", context )
>>>>>>> origin/master
	PrecacheResource( "particle", "particles/dire_fx/tower_bad_face.vpcf", context )
	PrecacheResource( "particle", "particles/items2_fx/teleport_end_i.vpcf", context )--像妖梦樱花
	PrecacheResource( "particle", "particles/econ/events/ti4/teleport_start_d_ti4.vpcf", context )--灵梦大

end

-- 载入项目所有文件
loadModule ( 'thdots' )
loadModule ( 'abilities/abilityReimu' )
loadModule ( 'util/damage' )
loadModule ( 'util/stun' )
loadModule ( 'util/silence' )
loadModule ( 'util/magic_immune' )
loadModule ( 'util/timers' )



-- 在执行完这个文件，和我们上面所LoadModule之后，
-- dota2的build_slave的vlua.cpp就会开始执行addon_game_mode.lua

-- 这里我们只写一个内容，DOTA2XGameMode:初始化
THDOTSGameMode:InitGameMode()
