-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--[[ 

]]
--[[
local colors = {

    SchemeColor = Color3.fromRGB(150, 72, 148),

	Background = Color3.fromRGB(15,15,15),
	
    Header = Color3.fromRGB(15,15,15),

    TextColor = Color3.fromRGB(255,255,255),

    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]

local Window = Library.CreateLib("ЕБКД", "RJTheme3")


local ff = Window:NewTab("Player")

local Tab = Window:NewTab("Gun")


local Section = ff:NewSection("Info")

Section:NewButton("Пополнить здоровье", "Восстанавливает хп", function()
game:GetService("Workspace").RNiceShot_Demonzer.Humanoid.Health = 100

end)

Section:NewSlider("WalkSpeed", "max 500", 500, 0, function(s)
    game:GetService("Workspace").RNiceShot_Demonzer.Humanoid.WalkSpeed = s
   
end)

local Section = Tab:NewSection("Damage")

Section:NewButton("Create", "x20", function()
    gun=require(game:GetService("Players").RNiceShot_Demonzer.Backpack["Warsport LVOA-S"]["ACS_Modulo"].Variaveis.Settings)
gun.Bullets = 20

end)
