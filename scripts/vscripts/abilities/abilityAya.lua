if AbilityAya == nil then
	AbilityAya = class({})
end

function OnAya01SpellStart(keys)
	AbilityAya:OnAya01Start(keys)
end

function OnAya01SpellMove(keys)
	AbilityAya:OnAya01Move(keys)
end

function OnAya02SpellStart(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	if(keys.attacker~=caster)then
		return
	end
	local target = keys.target
	local damage_table = {
			    victim = target,
			    attacker = caster,
			    damage = keys.BounsDamage,
			    damage_type = keys.ability:GetAbilityDamageType(), 
	    	    damage_flags = 0
	}
	UnitDamageTarget(damage_table)
end

function OnAya03SpellStart(keys)
	AbilityAya:OnAya03Start(keys)
end

function OnAya04SpellOrderMoved(keys)
	AbilityAya:OnAya04OrderMoved(keys)
end

function OnAya04SpellOrderAttack(keys)
	AbilityAya:OnAya04OrderAttack(keys)
end



function AbilityAya:OnAya01Start(keys)
	print("[AbilityAya01]Start")
	local caster = EntIndexToHScript(keys.caster_entindex)
	local targetPoint = keys.target_points[1]
	local Aya01rad = GetRadBetweenTwoVec2D(caster:GetOrigin(),targetPoint)
	local Aya01dis = GetDistanceBetweenTwoVec2D(caster:GetOrigin(),targetPoint)
	caster:SetContextNum("ability_Aya01_Rad",Aya01rad,0)
	caster:SetContextNum("ability_Aya01_Dis",Aya01dis,0)
end

function AbilityAya:OnAya01Move(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local vecCaster = caster:GetOrigin()
	local targets = keys.target_entities
	
	-- ѭ������Ŀ�굥λ
	for _,v in pairs(targets) do
		if(v:GetContext("ability_Aya01_damage")==nil)then
			v:SetContextNum("ability_Aya01_damage",TRUE,0)
		end
		if(v:GetContext("ability_Aya01_damage")==TRUE)then
			PrintTable(keys)
			local damage_table = {
			    victim = v,
			    attacker = caster,
			    damage = keys.ability:GetAbilityDamage(),
			    damage_type = keys.ability:GetAbilityDamageType(), 
	    	    damage_flags = 0
		    }
			PrintTable(damage_table)
		    UnitDamageTarget(damage_table)
			v:SetContextNum("ability_Aya01_damage",FALSE,0)
			Timer.Wait 'ability_Aya01_damage_timer' (1.4,
			function()
				v:SetContextNum("ability_Aya01_damage",TRUE,0)
			end
	    	)
		end
	end
	local Aya01rad = caster:GetContext("ability_Aya01_Rad")
	local vec = Vector(vecCaster.x+math.cos(Aya01rad)*keys.MoveSpeed/50,vecCaster.y+math.sin(Aya01rad)*keys.MoveSpeed/50,vecCaster.z)
	caster:SetOrigin(vec)
	
	local aya01dis = caster:GetContext("ability_Aya01_Dis")
	if(aya01dis<0)then
		SetTargetToTraversable(caster)
		caster:SetContextNum("ability_Aya01_Dis",0,0)
		caster:RemoveModifierByName("modifier_thdots_aya01_think_interval")
	else
	    aya01dis = aya01dis - keys.MoveSpeed/50
	    caster:SetContextNum("ability_Aya01_Dis",aya01dis,0)
	end
end

function AbilityAya:OnAya03Start(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local vecCaster = caster:GetOrigin()
	local targets = keys.target_entities
	for _,v in pairs(targets) do
		local deal_damage = keys.ability:GetAbilityDamage() + keys.AbilityMulti * caster:GetPrimaryStatValue()
		local damage_table = {
			    victim = v,
			    attacker = caster,
			    damage = deal_damage,
			    damage_type = keys.ability:GetAbilityDamageType(), 
	    	    damage_flags = 0
		}
		UnitDamageTarget(damage_table)
	end
end

function AbilityAya:OnAya04OrderMoved(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	if(caster:GetContext("ability_Aya04_blink_lock")==FALSE)then
		return
	end
	local vecMove = caster:GetOrigin() + keys.BlinkRange * caster:GetForwardVector()
	caster:SetOrigin(vecMove)
	if(caster:GetContext("ability_Aya04_blink_lock")==TRUE or caster:GetContext("ability_Aya04_blink_lock")==nil)then
		caster:SetContextNum("ability_Aya04_blink_lock",FALSE,0)
		Timer.Wait 'ability_Aya04_blink_lock' (0.1,
			function()
				caster:SetContextNum("ability_Aya04_blink_lock",TRUE,0)
			end
	    	)
	end
end

function AbilityAya:OnAya04OrderAttack(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	if(caster:GetContext("ability_Aya04_blink_lock")==FALSE)then
		return
	end
	local vectarget = keys.target:GetOrigin()
	caster:SetOrigin(vectarget)
	if(caster:GetContext("ability_Aya04_blink_lock")==TRUE or caster:GetContext("ability_Aya04_blink_lock")==nil)then
		caster:SetContextNum("ability_Aya04_blink_lock",FALSE,0)
		Timer.Wait 'ability_Aya04_blink_lock' (0.1,
			function()
				caster:SetContextNum("ability_Aya04_blink_lock",TRUE,0)
			end
	    	)
	end
end

