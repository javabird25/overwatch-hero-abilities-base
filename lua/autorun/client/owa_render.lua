print("owa_render")

HALO_ALLY_COLOR = Color(0, 145, 255)
HALO_ENEMY_COLOR = Color(255, 0, 0)

hook.Add("PreDrawHalos", "allyHalos", function()
	--if GetConVar("owa_hud_halos_ally"):GetBool() then
		halo.Add(team.GetPlayers(LocalPlayer():Team()), HALO_ALLY_COLOR, 5, 5, 2)
	--end
end)

hook.Add("PreDrawHalos", "enemyHalos", function()
	--if GetConVar("owa_hud_halos_enemy"):GetBool() then
		local enemies = {}
		local teams = team.GetAllTeams()
		
		for _, vTeam in pairs(teams) do
			for _, vPlayer in pairs(team.GetPlayers(vTeam)) do
				table.insert(enemies, vPlayer)
			end
		end
		
		halo.Add(enemies, HALO_ENEMY_COLOR, 5, 5, 2)
	--end
end)