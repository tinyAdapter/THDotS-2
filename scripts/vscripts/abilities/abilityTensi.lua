if AbilityTensi == nil then
	AbilityTensi = class({})
end

function OnTensi02SpellStart(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	if(caster:GetContext("ability_tensi_02_reset")==nil)then
		caster:SetContextNum("ability_tensi_02_reset",TRUE,0)
	end
	if(caster:GetContext("ability_tensi_02_reset")==TRUE)then
		caster:SetContextNum("ability_tensi_02_reset",FALSE,0)
		local resetTime = keys.AbilityMulti/(caster:GetPrimaryStatValue())
		Timer.Wait 'ability_tensi_02_reset_timer' (resetTime,
			function()
				caster:SetContextNum("ability_tensi_02_reset",TRUE,0)
			end
		)
	else
		return
	end
	local vecCaster = caster:GetOrigin()
	local targets = keys.target_entities
	for _,v in pairs(targets) do
		local damage_table = {
			    victim = v,
			    attacker = caster,
			    damage = keys.BounsDamage,
			    damage_type = keys.ability:GetAbilityDamageType(), 
	    	    damage_flags = 0
		}
		UnitDamageTarget(damage_table)
		UtilStun:UnitStunTarget(caster,v,keys.Duration)		            
	end

	local effectIndex = ParticleManager:CreateParticle("particles/econ/items/earthshaker/egteam_set/hero_earthshaker_egset/earthshaker_echoslam_start_fallback_low_egset.vpcf", PATTACH_CUSTOMORIGIN, caster)
	ParticleManager:SetParticleControl(effectIndex, 0, targets[1]:GetOrigin())
	ParticleManager:SetParticleControl(effectIndex, 1, targets[1]:GetOrigin())
	ParticleManager:ReleaseParticleIndex(effectIndex)
	targets[1]:EmitSound("Hero_EarthShaker.Totem.Attack")
	
end

function OnTensi03SpellStart(keys)
	print("[AbilityTensi03]start")
	local caster = EntIndexToHScript(keys.caster_entindex)
	caster:SetHealth(caster:GetHealth()+keys.BounsHealth)
	caster:SetMana(caster:GetMana()+keys.BounsMana)
end