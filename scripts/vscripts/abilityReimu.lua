-- Reimu01
-- init Ball parameters
function initBallData()
	tReimu01Elements = tReimu01Elements or {}
	for i = 0,9 do
		tReimu01Elements[i] = {
			Head = {unit = nil , paIndex = nil , t = 0, g = 0.06, v = 0},
			FSkill = {unit = nil},
			Body = {},
			Target = nil,
			CurrentLength = nil
		}
	end
	print("[dota2x] finish init Ball data")
end

local function InitBallParameters(nPlayerID)
	--init Ball parameters
	tReimu01Elements[nPlayerID].Target = nil
	tReimu01Elements[nPlayerID].CurrentLength = nil
end

function OnSpellStart(keys)
	local targetPoint = keys.target_points[1]
	local caster = EntIndexToHScript(keys.caster_entindex)
	local nPlayerID = keys.unit:GetPlayerID()
	print("player "..nPlayerID.." start A Ball")
	print(keys.caster_entindex)
	-- if there is already a Ball, return
	if tReimu01Elements[nPlayerID].Head.unit ~= nil then return end
	InitBallParameters(nPlayerID)
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
		tReimu01Elements[nPlayerID].Head.unit = unit
		local diffVec = targetPoint - caster:GetOrigin()
		unit:SetForwardVector(diffVec:Normalized())
		local vec3 = Vector(targetPoint.x,targetPoint.y,300)
		unit:SetOrigin(vec3)
	end
end

function On02ReleaseBullet(keys)
end

function OnReleaseBall( keys )
	print("enter release")
	local caster = EntIndexToHScript(keys.caster_entindex)
	local nPlayerID = caster:GetPlayerID()
	local uHead = tReimu01Elements[nPlayerID].Head.unit
	local headOrigin = uHead:GetOrigin()
	print("origin get")
	tReimu01Elements[nPlayerID].Head.t = tReimu01Elements[nPlayerID].Head.t + 0.01
	local ut = tReimu01Elements[nPlayerID].Head.t
	local ug = tReimu01Elements[nPlayerID].Head.g
	tReimu01Elements[nPlayerID].Head.v = tReimu01Elements[nPlayerID].Head.v + ug
	local uv = tReimu01Elements[nPlayerID].Head.v
	local uz = headOrigin.z - uv
	local vec = Vector(headOrigin.x,headOrigin.y,uz)
	local locability = keys.ability
	local abilitylevel = locability:GetLevel()
	print("abilitylevel="..tostring(abilitylevel))
	
	uHead:SetOrigin(vec)
	print("ut="..tostring(ut))
	print("uz="..tostring(uz))
	if uz <= 0 then
		tReimu01Elements[nPlayerID].Head.v = tReimu01Elements[nPlayerID].Head.v / math.sqrt(2) * -1
		local DamageTargets = FindUnitsInRadius(
		   caster:GetTeam(),		--caster team
		   uHead:GetOrigin(),		--find position
		   nil,					--find entity
		   350,			        --find radius
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
	
	if ut >= 3.37 then
		tReimu01Elements[nPlayerID].Head.g = 0.06
		tReimu01Elements[nPlayerID].Head.t = 0
		tReimu01Elements[nPlayerID].Head.v = 0
		uHead:Remove()
		tReimu01Elements[nPlayerID].Head.unit = nil
		print("end")
	end
end
-- Reimu01End

-- Reimu02
function initLightData(keys)
	local level = keys.ability:GetLevel()
	
	tReimu02Light = tReimu02Light or {}
	for i = 0,level+4 do
		tReimu02Light[i] = {
			Head = {unit = nil , paIndex = nil , t = 0, g = 0, v = 0},
			Target = nil,
		}
	end
	print("init Light data success")
end

function OnReimu02Start(keys)
	local caster = EntIndexToHScript(keys.caster_entindex)
	local unit = unit or {}
	local vec0 = caster:GetOrigin()
	
	for i = 0,level+4 do
		unit[i] = CreateUnitByName(
			"npc_dota2x_unit_reimu01_ball"
			,caster:GetOrigin()
			,false
			,caster
			,caster
			,caster:GetTeam()
		)
		
		if unit[i] then
			print("create unit["..i.."] suceess")
			tReimu02Light[i].Head.unit = unit[i]
			local vec3 = {vec0.x,vec0.y,100}
			unit[i]:SetOrigin(vec3)
			print("end spell start")
		end
	end
end

function OnLightVar (keys)
	uHead = uHead or {}
	vec = vec or {}
	zincrease = -0.01
end

function OnLight (keys)
	local i = 0;
	local level = keys.ability:GetLevel()
	--上下跳动
	for i = 0,level+4 do
		uHead[i] = tReimu02Light[i].Head.unit --此句有错误，提示attempt to index global 'tReimu02Light' (a nil value)，但上方已有定义，目前尚不清楚原因
		vec[i] = uHead[i]:GetOrigin()
		
		if vec[i].z>=200 then
			zincrease = -0.01
		end
		
		if vec[i].z<=0 then
			zincrease = 0.01
		end
		
		vec[i].z = vec[i].z + zincrease
	end
	----
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