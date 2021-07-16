-- this delegates the existence and further control and customization of all gameplay elements
-- decided to put this into its own folder for organization related reasons 
local customizationEnabled = false
local practiceEnabled = false
local replayEnabled = false


local t = Def.ActorFrame {Name = "CustomGameplayElementLoader"}


t[#t+1] = LoadActor("_gameplayelements")

if practiceEnabled then
    t[#t+1] = LoadActor("_gameplaypractice")
end

if replayEnabled then
    t[#t+1] = LoadActor("_gameplayreplay")
end

if customizationEnabled then
    t[#t+1] = LoadActor("_gameplaycustomization")
end

return t