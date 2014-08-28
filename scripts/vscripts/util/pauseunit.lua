
	function UnitPauseTarget( caster,target,pausetime)
		if (target == nil) then
			print("pause target nil!")
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
    	dummy:AddAbility("ability_stunsystem_pause") 
		--寻找单位释放技能
    	local PAUSE_TARGET = dummy:FindAbilityByName("ability_stunsystem_pause")
		
	    dummy:CastAbilityOnTarget(target, PAUSE_TARGET, 0 )
		GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('ability_stunsystem_pause'),
    	function ()
		        target:RemoveModifierByName("modifier_stunsystem_pause")
                dummy:RemoveSelf()
	    	    return nil
		end,pausetime)
    end