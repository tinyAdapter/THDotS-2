
    if UtilSilence == nil then
	    UtilSilence = class({})
    end

    function UtilSilence:UnitSilenceTarget( caster,target,sliencetime)
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
    	dummy:AddAbility("ability_sliencesystem_Silence") 
		--寻找单位释放技能
    	local SLIENCE_TARGET = dummy:FindAbilityByName("ability_sliencesystem_Silence")
		
	    dummy:CastAbilityOnTarget(target, SLIENCE_TARGET, 0 )
		GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('ability_sliencesystem_silence'),
    	function ()
		        target:RemoveModifierByName("modifier_sliencesystem_silence")
                dummy:RemoveSelf()
	    	    return nil
		end,sliencetime)
    end