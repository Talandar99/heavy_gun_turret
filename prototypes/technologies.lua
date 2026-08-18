data:extend({
	{
		type = "technology",
		name = "heavy-gun-turret",
		icon = "__heavy_gun_turret__/graphics/heavy-gun-turret-technology.png",
		icon_size = 305,
		effects = {
			{ type = "unlock-recipe", recipe = "steel-gear-wheel" },
			{ type = "unlock-recipe", recipe = "heavy-gun-turret" },
		},
		prerequisites = { "metallurgic-science-pack", "gun-turret", "space-science-pack", "military-3" },
		unit = {
			count_formula = "1000",
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "military-science-pack", 1 },
			},
			time = 60,
		},
	},
})

-- add heavy-gun-turret to dmg researches
local function add_heavy_turret_bonus(tech_name, modifier)
	local tech = data.raw.technology[tech_name]
	if tech and tech.effects then
		table.insert(tech.effects, {
			type = "turret-attack",
			turret_id = "heavy-gun-turret",
			modifier = modifier,
		})
	end
end

--add_heavy_turret_bonus("physical-projectile-damage-1", 0.1)
--add_heavy_turret_bonus("physical-projectile-damage-2", 0.1)
--add_heavy_turret_bonus("physical-projectile-damage-3", 0.2)
--add_heavy_turret_bonus("physical-projectile-damage-4", 0.2)
--add_heavy_turret_bonus("physical-projectile-damage-5", 0.2)
--add_heavy_turret_bonus("physical-projectile-damage-6", 0.2)
--add_heavy_turret_bonus("physical-projectile-damage-7", 0.2)
--
add_heavy_turret_bonus("physical-projectile-damage-1", 0.2)
add_heavy_turret_bonus("physical-projectile-damage-2", 0.2)
add_heavy_turret_bonus("physical-projectile-damage-3", 0.3)
add_heavy_turret_bonus("physical-projectile-damage-4", 0.3)
add_heavy_turret_bonus("physical-projectile-damage-5", 0.3)
add_heavy_turret_bonus("physical-projectile-damage-6", 0.3)
add_heavy_turret_bonus("physical-projectile-damage-7", 0.3)
