local spawn_point = minetest.setting_get_pos("static_spawnpoint")

if spawn_point then
	minetest.register_privilege("spawn", "Can teleport to spawn position.")
	minetest.register_chatcommand("spawn", {
		description = "Teleport to spawn position.",
		params = "",
		privs = "spawn",
		func = function(name)
			minetest.get_player_by_name(name):setpos(spawn_point)
		end
	})
end
