--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

--police weapons // comment out the weapons if you dont want to give weapons.
police_weapons = {}
police_weapons["Equip"] = {function(player,choice)
    local user_id = vRP.getUserId(player)	
     vRPclient.giveWeapons(player,{
	  ["WEAPON_COMBATPISTOL"] = {ammo=500},
	  ["WEAPON_PUMPSHOTGUN"] = {ammo=500},
	  ["WEAPON_PISTOL"] = {ammo=500},
	  ["WEAPON_CARBINERIFLE"] = {ammo=500},
	  ["WEAPON_NIGHTSTICK"] = {ammo=1}, 
	  ["WEAPON_STUNGUN"] = {ammo=500},
	  ["WEAPON_SPECIALCARBINE"] = {ammo=500},
	  ["WEAPON_BULLPUPRIFLE"] = {ammo=500},
	  ["WEAPON_COMBATPDW"] = {ammo=500},
	  ["WEAPON_ADVANCEDRIFLE"] = {ammo=500},
	  ["WEAPON_FLASHLIGHT"] = {ammo=1},
	  ["WEAPON_SMG"] = {ammo=500},
	  ["WEAPON_MICROSMG"] = {ammo=500},
	  ["WEAPON_STUNGUN"] = {ammo=500}  
	}, true)
	BMclient.setArmour(player,1000,true)
	vRPclient.notify(player,"Voce  pegou ~g~ seus equipamentos Policiais")
end}

emergency_medkit = {}
emergency_medkit["Take"] = {function(player,choice)
    local user_id = vRP.getUserId(player)	
     if  vRP.tryPayment(user_id,100,false)then	
     vRP.giveInventoryItem(user_id,"medkit",1,true)
	 vRP.giveInventoryItem(user_id,"pills",1,true)
	 vRPclient.notify(player,"Voce foi ~g~ recebeu equipamentos medicos")
    else 
      vRPclient.notify(player," ~r~ Voce nao tem dinheiro suficiente para o sistema do SUS de cura rapida")
    end
end}

--heal me
emergency_heal = {}
emergency_heal["Heal"] = {function(player,choice)
    local user_id = vRP.getUserId(player)	
     if  vRP.tryPayment(user_id,100,false)then	
    vRPclient.setHealth(player,1000)
	 vRPclient.notify(player,"Voce foi ~g~ curado por 100")
    else 
      vRPclient.notify(player," ~r~ Voce nao tem dinheiro suficiente para o sistema do SUS de cura rapida")
    end
end}
