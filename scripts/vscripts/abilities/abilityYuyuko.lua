if AbilityYuyuko == nil then
	AbilityYuyuko = class({})
end

function OnYuyukoExSpellStart(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local vecCaster = caster:GetOrigin() 
	local attacker = keys.attacker
	
	if(caster:GetContext("abilityyuyuko_Ex_grave")==FALSE or caster:GetContext("abilityyuyuko_Ex_grave")==nil)then
		UnitGraveTarget(caster,caster)
		caster:SetContextNum("abilityyuyuko_Ex_grave", TRUE, 0) 
	end
	if(caster:GetHealth()==1)then
		local effectIndex = ParticleManager:CreateParticle("particles/dire_fx/tower_bad_face_end_shatter.vpcf", PATTACH_CUSTOMORIGIN, caster)
		ParticleManager:SetParticleControl(effectIndex, 0, caster:GetOrigin())
		ParticleManager:ReleaseParticleIndex(effectIndex) 
		caster:SetHealth(caster:GetMaxHealth())
		UnitDisarmedTarget(caster,caster,keys.LifeDuration)
		UnitInvulnerableTarget(caster,caster,keys.LifeDuration)
		caster:SetContextThink("abilityyuyuko_Ex_grave_timer", 
			function()
				caster:RemoveModifierByName("modifier_dazzle_shallow_grave")
				caster:SetContextNum("abilityyuyuko_Ex_grave", FALSE, 0) 
				if(attacker~=nil)then
			    	caster:Kill(keys.ability,attacker)
			    else
			    	caster:Kill(keys.ability,attacker)
			    end
			end, 
			keys.LifeDuration) 
		Timer.Loop 'abilityyuyuko_Ex_unablemove_timer' (0.1, 100,
			function(i)
				if(GetDistanceBetweenTwoVec2D(caster:GetOrigin(),vecCaster)>300)then
					caster:SetOrigin(vecCaster)
				end
			end
		)
		PrintTable(keys)
	end
end

function OnYuyuko04SpellStart(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	caster:SetContextNum("ability_yuyuko_04_time_count", keys.DamageCount, 0) 
end

function OnYuyuko04SpellRemove(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
end

function OnYuyuko04SpellThink(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local targets = keys.target_entities

	local timecount = caster:GetContext("ability_yuyuko_04_time_count")
	if(timecount>=0)then
		timecount = timecount - 1
		caster:SetContextNum("ability_yuyuko_04_time_count", timecount, 0) 
		for _,v in pairs(targets) do
			if((v:GetTeam()~=caster:GetTeam()) and (v:IsInvulnerable() == false) and (v:IsTower() == false) and (v:IsAlive() == true))then
				local effectIndex = ParticleManager:CreateParticle("particles/dire_fx/tower_bad_face_end_shatter.vpcf", PATTACH_CUSTOMORIGIN, caster)
				ParticleManager:SetParticleControl(effectIndex, 0, v:GetOrigin())
				ParticleManager:ReleaseParticleIndex(effectIndex) 

				local vecV = v:GetOrigin()
				local deal_damage = (v:GetMaxHealth() - v:GetHealth())*keys.DamageMulti
				local boolDamage
				if((v:GetHealth()<=deal_damage) or (v:IsHero()==false))then
					boolDamage = true
				else
					boolDamage = false
				end

				if(v:IsHero()==false)then
					v:Kill(keys.ability,caster)
					print("killunit")
				else
					local damage_table = {
						victim = v,
						attacker = caster,
						damage = deal_damage,
						damage_type = keys.ability:GetAbilityDamageType(), 
						damage_flags = 0
					}
					UnitDamageTarget(damage_table)
				end

				if(boolDamage)then
					print("DamageUnit")
					local DamageTargets = FindUnitsInRadius(
					   caster:GetTeam(),		--caster team
					   vecV,					--find position
					   nil,						--find entity
					   keys.DamageRadius,		--find radius
					   DOTA_UNIT_TARGET_TEAM_ENEMY,
					   keys.ability:GetAbilityTargetType(),
					   0, FIND_CLOSEST,
					   false
				    )
					for _,v in pairs(DamageTargets) do
					    local damage_table_death = {
							victim = u,
							attacker = caster,
							damage = keys.ability:GetAbilityDamage(),
							damage_type = keys.ability:GetAbilityDamageType(), 
							damage_flags = 0
						}
						PrintTable(damage_table_death)
					    UnitDamageTarget(damage_table_death)
					end
				end
				return
			end
		end
	else
		caster:RemoveModifierByName("modifier_thdots_yuyuko04_think_interval") 
	end
end
