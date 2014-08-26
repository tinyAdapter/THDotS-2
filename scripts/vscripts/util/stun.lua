
    if UtilStun == nil then
	    UtilStun = class({})
    end

	function UtilStun:UnitStunTarget( caster,target,stuntime)
		if (target == nil) then
			return
		end
		
		--创建马甲单位
	    local dummy = CreateUnitByName("npc_dummy_unit", 
	    	                            target:GetAbsOrigin(), 
										false, 
										caster, 
										caster, 
										caster:GetTeamNumber()
										)
     	dummy:SetOwner(caster)
    	dummy:AddAbility("ability_stunsystem_stun") 
		--寻找单位释放技能
    	local STUN_TARGET = dummy:FindAbilityByName("ability_stunsystem_stun")
		
	    dummy:CastAbilityOnTarget(target, STUN_TARGET, 0 )
		GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('ability_stunsystem_stun'),
    	function ()
		        target:RemoveModifierByName("modifier_stunsystem_stun")
                dummy:RemoveSelf()
	    	    return nil
		end,stuntime)
    end