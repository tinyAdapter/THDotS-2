if AbilityYoumu == nil then
	AbilityYoumu = class({})
end

function OnYoumu01SpellStart(keys)
	AbilityYoumu:OnYoumu01Start(keys)
end

function OnYoumu01SpellMove(keys)
	AbilityYoumu:OnYoumu01Move(keys)
end

function OnYoumu02SpellStart(keys)
	AbilityYoumu:OnYoumu02Start(keys)
end

function OnYoumu03SpellStart(keys)
	AbilityYoumu:OnYoumu03Start(keys)
end

function OnYoumu03SpellOrderMoved(keys)
	AbilityYoumu:OnYoumu03OrderMoved(keys)
end

function OnYoumu03SpellOrderAttack(keys)
	AbilityYoumu:OnYoumu03OrderAttack(keys)
end

--[[function OnYoumu04SpellThink(keys)
	AbilityYoumu:OnYoumu04Think(keys)
end]]--

function AbilityYoumu:OnYoumu01Start(keys)
	print("[AbilityYoumu01]Start")
	local caster = EntIndexToHScript(keys.caster_entindex)
	local targetPoint = keys.target_points[1]
	local Youmu01rad = GetRadBetweenTwoVec2D(caster:GetOrigin(),targetPoint)
	local Youmu01MoveSpeed = GetDistanceBetweenTwoVec2D(caster:GetOrigin(),targetPoint)/2
	caster:SetContextNum("ability_Youmu01_Rad",Youmu01rad,0)
	caster:SetContextNum("ability_Youmu01_Move_Speed",Youmu01MoveSpeed,0)
	caster:SetContextNum("ability_Youmu01_Count",0,0)
end

function AbilityYoumu:OnYoumu01Move(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local vecCaster = caster:GetOrigin()
	local targets = keys.target_entities
	local count = caster:GetContext("ability_Youmu01_Count")
	count = count + 0.2
	if(count == 0.2)then
	    -- 循坏各个目标单位
		for _,v in pairs(targets) do
				local damage_table = {
					victim = v,
					attacker = caster,
					damage = keys.ability:GetAbilityDamage(),
					damage_type = keys.ability:GetAbilityDamageType(), 
					damage_flags = 0
				}
				UnitDamageTarget(damage_table)
		end
		caster:SetContextNum("ability_Youmu01_Count",0,0)
	end
	local Youmu01rad = caster:GetContext("ability_Youmu01_Rad")
	local Youmu01MoveSpeed = caster:GetContext("ability_Youmu01_Move_Speed")
	local vec = Vector(vecCaster.x+math.cos(Youmu01rad)*Youmu01MoveSpeed,vecCaster.y+math.sin(Youmu01rad)*Youmu01MoveSpeed,vecCaster.z)
	caster:SetOrigin(vec)
end

function AbilityYoumu:OnYoumu02Start(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local target = keys.target
	if(target:GetContext("ability_Youmu02_Armor_Decrease")==nil)then
		target:SetContextNum("ability_Youmu02_Armor_Decrease",0,0)
	end
	local decreaseArmor = target:GetContext("ability_Youmu02_Armor_Decrease")
	decreaseArmor = decreaseArmor + keys.DecreaseArmor
	if(decreaseArmor<keys.DecreaseMaxArmor)then
		target:SetContextNum("ability_Youmu02_Armor_Decrease",decreaseArmor,0)
		target:SetPhysicalArmorBaseValue(keys.target:GetPhysicalArmorBaseValue() - keys.DecreaseArmor)
		target:SetThink(
			function()
				target:SetPhysicalArmorBaseValue(keys.target:GetPhysicalArmorBaseValue() + keys.DecreaseArmor)	
				local decreaseArmorNow = target:GetContext("ability_Youmu02_Armor_Decrease") + keys.DecreaseArmor
				target:SetContextNum("ability_Youmu02_Armor_Decrease",decreaseArmorNow,0)	
			end, 
			DoUniqueString("ability_Youmu02_Armor_Decrease_Duration"), 
			keys.Duration
			)	
	end
end

function AbilityYoumu:OnYoumu03Start(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local unit = CreateUnitByName(
		"npc_thdots_unit_youmu03_unit"
		,caster:GetOrigin()
		,false
		,caster
		,caster
		,caster:GetTeam()
	)
	caster:SetContextNum("Youmu03_Effect_Unit" , unit:GetEntityIndex(), 0)
	local bounsDamage = caster:GetAttackDamage()*keys.BounsDamage
	unit:SetBaseDamageMax(bounsDamage+1)
	unit:SetBaseDamageMin(bounsDamage-1)
	GameRules:GetGameModeEntity():SetThink(
			function()
			    caster:RemoveModifierByName("modifier_thdots_youmu03_spawn")
				unit:RemoveSelf()
			end, 
			DoUniqueString("ability_Youmu03_Unit_Duration"), 
			keys.Duration
			)	
end

function AbilityYoumu:OnYoumu03OrderMoved(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local unitIndex = caster:GetContext("Youmu03_Effect_Unit")
	local unit = EntIndexToHScript(unitIndex)
	unit:MoveToPosition(caster:GetOrigin())
end

function AbilityYoumu:OnYoumu03OrderAttack(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local target = keys.target
	local unitIndex = caster:GetContext("Youmu03_Effect_Unit")
	local unit = EntIndexToHScript(unitIndex)
	unit:MoveToTargetToAttack(target)
end