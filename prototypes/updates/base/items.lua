local data_util = require("data-util")
local flib_table = require("__flib__.table")

table.insert(
  flib_table.get_or_insert(data.raw.armor["modular-armor"], "resistances", {}),
  { type = "radioactive", decrease = 2, percent = 15 }
)
table.insert(
  flib_table.get_or_insert(data.raw.armor["power-armor"], "resistances", {}),
  { type = "radioactive", decrease = 3, percent = 30 }
)
table.insert(
  flib_table.get_or_insert(data.raw.armor["power-armor-mk2"], "resistances", {}),
  { type = "radioactive", decrease = 4, percent = 45 }
)

-- TODO: Redo equipment subgrouping

data.raw.capsule["discharge-defense-remote"].order = "f[active-defense-equipment]-b[discharge-defense-remote]"
data.raw.capsule["discharge-defense-remote"].subgroup = "equipment"

data.raw.capsule["raw-fish"].capsule_action.attack_parameters.cooldown = 30
data.raw.capsule["raw-fish"].capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects = {
  type = "damage",
  damage = { type = "physical", amount = -50 },
}
data.raw.capsule["raw-fish"].rocket_launch_products = { { type = "item", name = "dolphin-gun", amount = 1 } }

data.raw.item["battery-equipment"].order = "b1[battery]-b1[battery-equipment]"
data.raw.item["battery-equipment"].subgroup = "equipment"

data.raw.item["battery-mk2-equipment"].order = "b2[battery]-b3[battery-equipment]"
data.raw.item["battery-mk2-equipment"].subgroup = "equipment"

data.raw.item["discharge-defense-equipment"].order = "f[active-defense-equipment]-a[discharge-defense-equipment]"
data.raw.item["discharge-defense-equipment"].subgroup = "equipment"

data.raw.item["energy-shield-equipment"].subgroup = "equipment"
data.raw.item["energy-shield-equipment"].order = "b[shield]-a[energy-shield-equipment-mk1]"

data.raw.item["energy-shield-mk2-equipment"].subgroup = "equipment"
data.raw.item["energy-shield-mk2-equipment"].order = "b[shield]-b[energy-shield-equipment-mk2]"

data.raw.item["fission-reactor-equipment"].order = "a2[energy-source]-a5[portable-nuclear-core]"
data.raw.item["fission-reactor-equipment"].subgroup = "equipment"
data.raw.item["fission-reactor-equipment"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/equipment/fission-reactor-equipment.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/equipment/fission-reactor-equipment-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data.raw.item["exoskeleton-equipment"].subgroup = "character-equipment"
data.raw.item["exoskeleton-equipment"].order = "e[exoskeleton]-a1[exoskeleton-equipment]"

data.raw.tool[kr_optimization_tech_card_name].localised_description = { "item-description.optimization-tech-card" }

data.raw.item["night-vision-equipment"].subgroup = "character-equipment"
data.raw.item["night-vision-equipment"].order = "f[night-vision]-a1[night-vision-equipment]"

data.raw.item["personal-laser-defense-equipment"].localised_description =
  { "equipment-description.personal-sniper-laser-defense-mk1-equipment" }
data.raw.item["personal-laser-defense-equipment"].localised_name =
  { "equipment-name.personal-sniper-laser-defense-mk1-equipment" }
data.raw.item["personal-laser-defense-equipment"].order = "d[active-defense]-b1[personal-laser-defense-mk1-equipment]"
data.raw.item["personal-laser-defense-equipment"].subgroup = "equipment"

data.raw.item["satellite"].research_products = { { type = "item", name = "space-research-data", amount = 1000 } }

data.raw.item["solar-panel-equipment"].order = "a[energy-source]-a1[solar-panel]"
data.raw.item["solar-panel-equipment"].subgroup = "equipment"

-- stylua: ignore start
data_util.set_icon(data.raw.ammo["artillery-shell"], "__Krastorio2Assets__/icons/ammo/artillery-shell.png")
data_util.set_icon(data.raw.item["advanced-circuit"], "__Krastorio2Assets__/icons/items/advanced-circuit.png")
data_util.set_icon(data.raw.item["copper-plate"], "__Krastorio2Assets__/icons/items/copper-plate.png")
data_util.set_icon(data.raw.item["electric-mining-drill"], "__Krastorio2Assets__/icons/entities/electric-mining-drill.png")
data_util.set_icon(data.raw.item["electronic-circuit"], "__Krastorio2Assets__/icons/items/electronic-circuit.png")
data_util.set_icon(data.raw.item["iron-gear-wheel"], "__Krastorio2Assets__/icons/items/iron-gear-wheel.png")
data_util.set_icon(data.raw.item["iron-plate"], "__Krastorio2Assets__/icons/items/iron-plate.png")
data_util.set_icon(data.raw.item["processing-unit"], "__Krastorio2Assets__/icons/items/processing-unit.png")
data_util.set_icon(data.raw.item["pumpjack"], "__Krastorio2Assets__/icons/entities/oil-pumpjack.png")
data_util.set_icon(data.raw.item["steel-plate"], "__Krastorio2Assets__/icons/items/steel-plate.png")
-- stylua: ignore end

data_util.set_icon(data.raw.ammo["atomic-bomb"], "__Krastorio2Assets__/icons/ammo/atomic-bomb.png")
data.raw.ammo["atomic-bomb"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/ammo/atomic-bomb.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/ammo/atomic-bomb-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data_util.set_icon(
  data.raw.tool["automation-science-pack"],
  "__Krastorio2Assets__/icons/cards/automation-tech-card.png"
)
data.raw.tool["automation-science-pack"].order = "b02[automation-tech-card]"
data.raw.tool["automation-science-pack"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/cards/automation-tech-card.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/cards/automation-tech-card-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data_util.set_icon(data.raw.tool["logistic-science-pack"], "__Krastorio2Assets__/icons/cards/logistic-tech-card.png")
data.raw.tool["logistic-science-pack"].order = "b03[logistic-tech-card]"
data.raw.tool["logistic-science-pack"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/cards/logistic-tech-card.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/cards/logistic-tech-card-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data_util.set_icon(data.raw.tool["military-science-pack"], "__Krastorio2Assets__/icons/cards/military-tech-card.png")
data.raw.tool["military-science-pack"].order = "b04[military-tech-card]"
data.raw.tool["military-science-pack"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/cards/military-tech-card.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/cards/military-tech-card-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data_util.set_icon(data.raw.tool["chemical-science-pack"], "__Krastorio2Assets__/icons/cards/chemical-tech-card.png")
data.raw.tool["chemical-science-pack"].order = "b05[chemical-tech-card]"
data.raw.tool["chemical-science-pack"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/cards/chemical-tech-card.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/cards/chemical-tech-card-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data_util.set_icon(
  data.raw.tool["production-science-pack"],
  "__Krastorio2Assets__/icons/cards/production-tech-card.png"
)
data.raw.tool["production-science-pack"].order = "b06[production-tech-card]"
data.raw.tool["production-science-pack"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/cards/production-tech-card.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/cards/production-tech-card-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data_util.set_icon(data.raw.tool["utility-science-pack"], "__Krastorio2Assets__/icons/cards/utility-tech-card.png")
data.raw.tool["utility-science-pack"].order = "b07[utility-tech-card]"
data.raw.tool["utility-science-pack"].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/cards/utility-tech-card.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/cards/utility-tech-card-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}

data_util.set_icon(
  data.raw.tool[kr_optimization_tech_card_name],
  "__Krastorio2Assets__/icons/cards/optimization-tech-card.png"
)
data.raw.tool[kr_optimization_tech_card_name].order = "b08[optimization-tech-card]"
data.raw.tool[kr_optimization_tech_card_name].pictures = {
  layers = {
    {
      filename = "__Krastorio2Assets__/icons/cards/optimization-tech-card.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
    },
    {
      filename = "__Krastorio2Assets__/icons/cards/optimization-tech-card-light.png",
      size = 64,
      scale = 0.25,
      mipmap_count = 4,
      draw_as_light = true,
      flags = { "light" },
    },
  },
}
