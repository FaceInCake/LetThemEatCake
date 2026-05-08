
<recipetype:create:mixing>.addJsonRecipe("ochrum_from_glowstone_and_blackstone", {
    "type": "create:mixing",
    "heat_requirement": "heated",
    "ingredients": [
        { "item": "minecraft:blackstone" },
        { "item": "minecraft:blackstone" },
        { "item": "minecraft:glowstone_dust" }
    ],
    "results": [
		{ "id": "minecraft:cobbled_deepslate", "count": 1 },
        { "id": "create:ochrum", "count": 1, "chance": 0.5 }
    ],
    "processingTime": 250
});

<recipetype:create:mixing>.addJsonRecipe("crimsite_from_gunpowder_and_granite", {
    "type": "create:mixing",
    "heat_requirement": "heated",
    "ingredients": [
        { "item": "minecraft:granite" },
        { "item": "minecraft:granite" },
        { "item": "minecraft:gunpowder" }
    ],
    "results": [
        { "id": "minecraft:red_sand", "count": 1 },
        { "id": "create:crimsite", "count": 1, "chance": 0.5 }
    ],
    "processingTime": 250
});

<recipetype:create:mixing>.addJsonRecipe("asurine_from_lapis_and_quartz_and_packed_mud", {
    "type": "create:mixing",
    "heat_requirement": "heated",
    "ingredients": [
        { "item": "minecraft:packed_mud" },
        { "item": "minecraft:packed_mud" },
		{ "item": "minecraft:lapis_lazuli" },
		{ "item": "minecraft:quartz" }
    ],
    "results": [
        { "id": "minecraft:sand", "count": 1 },
        { "id": "create:asurine", "count": 1, "chance": 0.5 },
		{ "id": "minecraft:lapis_lazuli", "count": 1, "chance": 0.9 }
    ],
    "processingTime": 200
});

<recipetype:create:mixing>.addJsonRecipe("asurine_from_amethyst_and_packed_mud", {
    "type": "create:mixing",
    "heat_requirement": "heated",
    "ingredients": [
        { "item": "minecraft:packed_mud" },
        { "item": "minecraft:packed_mud" },
        { "item": "minecraft:amethyst_shard" }
    ],
    "results": [
        { "id": "minecraft:sand", "count": 1 },
        { "id": "create:asurine", "count": 1, "chance": 0.5 }
    ],
    "processingTime": 250
});

<recipetype:create:mixing>.addJsonRecipe("veridium_from_redstone_and_slime_and_deepslate", {
    "type": "create:mixing",
    "heat_requirement": "heated",
    "ingredients": [
        { "item": "minecraft:deepslate" },
        { "item": "minecraft:redstone" },
		{ "item": "minecraft:slime_ball" }
    ],
    "results": [
        { "id": "minecraft:dripstone_block", "count": 1 },
        { "id": "create:veridium", "count": 1, "chance": 0.5 }
    ],
    "processingTime": 200
});

<recipetype:create:mixing>.addJsonRecipe("tuff_from_bonemeal_and_schorchia", {
    "type": "create:mixing",
    "heat_requirement": "heated",
    "ingredients": [
        { "item": "create:scorchia" },
        { "item": "create:scorchia" },
        { "item": "minecraft:bone_meal" }
    ],
    "results": [
        { "id": "minecraft:tuff", "count": 2, "chance": 0.5 }
    ],
    "processingTime": 250
});

<recipetype:create:mixing>.addJsonRecipe("white_dye_from_wool", {
    "type": "create:mixing",
    "heat_requirement": "none",
    "ingredients": [
		{ "type": "neoforge:single", "amount": 125, "fluid": "minecraft:water" },
        { "item": "minecraft:white_wool" }
    ],
    "results": [
        { "id": "minecraft:white_dye", "count": 1 },
        { "id": "minecraft:string", "count": 2, "chance": 0.5 }
    ],
    "processingTime": 300
});

<recipetype:create:compacting>.addJsonRecipe("calcite_from_clay_and_smooth_white_sandstone", {
    "type": "create:compacting",
    "ingredients": [
		{ "type": "neoforge:single", "amount": 100, "fluid": "minecraft:lava" },
        { "item": "biomeswevegone:smooth_white_sandstone" },
		{ "item": "minecraft:clay_ball" },
		{ "item": "minecraft:clay_ball" }
    ],
    "results": [
        { "id": "minecraft:calcite", "count": 1 },
    ],
    "processingTime": 200
});

