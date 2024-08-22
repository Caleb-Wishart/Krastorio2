-- A RECIPE FOR STAY IN THIS FILE SHOULD HAVE THE ATTRIBUTE category = "crushing"
return {
  {
    type = "recipe",
    name = "sand",
    category = "crushing",
    hide_from_player_crafting = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = false,
    allow_productivity = true,
    ingredients = {
      { type = "item", name = "stone", amount = 3 },
    },
    results = {
      { type = "item", name = "sand", amount_min = 7, amount_max = 8 },
    },
  },
  {
    type = "recipe",
    name = "imersite-powder",
    category = "crushing",
    icon = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder.png",
    icon_size = 64,
    hide_from_player_crafting = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 3,
    enabled = false,
    allow_productivity = true,
    ingredients = {
      { type = "item", name = "raw-imersite", amount = 3 },
    },
    results = {
      { type = "item", name = "imersite-powder", amount = 3 },
      { type = "item", name = "sand", amount = 3 },
    },
    main_product = "imersite-powder",
  },
  {
    type = "recipe",
    name = "inserter-to-parts",
    localised_name = { "recipe-name.inserter-to-parts" },
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "inserter", amount = 1 },
    },
    results = { { type = "item", name = "inserter-parts", amount = 1 } },
  },
  {
    type = "recipe",
    name = "fast-inserter-to-parts",
    localised_name = { "recipe-name.fast-inserter-to-parts" },
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "fast-inserter", amount = 1 },
    },
    results = { { type = "item", name = "inserter-parts", amount = 1 } },
  },
  {
    type = "recipe",
    name = "long-handed-inserter-to-parts",
    localised_name = { "recipe-name.long-handed-inserter-to-parts" },
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "long-handed-inserter", amount = 1 },
    },
    results = { { type = "item", name = "inserter-parts", amount = 1 } },
  },
  {
    type = "recipe",
    name = "burner-inserter-to-parts",
    localised_name = { "recipe-name.burner-inserter-to-parts" },
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "burner-inserter", amount = 1 },
    },
    results = { { type = "item", name = "inserter-parts", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bulk-inserter-to-parts",
    localised_name = { "recipe-name.bulk-inserter-to-parts" },
    icon = kr_items_with_variations_icons_path .. "electronic-components/electronic-components.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "e[ei-electronic-components]",
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "bulk-inserter", amount = 1 },
    },
    results = {
      { type = "item", name = "inserter-parts", amount = 1 },
      { type = "item", name = "electronic-components", amount = 2 },
    },
  },
  {
    type = "recipe",
    name = "superior-inserter-to-parts",
    localised_name = { "recipe-name.superior-inserter-to-parts" },
    icon = kr_items_with_variations_icons_path .. "electronic-components/electronic-components.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "e[ei-electronic-components]",
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "kr-superior-inserter", amount = 1 },
    },
    results = {
      { type = "item", name = "inserter-parts", amount = 1 },
      { type = "item", name = "electronic-components", amount = 4 },
      { type = "item", name = "imersite-powder", amount = 3 },
    },
  },
  {
    type = "recipe",
    name = "superior-long-inserter-to-parts",
    localised_name = { "recipe-name.superior-long-inserter-to-parts" },
    icon = kr_items_with_variations_icons_path .. "electronic-components/electronic-components.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "e[ei-electronic-components]",
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "kr-superior-long-inserter", amount = 1 },
    },
    results = {
      { type = "item", name = "inserter-parts", amount = 1 },
      { type = "item", name = "electronic-components", amount = 4 },
      { type = "item", name = "imersite-powder", amount = 6 },
    },
  },
  {
    type = "recipe",
    name = "superior-filter-inserter-to-parts",
    localised_name = { "recipe-name.superior-filter-inserter-to-parts" },
    icon = kr_items_with_variations_icons_path .. "electronic-components/electronic-components.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "e[ei-electronic-components]",
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "kr-superior-filter-inserter", amount = 1 },
    },
    results = {
      { type = "item", name = "inserter-parts", amount = 1 },
      { type = "item", name = "electronic-components", amount = 6 },
      { type = "item", name = "imersite-powder", amount = 3 },
    },
  },
  {
    type = "recipe",
    name = "superior-long-filter-inserter-to-parts",
    localised_name = { "recipe-name.superior-long-filter-inserter-to-parts" },
    icon = kr_items_with_variations_icons_path .. "electronic-components/electronic-components.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "e[ei-electronic-components]",
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "kr-superior-long-filter-inserter", amount = 1 },
    },
    results = {
      { type = "item", name = "inserter-parts", amount = 1 },
      { type = "item", name = "electronic-components", amount = 6 },
      { type = "item", name = "imersite-powder", amount = 6 },
    },
  },
  {
    type = "recipe",
    name = "imersite-crystal-to-dust",
    localised_name = { "recipe-name.imersite-crystal-to-dust" },
    icon = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "e[ei-electronic-components]",
    category = "crushing",
    hide_from_player_crafting = true,
    always_show_made_in = true,
    allow_as_intermediate = false,
    allow_intermediates = false,
    always_show_products = true,
    energy_required = 1,
    enabled = true,
    ingredients = {
      { type = "item", name = "imersite-crystal", amount = 1 },
    },
    results = {
      { type = "item", name = "imersite-powder", amount = 3 },
    },
  },
}
