-- Reimu01
-- init Ball parameters

REIMU01_GRAVITY = 0.10
REIMU01_RADIUS = 350

REIMU02_FOLLOW_RADIUS = 1000
REIMU02_DAMAGE_RADIUS = 50
REIMU02_LIGHTSPEED = 3

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

if AbilityReimu == nil then
  print ( '[DOTA2X] creating AbilityReimu' )
  AbilityReimu = {}
  AbilityReimu.szEntityClassName = "AbilityReimu"
  AbilityReimu.szNativeClassName = "dota_ability_reimu_class"
  AbilityReimu.__index = AbilityReimu
end

function AbilityReimu.new( orm )
  print ( '[DOTA2X] AbilityReimu:new' )
  orm = orm or {}
  setmetatable( orm, AbilityReimu )
  return orm
end

function AbilityReimu:initBallData()
	self.tReimu01Elements = {}
	for i = 0,9 do
		self.tReimu01Elements[i] = {
			Head = {unit = nil , paIndex = nil , t = 0, g = REIMU01_GRAVITY, v = 0},
			Target = nil,
		}
	end
	print("[dota2x] finish init Ball data")
end

function AbilityReimu:InitBallParameters(nPlayerID)
	--init Ball parameters
	self.tReimu01Elements[nPlayerID].Target = nil
end

function AbilityReimu:OnReimu01Start(keys)
	AbilityReimu:initBallData()
	local targetPoint = keys.target_points[1]
	local caster = EntIndexToHScript(keys.caster_entindex)
	local nPlayerID = keys.unit:GetPlayerID()
	print("player "..nPlayerID.." start A Ball")
	print(keys.caster_entindex)
	-- if there is already a Ball, return
	if self.tReimu01Elements[nPlayerID].Head.unit ~= nil then return end
	AbilityReimu:InitBallParameters(nPlayerID)
	-- create the Ball
	local unit = CreateUnitByName(
		"npc_dota2x_unit_reimu01_ball"
		,caster:GetOrigin()
		,false
		,caster
		,caster
		,caster:GetTeam()
		)
	if unit then
		print("end spell start")
		self.tReimu01Elements[nPlayerID].Head.unit = unit
		local diffVec = targetPoint - caster:GetOrigin()
		unit:SetForwardVector(diffVec:Normalized())
		local vec3 = Vector(targetPoint.x,targetPoint.y,300)
		unit:SetOrigin(vec3)
	end
end

function AbilityReimu:On02ReleaseBullet(keys)
end

function AbilityReimu:OnReimu01Release( keys )
	print("enter release")
	local caster = EntIndexToHScript(keys.caster_entindex)
	local nPlayerID = caster:GetPlayerID()
	local uHead = self.tReimu01Elements[nPlayerID].Head.unit
	local headOrigin = uHead:GetOrigin()
	print("origin get")
	self.tReimu01Elements[nPlayerID].Head.t = self.tReimu01Elements[nPlayerID].Head.t + 0.01
	local ut = self.tReimu01Elements[nPlayerID].Head.t
	local ug = self.tReimu01Elements[nPlayerID].Head.g
	self.tReimu01Elements[nPlayerID].Head.v = self.tReimu01Elements[nPlayerID].Head.v + ug
	local uv = self.tReimu01Elements[nPlayerID].Head.v
	local uz = headOrigin.z - uv
	local vec = Vector(headOrigin.x,headOrigin.y,uz)
	local locability = keys.ability
	local abilitylevel = locability:GetLevel()
	print("abilitylevel="..tostring(abilitylevel))
	
	uHead:SetOrigin(vec)
	print("ut="..tostring(ut))
	print("uz="..tostring(uz))
	if uz <= 80 then
		self.tReimu01Elements[nPlayerID].Head.v = self.tReimu01Elements[nPlayerID].Head.v / math.sqrt(1.5) * -1
		vec = Vector(headOrigin.x,headOrigin.y,80.1)
		uHead:SetOrigin(vec)
		local DamageTargets = FindUnitsInRadius(
		   caster:GetTeam(),		--caster team
		   uHead:GetOrigin(),		--find position
		   nil,					--find entity
		   REIMU01_RADIUS,		--find radius
		   DOTA_UNIT_TARGET_TEAM_ENEMY,
		   DOTA_UNIT_TARGET_ALL,
		   0, FIND_CLOSEST,
		   false
	    )
		for k,v in pairs(DamageTargets) do
		   UnitDamageTarget(caster,v,"ability_reimu01_damage",abilitylevel)
		   UnitStunTarget(caster,v,1)
		   print("damagetargets")
		end
		print("Z=0:uv="..tostring(uv))
	end
	
	if ut >= 2.59 then
		self.tReimu01Elements[nPlayerID].Head.g = REIMU01_GRAVITY
		self.tReimu01Elements[nPlayerID].Head.t = 0
		self.tReimu01Elements[nPlayerID].Head.v = 0
		uHead:Remove()
		self.tReimu01Elements[nPlayerID].Head.unit = nil
		print("end")
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
			Head = {unit = nil , t = 0 },
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
	vecz = vecz or {}
	Reimu02ztemp = Reimu02ztemp or {}
	
	PrintTable(keys)
	
	AbilityReimu:initLightData(abilitylevel)

	for i = 0,abilitylevel+4 do
		local veccre = Vector(vec0.x + math.cos(0.628 * i) * 60 ,vec0.y + math.sin(0.628 * i) * 60 ,-100)
		self.tReimu02Light[i].Head.unit = CreateUnitByName(
			"npc_dota2x_unit_reimu02_light"
			,vec0
			,false
			,caster
			,caster
			,caster:GetTeam()
		)
		
		Reimu02ztemp[i] = RandomInt(10,90)
		
		if self.tReimu02Light[i].Head.unit then
			print("create unit["..i.."] suceess")
			self.tReimu02Light[i].Head.unit:SetOrigin(veccre)
			print("end spell start")
		else
		    self.tReimu02Light[i].Head.unit = nil 
		    print("create unit["..i.."] error")
		end
	end
end

function AbilityReimu:OnReimu02OnLight (keys)
	local i = 0
	local caster = EntIndexToHScript(keys.caster_entindex)
	local level = keys.ability:GetLevel()
	self.tReimu02Light[i].Head.t = self.tReimu02Light[i].Head.t + 0.01
	
	if (self.tReimu02Light[i].Head.t > 4.99) then
		for i = 0,level+4 do
		    self.tReimu02Light[i].Head.unit:Remove()
		    self.tReimu02Light[i].Head.unit = nil
		end
		return
	end
	--ÉÏÏÂÌø¶¯
	for i = 0,level+4 do		
		if (self.tReimu02Light[i].Head.unit ~= nil) then
		
			vecz[i] = self.tReimu02Light[i].Head.unit:GetOrigin()
		
			if Reimu02ztemp[i] > 100 then
				Reimu02ztemp[i] = 0
			end
			
			vecz[i].z = (-0.08 * Reimu02ztemp[i] * Reimu02ztemp[i]) + (8 * Reimu02ztemp[i])
			self.tReimu02Light[i].Head.unit:SetOrigin(vecz[i])
		
			Reimu02ztemp[i] = Reimu02ztemp[i] + 1
			
			
		    local vec = self.tReimu02Light[i].Head.unit:GetOrigin()
		    local DamageTargets = FindUnitsInRadius(
		       caster:GetTeam(),		--caster team
		       vec,		--find position
		       nil,					--find entity
	    	   REIMU02_DAMAGE_RADIUS,		--find radius
	    	   DOTA_UNIT_TARGET_TEAM_ENEMY,
	    	   DOTA_UNIT_TARGET_ALL,
	    	   0, FIND_CLOSEST,
	    	   false
	        )
		    for k,v in pairs(DamageTargets) do
			   if (v ~= nil) then
				   UnitDamageTarget(caster,v,"ability_reimu02_damage",level)
				   self.tReimu02Light[i].Head.unit:Remove()
				   self.tReimu02Light[i].Head.unit = nil
		           break
			   end
		    end
			
			if (self.tReimu02Light[i].Head.unit~= nil) then
					
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
		             self.tReimu02Light[i].Head.unit:Remove()
				     self.tReimu02Light[i].Head.unit = nil
		             break
			       else
				     FollowTarget = v
				     break
				   end
				end
				
				if (FollowTarget ~= nil) then
					
		            local vecenemy = FollowTarget:GetOrigin()
		
		            local radian = GetAngleBetweenTwoVec(vec,vecenemy)
		   
		            vec.x = math.cos(radian) * 3 + vec.x
		            vec.y = math.sin(radian) * 3 + vec.y
		
		            if vec.z>=300 then
			           zincrease = -(REIMU02_LIGHTSPEED)
		            end
		
	    	        if vec.z<=200 then
		    	       zincrease = REIMU02_LIGHTSPEED
	    	        end
		
	        	    vec = Vector(vec.x,vec.y,vec.z + zincrease)
		
	        	    self.tReimu02Light[i].Head.unit:SetOrigin(vec) 
			   end 
		   end
		end
	end
end

-- Reimu02End



function UnitDamageTarget(caster,target,skill,level)
	local dummy = CreateUnitByName("npc_dummy_unit", 
		target:GetAbsOrigin(), false, caster, caster, caster:GetTeamNumber())
	dummy:SetOwner(caster)
	--if dummy then print("unit created") end
	dummy:AddAbility(skill)
	local DAMAGE_TARGET = dummy:FindAbilityByName(skill)
	DAMAGE_TARGET:SetLevel(level)
	dummy:CastAbilityOnTarget(target, DAMAGE_TARGET, 0 )
	dummy:Destroy()
end

function UnitStunTarget( caster,target,stuntime)
	local dummy = CreateUnitByName("npc_dummy_unit", 
		target:GetAbsOrigin(), false, caster, caster, caster:GetTeamNumber())
	dummy:SetOwner(caster)
	--if dummy then print("unit created") end
	dummy:AddAbility("ability_stunsystem_stun")
	local STUN_TARGET = dummy:FindAbilityByName("ability_stunsystem_stun")
	STUN_TARGET:SetLevel(stuntime)
	dummy:CastAbilityOnTarget(target, STUN_TARGET, 0 )
    dummy:Destroy()
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