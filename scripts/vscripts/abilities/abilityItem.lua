DonationGem_TriggerTime={}
for i=0,32 do
	DonationGem_TriggerTime[i]=0.0
end

function ItemAbility_Camera_OnAttack(keys)
	local ItemAbility = keys.ability
	local damage_to_deal =keys.target:GetMaxHealth()*keys.DamgeHealthPercent
	local damage_table = {
		victim = keys.target,
		attacker = keys.caster,
		damage = damage_to_deal,
		damage_type = DAMAGE_TYPE_MAGICAL,
		damage_flags = 1
	}
	--PrintTable(damage_table)
	print("ItemAbility_Camera_OnAttack| Damage:"..damage_to_deal)
	ApplyDamage(damage_table)
end

function ItemAbility_mushroom_kebab_OnSpellStart(keys)
	local ItemAbility = keys.ability
	local caster = keys.caster
	caster:SetBaseStrength(caster:GetBaseStrength() + keys.IncreaseStrength)
end

function ItemAbility_mushroom_pie_OnSpellStart(keys)
	local ItemAbility = keys.ability
	local caster = keys.caster
	caster:SetBaseAgility(caster:GetBaseAgility() + keys.IncreaseAgilit)
end

function ItemAbility_mushroom_soup_OnSpellStart(keys)
	local ItemAbility = keys.ability
	local caster = keys.caster
	caster:SetBaseIntellect(caster:GetBaseIntellect() + keys.IncreaseIntellect)
end

function ItemAbility_DonationBox_OnSpellStart(keys)
	local ItemAbility = keys.ability
	local Caster = keys.caster
	local Target = keys.target
	Target:Kill()
	local CasterPlayerID = Caster:GetPlayerOwnerID()
	PlayerResource:SetGold(CasterPlayerID,PlayerResource:GetGold(CasterPlayerID) + keys.BonusGold,false)
end

function ItemAbility_DonationGem_OnAttack(keys)
	local ItemAbility = keys.ability
	local Caster = keys.caster
	local Target = keys.target
	local CasterPlayerID = Caster:GetPlayerOwnerID()
	local GameTime=GameRules:GetGameTime()
	if ( Target:IsAlive()==false and GameTime-DonationGem_TriggerTime[CasterPlayerID]>=1.0) then
		DonationGem_TriggerTime[CasterPlayerID]=GameTime
		PlayerResource:SetGold(CasterPlayerID,PlayerResource:GetGold(CasterPlayerID) + keys.BonusGold,false)
	end
end

function ItemAbility_9ball_OnSpellStart(keys)
	local ItemAbility = keys.ability
	local Caster = keys.caster
	local vecCaster = caster:GetOrigin()
	local radian = RandomFloat(0,6.28)
	local range = RandomFloat(BlinkRangeMin,BlinkRangeMax)
	Caster:SetOrigin(vecCaster.x+math.cos(radian)*range,vecCaster.y+math.sin(radian)*range,vecCaster.z)
end

function PrintKeys(keys)
	PrintTable(keys)
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