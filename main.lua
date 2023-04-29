--up down game example be like:

--setting
local maxrandom = 10000
local jikgivalue = maxrandom/2 -- random pluse minus value per one routine
local number = 302
--table and codes
local ta = {}
local randomjikgita = {jikgivalue}

local randomnumberguess = math.random(1,maxrandom)
local try = 0

local uptable = {maxrandom}
local downtable = {0}

print(number)
while true do
    try=try+1
    if number > randomnumberguess then
        table.insert(downtable,randomnumberguess)
        if math.min(table.unpack(uptable)) < randomnumberguess + jikgivalue then
            --print("gate1")
            randomnumberguess = randomnumberguess + math.random(1,math.min(table.unpack(uptable)) - randomnumberguess)
        else
            --print("gate2")
            randomnumberguess = randomnumberguess + math.random(1,jikgivalue)
        end
    elseif number < randomnumberguess then
        table.insert(uptable,randomnumberguess)
        if math.max(table.unpack(downtable)) > randomnumberguess - jikgivalue then
            --print("gate3")
            randomnumberguess = randomnumberguess - math.random(1,randomnumberguess - math.max(table.unpack(downtable)))
        else
            --print("gate4")
            randomnumberguess = randomnumberguess - math.random(1,jikgivalue)
        end
    else
        print("try : " .. try .. ", randomnumberguess : " .. randomnumberguess)
        break
    end
    if randomnumberguess > math.min(table.unpack(uptable)) then
        randomnumberguess = math.min(table.unpack(uptable))
    elseif randomnumberguess < math.max(table.unpack(downtable)) then
        randomnumberguess = math.max(table.unpack(downtable))
    end
    print(math.min(table.unpack(uptable)) .. "HTL" .. math.max(table.unpack(downtable)) .. " | CV : " .. randomnumberguess)
end
table.insert(ta,i,try)
print("check the result!")
