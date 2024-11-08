-- Rebalancing of radar
if krastorio.general.getSafeSettingValue("kr-rebalance-radar") then
  data.raw["radar"]["radar"].max_health = 300
  data.raw["radar"]["radar"].max_distance_of_sector_revealed = 16
  data.raw["radar"]["radar"].max_distance_of_nearby_sector_revealed = 5
  data.raw["radar"]["radar"].energy_per_sector = "2MJ"
  data.raw["radar"]["radar"].energy_per_nearby_scan = "250kJ"
  data.raw["radar"]["radar"].energy_usage = "1MW"
  data.raw["radar"]["radar"].next_upgrade = "advanced-radar"

  data:extend({
    -- Remaint entity

    {
      type = "corpse",
      name = "advanced-radar-remnants",
      localised_name = { "remnant-name", { "entity-name.advanced-radar" } },
      icon = "__Krastorio2Assets__/icons/entities/remnants-icon.png",
      icon_size = 32,
      flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      tile_width = 3,
      tile_height = 3,
      selectable_in_game = false,
      subgroup = "remnants",
      order = "d[remnants]-a[generic]-a[small]",
      time_before_removed = 60 * 60 * 20, -- 20 minutes
      final_render_layer = "remnants",
      remove_on_tile_placement = false,
      animation = make_rotated_animation_variations_from_sheet(1, {
        filename = "__Krastorio2Assets__/remnants/advanced-radar-remnant/radar-remnants.png",
        line_length = 1,
        width = 282,
        height = 212,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(12, 4.5),
        scale = 0.5,
      }),
    },

    -- Item

    {
      type = "item",
      name = "advanced-radar",
      icon = "__Krastorio2Assets__/icons/entities/advanced-radar.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "radars-and-rockets",
      order = "03[advanced-radar]",
      place_result = "advanced-radar",
      stack_size = 50,
    },

    -- Entity

    {
      type = "radar",
      name = "advanced-radar",
      icon = "__Krastorio2Assets__/icons/entities/advanced-radar.png",
      icon_size = 64,
      icon_mipmaps = 4,
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 0.1, result = "advanced-radar" },
      max_health = 350,
      fast_replaceable_group = "radar",
      corpse = "advanced-radar-remnants",
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
        {
          type = "impact",
          percent = 50,
        },
      },
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      energy_per_sector = "2MJ",
      max_distance_of_sector_revealed = 20,
      max_distance_of_nearby_sector_revealed = 8,
      energy_per_nearby_scan = "250kJ",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
      },
      energy_usage = "2MW",
      integration_patch = {
        filename = "__Krastorio2Assets__/buildings/advanced-radar/radar-integration.png",
        priority = "low",
        width = 238,
        height = 216,
        direction_count = 1,
        shift = util.by_pixel(1.5, 4),
        scale = 0.5,
      },
      pictures = {
        layers = {
          {
            filename = "__Krastorio2Assets__/buildings/advanced-radar/radar.png",
            priority = "low",
            width = 196,
            height = 254,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(1, -16),
            scale = 0.5,
          },
          {
            filename = "__Krastorio2Assets__/buildings/advanced-radar/radar-shadow.png",
            priority = "low",
            width = 343,
            height = 186,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(39.25, 3),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/radar.ogg",
          },
        },
        apparent_volume = 2,
      },
      radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
      rotation_speed = 0.01,
    },
    {
      type = "recipe",
      name = "kr-advanced-radar",
      energy_required = 20,
      enabled = false,
      ingredients = {
        { type = "item", name = "radar", amount = 1 },
        { type = "item", name = "steel-beam", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "rare-metals", amount = 5 },
      },
      results = { { type = "item", name = "advanced-radar", amount = 1 } },
    },

    -- Tech

    {
      type = "technology",
      name = "advanced-radar",
      icon = "__Krastorio2Assets__/technologies/advanced-radar.png",
      icon_size = 256,
      icon_mipmaps = 4,
      prerequisites = { "kr-radar", "advanced-circuit" },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "kr-advanced-radar",
        },
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
    },
  })
end
