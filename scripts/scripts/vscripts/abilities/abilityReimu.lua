-- Reimu01
-- init Ball parameters

REIMU01_GRAVITY = 10

REIMU02_FOLLOW_RADIUS = 650
REIMU02_DAMAGE_RADIUS = 50
REIMU02_LIGHTSPEED = 70

if AbilityReimu == nil then
	AbilityReimu = class({})
end

function OnReimu01SpellStart(keys)
	AbilityReimu:OnReimu01Start(keys)
end

function OnReimu01ReleaseBall(keys)
	AbilityReimu:OnReimu01Release(keys)
end

function OnReimu02SpellStart(keys)
	AbilityReimu:OnReimu02Start(keys)
end

function OnReimu02OnLightStart(keys)
	AbilityReimu:OnReimu02OnLight(keys)
end

function OnReimu03SpellStart(keys)
	AbilityReimu:OnReimu03Start(keys)
end

function OnReimu04SpellStart(keys)
	AbilityReimu:OnReimu04Start(keys)
end

function OnReimu04SpellThink(keys)
	AbilityReimu:OnReimu04Think(keys)
end


-- 初始化灵梦的阴阳玉和物理常量
--    t=运动时间
--    g=重力加速度
--    v=当前速度
function AbilityReimu:initBallData()
	self.tReimu01Elements = {}
	for i = 0,9 do
		self.tReimu01Elements[i] = {
			Ball = {unit = nil , paIndex = nil , t = 0, g = REIMU01_GRAVITY, v = 0},
			Target = nil,
			Decrease = 0,
			OriginZ = 0,
		}
	end
	print("[AbilityReimu01] Finish init Ball data")
end

function AbilityReimu:OnReimu01Start(keys)
	-- 初始化常量
	self:initBallData()
	
	PrintTable(self.tReimu01Elements[i])
	
	-- 基础数据获取
	local targetPoint = keys.target_points[1]
	local caster = EntIndexToHScript(keys.caster_entindex)
	local nPlayerID = keys.unit:GetPlayerID()
	
	-- 如果球存在则return
	if self.tReimu01Elements[nPlayerID].Ball.unit ~= nil then 
		print("[AbilityReimu01] Ball.unit~=nil!") 
		return 
	end
	
	-- 创建球特效
	local unit = CreateUnitByName(
		"npc_dota2x_unit_reimu01_ball"
		,caster:GetOrigin()
		,false
		,caster
		,caster
		,caster:GetTeam()
		)
	
	--获取地面Z轴坐标
	self.tReimu01Elements[nPlayerID].OriginZ = GetGroundPosition(targetPoint,nil).z
	if unit then
		print("[AbilityReimu01]Create ball succeed!")
		self.tReimu01Elements[nPlayerID].Ball.unit = unit
		local diffVec = targetPoint - caster:GetOrigin()
		--unit:SetForwardVector(diffVec:Normalized())
		local vec3 = Vector(targetPoint.x,targetPoint.y,self.tReimu01Elements[nPlayerID].OriginZ+300)
		unit:SetOrigin(vec3)
	end
end

function AbilityReimu:OnReimu01Release( keys )
	print("[AbilityReimu01]Enter OnReimu01Release")
	local caster = EntIndexToHScript(keys.caster_entindex)
	local nPlayerID = caster:GetPlayerID()
	local uHead = self.tReimu01Elements[nPlayerID].Ball.unit
	if( uHead == nil )then
		return
	end
	local headOrigin = uHead:GetOrigin()
	
	self.tReimu01Elements[nPlayerID].Ball.t = self.tReimu01Elements[nPlayerID].Ball.t + 0.1
	local ut = self.tReimu01Elements[nPlayerID].Ball.t
	local ug = self.tReimu01Elements[nPlayerID].Ball.g
	self.tReimu01Elements[nPlayerID].Ball.v = self.tReimu01Elements[nPlayerID].Ball.v + ug
	local uv = self.tReimu01Elements[nPlayerID].Ball.v
	local uz = headOrigin.z - uv
	local vec = Vector(headOrigin.x,headOrigin.y,uz)
	local locability = keys.ability
	local abilitylevel = locability:GetLevel()
	
	uHead:SetOrigin(vec)
	print("[AbilityReimu01]z="..tostring(vec.z))
	if uz <= self.tReimu01Elements[nPlayerID].OriginZ+80 then
		self.tReimu01Elements[nPlayerID].Ball.v = self.tReimu01Elements[nPlayerID].Ball.v / math.sqrt(1.5) * -1
		vec = Vector(headOrigin.x,headOrigin.y,self.tReimu01Elements[nPlayerID].OriginZ+80.1)
		uHead:SetOrigin(vec)
		local DamageTargets = FindUnitsInRadius(
		   caster:GetTeam(),		--caster team
		   uHead:GetOrigin(),		--find position
		   nil,					--find entity
		   keys.Radius,		--find radius
		   DOTA_UNIT_TARGET_TEAM_ENEMY,
		   keys.ability:GetAbilityTargetType(),
		   0, FIND_CLOSEST,
		   false
	    )
		local decrease = self.tReimu01Elements[nPlayerID].Decrease
		for _,v in pairs(DamageTargets) do
		   local DamageTable = {
	                victim = v, 
	                attacker = caster, 
	                damage = keys.ability:GetAbilityDamage() * (1-decrease), 
	                damage_type = keys.ability:GetAbilityDamageType(), 
	                damage_flags = 1
           }
		   PrintTable(DamageTable)
		   UnitDamageTarget(DamageTable)
		   UtilStun:UnitStunTarget(caster,v,keys.StunDuration)
		   print("[AbilityReimu01]Damagetargets")
		end
		self.tReimu01Elements[nPlayerID].Decrease = self.tReimu01Elements[nPlayerID].Decrease + keys.DamageDecrease
		print("[AbilityReimu01]Z=0:uv="..tostring(uv))
	end
	
	if ut >= 2.6 then
		self.tReimu01Elements[nPlayerID].Ball.g = REIMU01_GRAVITY
		self.tReimu01Elements[nPlayerID].Ball.t = 0
		self.tReimu01Elements[nPlayerID].Ball.v = 0
		self.tReimu01Elements[nPlayerID].Decrease = 0
		self.tReimu01Elements[nPlayerID].Ball.OriginZ = 0
		uHead:RemoveSelf()
		
		self.tReimu01Elements[nPlayerID].Ball.unit = nil
		PrintTable(self.tReimu01Elements[nPlayerID])
		print("[AbilityReimu01]End")
	end
end
-- Reimu01End

-- Reimu02
function AbilityReimu:initLightData(level)
	print("init Light data in")
	self.tReimu02Light = self.tReimu02Light or {}
	zincrease = REIMU02_LIGHTSPEED
	for i = 0,level+4 do
		self.tReimu02Light[i] = {
			Ball = {unit = nil , t = 0 },
			Target = nil,
		}
	end
	print("init Light data out")
end

function AbilityReimu:OnReimu02Start(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local vec0 = caster:GetOrigin()
	local ability = keys.ability
	local abilitylevel = ability:GetLevel()
	
	PrintTable(keys)
	
	AbilityReimu:initLightData(abilitylevel)

	for i = 0,abilitylevel+4 do
		local veccre = Vector(vec0.x + math.cos(0.628 * i) * 60 ,vec0.y + math.sin(0.628 * i) * 60 ,300)
		self.tReimu02Light[i].Ball.unit = CreateUnitByName(
			"npc_dota2x_unit_reimu02_light"
			,vec0
			,false
			,caster
			,caster
			,caster:GetTeam()
		)
		
		
		if self.tReimu02Light[i].Ball.unit then
			print("create unit["..i.."] suceess")
			self.tReimu02Light[i].Ball.unit:SetOrigin(veccre)
			print("end spell start")
		else
		    self.tReimu02Light[i].Ball.unit = nil 
		    print("create unit["..i.."] error")
		end
	end
end

function AbilityReimu:OnReimu02OnLight (keys)
	local i = 0
	local caster = EntIndexToHScript(keys.caster_entindex)
	local level = keys.ability:GetLevel()
	self.tReimu02Light[i].Ball.t = self.tReimu02Light[i].Ball.t + 0.1
	
	if (self.tReimu02Light[i].Ball.t >= 2.9) then
		for i = 0,level+4 do
			if(self.tReimu02Light[i].Ball.unit ~= nil)then
		        self.tReimu02Light[i].Ball.unit:RemoveSelf()
		        self.tReimu02Light[i].Ball.unit = nil
			end
		end
		return
	end
	--上下跳动
	for i = 0,level+4 do
		if (self.tReimu02Light[i].Ball.unit ~= nil) then
		
		    local vec = self.tReimu02Light[i].Ball.unit:GetOrigin()
		    local DamageTargets = FindUnitsInRadius(
		       caster:GetTeam(),		--caster team
		       vec,		--find position
		       nil,					--find entity
	    	   REIMU02_DAMAGE_RADIUS,		--find radius
	    	   DOTA_UNIT_TARGET_TEAM_ENEMY,
	    	   keys.ability:GetAbilityTargetType(),
	    	   0, FIND_CLOSEST,
	    	   false
	        )
		    for k,v in pairs(DamageTargets) do
			   if (v ~= nil) then
				   local DamageTable = {
	                    victim = v, 
	                    attacker = caster, 
	                    damage = keys.ability:GetAbilityDamage(), 
	                    damage_type = keys.ability:GetAbilityDamageType(), 
	                    damage_flags = 1
                   }
				   UnitDamageTarget(DamageTable)
				   self.tReimu02Light[i].Ball.unit:RemoveSelf()
				   self.tReimu02Light[i].Ball.unit = nil
		           break
			   end
		    end
			
			if (self.tReimu02Light[i].Ball.unit~= nil) then
					
			    local FollowTargets = FindUnitsInRadius(
		          caster:GetTeam(),		--caster team
		          vec,		--find position
		          nil,					--find entity
		          REIMU02_FOLLOW_RADIUS,		--find radius
		          DOTA_UNIT_TARGET_TEAM_ENEMY,
		          DOTA_UNIT_TARGET_ALL,
		          0, FIND_CLOSEST,
		          false
	            )
			
			    local FollowTarget = nil
			
		        for k,v in pairs(FollowTargets) do
				   if (v == nil) then
		             print("FollowTargets notfind")
		             self.tReimu02Light[i].Ball.unit:RemoveSelf()
				     self.tReimu02Light[i].Ball.unit = nil
		             break
			       else
				     FollowTarget = v
				     break
				   end
				end
				
				if (FollowTarget ~= nil) then
					
		            local vecenemy = FollowTarget:GetOrigin()
		
		            local radian = GetAngleBetweenTwoVec(vec,vecenemy)
		   
		            vec.x = math.cos(radian) * REIMU02_LIGHTSPEED + vec.x
		            vec.y = math.sin(radian) * REIMU02_LIGHTSPEED + vec.y
		
		            if vec.z>=300 then
			           zincrease = -(50)
		            end
		
	    	        if vec.z<=200 then
		    	       zincrease = 50
	    	        end
		
	        	    vec = Vector(vec.x,vec.y,vec.z + zincrease)
		
	        	    self.tReimu02Light[i].Ball.unit:SetOrigin(vec) 
			   end 
		   end
		end
	end
end
-- Reimu02End

function AbilityReimu:OnReimu03Start(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	if(caster:GetTeam() == keys.target:GetTeam())then
		keys.target:SetPhysicalArmorBaseValue(keys.target:GetPhysicalArmorBaseValue() + 99999)	
		GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('SetPhysicalArmor99999'),
    	function ()
	        keys.target:SetPhysicalArmorBaseValue(keys.target:GetPhysicalArmorBaseValue() - 99999)	
			keys.target:RemoveModifierByName("modifier_ability_dota2x_reimu03_effect")
	    	return nil
    	end,keys.Duration)
	else
	    UtilSilence:UnitSilenceTarget(caster,keys.target,keys.Duration)
		GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('Release Effect'),
    	function ()
			keys.target:RemoveModifierByName("modifier_ability_dota2x_reimu03_effect")
	    	return nil
    	end,keys.Duration)
	end
end

function AbilityReimu:OnReimu04Start(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local unit = CreateUnitByName(
		"npc_dummy_unit"
		,caster:GetOrigin()
		,false
		,caster
		,caster
		,caster:GetTeam()
	)
	local nEffectIndex = ParticleManager:CreateParticle("particles/econ/events/ti4/teleport_start_d_ti4.vpcf",PATTACH_CUSTOMORIGIN,unit)
	ParticleManager:SetParticleControl( nEffectIndex, 0, caster:GetOrigin())
	caster:SetContextNum("Reimu04_Effect_Unit" , unit:GetEntityIndex(), 0)
	GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('ability_reimu04_damage'),
    	function ()
		    if (unit~=nil) then
		        unit:RemoveSelf()
		    	return nil
			end
	    end,keys.Ability_Duration+0.5)
end

function AbilityReimu:OnReimu04Think(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local unitIndex = caster:GetContext("Reimu04_Effect_Unit")
	local effectUnit = EntIndexToHScript(unitIndex)
	local Targets = FindUnitsInRadius(
		       effectUnit:GetTeam(),		--caster team
		       effectUnit:GetOrigin(),		--find position
		       nil,					        --find entity
	    	   keys.Radius,		            --find radius
	    	   DOTA_UNIT_TARGET_TEAM_BOTH,
	    	   DOTA_UNIT_TARGET_ALL,
	    	   0, FIND_CLOSEST,
	    	   false
	)
	for k,v in pairs(Targets) do
		if(v:GetTeam() == caster:GetTeam())then
			if(v:GetContext("Reimu04_Effect_MAGIC_IMMUNE")~=0) then
				print("[AbilityReimu04]Buff Targets!")
			    v:SetContextNum("Reimu04_Effect_MAGIC_IMMUNE" , 1, 0)
			    UnitMagicImmune(caster,v,keys.Ability_Duration)
				GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('ability_reimu04_magic_immune'),
				function ()
				    if (v~=nil) then
		                v:SetContextNum("Reimu04_Effect_MAGIC_IMMUNE" , 0, 0)
					    return nil
				    end
		        end,keys.Ability_Duration)
			end
		else
			if(v:GetContext("Reimu04_Effect_Damage")==nil)then
				print("[AbilityReimu04]Damage Targets!")
			    v:SetContextNum("Reimu04_Effect_Damage" , 1, 0)
				v:SetContextNum("Reimu04_Effect_Damage_Count" , 4, 0)
			end
			
			if(v:GetContext("Reimu04_Effect_Damage")==1)then
				v:SetContextNum("Reimu04_Effect_Damage" , 0, 0)
				GameRules:GetGameModeEntity():SetContextThink(DoUniqueString('ability_reimu04_damage'),
    	        function ()
				    v:SetContextNum("Reimu04_Effect_Damage" , 1, 0)
					v:SetContextNum("Reimu04_Effect_Damage_Count" , 4, 0)
				end,keys.Ability_Duration)
				
				local DamageTable = {
	                victim = v, 
	                attacker = caster, 
	                damage = keys.ability:GetAbilityDamage()/4, 
	                damage_type = keys.ability:GetAbilityDamageType(), 
	                damage_flags = 1
                }
			    UnitDamageTarget(DamageTable)
				UtilStun:UnitStunTarget(caster,v,keys.Stun_Duration)
				Timer.Loop 'ability_reimu04_damage' (0.4, keys.Damage_Count-1,
			    function(i)
		            local DamageTable = {
	                    victim = v, 
	                    attacker = caster, 
	                    damage = keys.ability:GetAbilityDamage()/4, 
	                    damage_type = keys.ability:GetAbilityDamageType(), 
	                    damage_flags = 1
                    }
			        UnitDamageTarget(DamageTable)
				    UtilStun:UnitStunTarget(caster,v,keys.Stun_Duration)
					local count = v:GetContext("Reimu04_Effect_Damage_Count")
					count = count - 1
					if (count<=0) then
						v:SetContextNum("Reimu04_Effect_Damage_Count" , 0, 0)
						print(tostring(count))
						return nil
					else
					    if(v~=nil)then
							print(tostring(count))
							v:SetContextNum("Reimu04_Effect_Damage_Count" , count, 0)
						end
					end
			    end
		        )
			end
		end
	end
end

function distance(a, b)
    local xx = (a.x-b.x)
    local yy = (a.y-b.y)
    return math.sqrt(xx*xx + yy*yy)
end

function GetAngleBetweenTwoVec(a,b)
	local y = b.y - a.y
	local x = b.x - a.x
	return math.atan2(y,x)
end

function PrintTable(t, indent, done)
	--print ( string.format ('PrintTable type %s', type(keys)) )
    if type(t) ~= "table" then return end

    done = done or {}
    done[t] = true
    indent = indent or 0

    local l = {}
    for k, v in pairs(t) do
        table.insert(l, k)
    end

    table.sort(l)
    for k, v in ipairs(l) do
        -- Ignore FDesc
        if v ~= 'FDesc' then
            local value = t[v]

            if type(value) == "table" and not done[value] then
                done [value] = true
                print(string.rep ("\t", indent)..tostring(v)..":")
                PrintTable (value, indent + 2, done)
            elseif type(value) == "userdata" and not done[value] then
                done [value] = true
                print(string.rep ("\t", indent)..tostring(v)..": "..tostring(value))
                PrintTable ((getmetatable(value) and getmetatable(value).__index) or getmetatable(value), indent + 2, done)
            else
                if t.FDesc and t.FDesc[v] then
                    print(string.rep ("\t", indent)..tostring(t.FDesc[v]))
                else
                    print(string.rep ("\t", indent)..tostring(v)..": "..tostring(value))
                end
            end
        end
    end
end