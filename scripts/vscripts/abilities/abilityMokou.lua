if AbilityMokou == nil then
	AbilityMokou = class({})
end

function OnMokou01SpellStart(keys)
	print("[AbilityMokou01]Start")
	local caster = EntIndexToHScript(keys.caster_entindex)
	local targetPoint = keys.target_points[1]
	local Mokou01rad = GetRadBetweenTwoVec2D(caster:GetOrigin(),targetPoint)
	local Mokou01Distance = GetDistanceBetweenTwoVec2D(caster:GetOrigin(),targetPoint)
	caster:SetContextNum("ability_Mokou01_Rad",Mokou01rad,0)
	caster:SetContextNum("ability_Mokou01_Distance",Mokou01Distance,0)
end

function OnMokou01SpellMove(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local vecCaster = caster:GetOrigin()
	local targets = keys.target_entities

	if(caster:GetContext("ability_Mokou01_Distance")<30)then
		for _,v in pairs(targets) do
			local damage_table = {
				victim = v,
				attacker = caster,
				damage = keys.ability:GetAbilityDamage(),
				damage_type = keys.ability:GetAbilityDamageType(), 
				damage_flags = keys.ability:GetAbilityTargetFlags()
			}
			UnitDamageTarget(damage_table)
		end
		local damage_table = {
			victim = caster,
			attacker = caster,
			damage = keys.ability:GetAbilityDamage(),
			damage_type = keys.ability:GetAbilityDamageType(), 
			damage_flags = keys.ability:GetAbilityTargetFlags()
		}
		UnitDamageTarget(damage_table)
		local effectIndex = ParticleManager:CreateParticle("particles/thd2/heroes/mokou/ability_mokou_01_boom.vpcf", PATTACH_CUSTOMORIGIN, caster)
		ParticleManager:SetParticleControl(effectIndex, 0, caster:GetOrigin() + Vector(0,0,128))
		ParticleManager:ReleaseParticleIndex(effectIndex)
		caster:RemoveModifierByName("modifier_thdots_Mokou01_think_interval")
		caster:SetContextNum("ability_Mokou01_Distance",120,0)
	else
		local distance = caster:GetContext("ability_Mokou01_Distance")
		distance = distance - keys.MoveSpeed/50
		caster:SetContextNum("ability_Mokou01_Distance",distance,0)
	end
	local Mokou01rad = caster:GetContext("ability_Mokou01_Rad")
	local vec = Vector(vecCaster.x+math.cos(Mokou01rad)*keys.MoveSpeed/50,vecCaster.y+math.sin(Mokou01rad)*keys.MoveSpeed/50,GetGroundPosition(vecCaster, nil).z)
	caster:SetOrigin(vec)
end

function OnMokou02SpellStartUnit(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local target = keys.target

	if(target:GetContext("ability_Mokou02_speed_increase")==nil)then
		target:SetContextNum("ability_Mokou02_speed_increase",0,0)
	end
	local increaseSpeedCount = target:GetContext("ability_Mokou02_speed_increase")
	increaseSpeedCount = increaseSpeedCount + keys.IncreaseSpeed
	if(increaseSpeedCount>keys.IncreaseMaxSpeed)then
		target:RemoveModifierByName("modifier_mokou02_speed_up")
	else
		target:SetContextNum("ability_Mokou02_speed_increase",increaseSpeedCount,0)
		target:SetThink(
			function()
				target:RemoveModifierByName("modifier_flandre02_slow")
				local decreaseSpeedNow = target:GetContext("ability_Mokou02_speed_increase") - keys.IncreaseSpeed
				target:SetContextNum("ability_Mokou02_speed_increase",decreaseSpeedNow,0)	
			end, 
			DoUniqueString("ability_flandre02_speed_increase_duration"), 
			keys.Duration
		)	
	end
end

function OnMokou02DamageStart(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local vecCaster = caster:GetOrigin()
	local targets = keys.target_entities

	if(caster:GetContext("ability_Mokou02_damage_bouns")==nil)then
		caster:SetContextNum("ability_Mokou02_damage_bouns",0,0)
	end

	for _,v in pairs(targets) do
		local dealdamage = keys.BounsDamage + caster:GetContext("ability_Mokou02_damage_bouns")
		local damage_table = {
			    victim = v,
			    attacker = caster,
			    damage = dealdamage,
			    damage_type = keys.ability:GetAbilityDamageType(),
	    	    damage_flags = 0
		}
		UnitDamageTarget(damage_table)
	end
end

function OnMokou04SpellStart(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local dealdamage = caster:GetHealth() * keys.CostHp
	local damage_table = {
			    victim = caster,
			    attacker = caster,
			    damage = dealdamage,
			    damage_type = keys.ability:GetAbilityDamageType(),
	    	    damage_flags = 0
	}
	UnitDamageTarget(damage_table)

	caster:SetContextNum("ability_Mokou02_damage_bouns",keys.BounsDamage,0)
	Timer.Wait 'ability_Mokou02_damage_bouns_timer' (20,
		function()
			caster:SetContextNum("ability_Mokou02_damage_bouns",0,0)
		end
	)
end