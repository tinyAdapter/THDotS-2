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
	PrecacheResource( "model", "models/thd2/yyy.vmdl", context )--灵梦D
	PrecacheResource( "particle", "particles/thd2/heroes/reimu/reimu_01_effect_fire.vpcf", context )--灵梦D
	PrecacheResource( "particle", "particles/thd2/heroes/reimu/reimu_01_effect.vpcf", context )--灵梦D
	PrecacheResource( "particle", "particles/dire_fx/tower_bad_face.vpcf", context )--灵梦R
	PrecacheResource( "particle", "particles/thd2/heroes/reimu/reimu_03_effect.vpcf", context )--灵梦R
	PrecacheResource( "particle", "particles/thd2/heroes/reimu/reimu_04_effect.vpcf", context )--灵梦大
	PrecacheResource( "particle", "particles/thd2/heroes/youmu/youmu_01_blink_effect.vpcf", context )--妖梦D
	PrecacheResource( "model", "models/heroes/juggernaut/juggernaut.vmdl", context )--妖梦R
	PrecacheResource( "particle", "particles/items2_fx/teleport_end_i.vpcf", context )--像妖梦樱花
	PrecacheResource( "particle", "particles/thd2/heroes/youmu/youmu_04_sword_effect.vpcf", context )--妖梦大
	PrecacheResource( "particle", "particles/thd2/heroes/youmu/youmu_04_blossoms_effect.vpcf", context )--妖梦大
	PrecacheResource( "particle", "particles/thd2/heroes/marisa/marisa_01_rocket.vpcf", context )--魔理沙D
	PrecacheResource( "particle", "particles/thd2/heroes/marisa/marisa_02_stars.vpcf", context )--魔理沙F
	PrecacheResource( "model", "models/props_gameplay/rune_haste01.vmdl", context )--魔理沙R
	PrecacheResource( "model", "models/thd2/masterspark.vmdl", context )--魔理沙 魔炮
	PrecacheResource( "particle", "particles/thd2/heroes/marisa/marisa_04_spark.vpcf", context )--魔理沙 魔炮特效
	PrecacheResource( "particle", "particles/units/heroes/hero_brewmaster/brewmaster_windwalk_dust.vpcf", context )--文文D
	PrecacheResource( "particle", "particles/units/heroes/hero_windrunner/windrunner_spell_powershot_trail_e.vpcf", context )--文文D
	PrecacheResource( "particle", "particles/units/heroes/hero_beastmaster/beastmaster_wildaxe_glow.vpcf", context )--文文F
	PrecacheResource( "particle", "particles/econ/items/windrunner/windrunner_cape_cascade/windrunner_windrun_cascade.vpcf", context )--文文R
	PrecacheResource( "particle", "particles/units/heroes/hero_windrunner/windrunner_poof.vpcf", context )--文文W

end

-- 载入项目所有文件
loadModule ( 'thdots' )
loadModule ( 'abilities/abilityReimu' )
loadModule ( 'abilities/abilityMarisa' )
loadModule ( 'abilities/abilityYoumu' )
loadModule ( 'abilities/abilityAya' )
loadModule ( 'util/damage' )
loadModule ( 'util/stun' )
loadModule ( 'util/pauseunit' )
loadModule ( 'util/silence' )
loadModule ( 'util/magic_immune' )
loadModule ( 'util/timers' )
loadModule ( 'util/util' )



-- 在执行完这个文件，和我们上面所LoadModule之后，
-- dota2的build_slave的vlua.cpp就会开始执行addon_game_mode.lua

-- 这里我们只写一个内容，DOTA2XGameMode:初始化
THDOTSGameMode:InitGameMode()
