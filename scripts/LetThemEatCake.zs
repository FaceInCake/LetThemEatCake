
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

// Increase stack size
<item:createdeco:brass_coin>.definition.maxStackSize = 99;
<item:createdeco:copper_coin>.definition.maxStackSize = 99;
<item:createdeco:iron_coin>.definition.maxStackSize = 99;
<item:createdeco:gold_coin>.definition.maxStackSize = 99;
<item:createdeco:netherite_coin>.definition.maxStackSize = 99;
<item:createdeco:industrial_iron_coin>.definition.maxStackSize = 99;
<item:createdeco:zinc_coin>.definition.maxStackSize = 99;

<item:createdeco:brass_coinstack>.definition.maxStackSize = 99;
<item:createdeco:copper_coinstack>.definition.maxStackSize = 99;
<item:createdeco:iron_coinstack>.definition.maxStackSize = 99;
<item:createdeco:gold_coinstack>.definition.maxStackSize = 99;
<item:createdeco:netherite_coinstack>.definition.maxStackSize = 99;
<item:createdeco:industrial_iron_coinstack>.definition.maxStackSize = 99;
<item:createdeco:zinc_coinstack>.definition.maxStackSize = 99;

// Allow coin stacks to be blasted into ingots
blastFurnace.addRecipe("copper_coinstack2ingot", <item:minecraft:copper_ingot>, <item:createdeco:copper_coinstack>, 0.0, 5*20);
blastFurnace.addRecipe("zinc_coinstack2ingot", <item:create:zinc_ingot>, <item:createdeco:zinc_coinstack>, 0.0, 5*20);
blastFurnace.addRecipe("iron_coinstack2ingot", <item:minecraft:iron_ingot>, <item:createdeco:iron_coinstack>, 0.0, 5*20);
blastFurnace.addRecipe("brass_coinstack2ingot", <item:create:brass_ingot>, <item:createdeco:brass_coinstack>, 0.0, 5*20);
blastFurnace.addRecipe("netherite_coinstack2ingot", <item:minecraft:netherite_ingot>, <item:createdeco:netherite_coinstack>, 0.0, 5*20);
blastFurnace.addRecipe("industrial_iron_coinstack2ingot", <item:createdeco:industrial_iron_ingot>, <item:createdeco:industrial_iron_coinstack>, 0.0, 5*20);
blastFurnace.addRecipe("gold_coinstack2ingot", <item:minecraft:gold_ingot>, <item:createdeco:gold_coinstack>, 0.0, 5*20);

// Add back coin recipes through sheets instead
<recipetype:create:pressing>.addJsonRecipe("iron_coin_from_sheet", {
    "type": "create:pressing",
    "ingredients": [{ "item": "create:iron_sheet" }],
    "results": [{ "id": "createdeco:iron_coin", "count": 4 }]
});
<recipetype:create:pressing>.addJsonRecipe("gold_coin_from_sheet", {
    "type": "create:pressing",
    "ingredients": [{ "item": "create:golden_sheet" }],
    "results": [{ "id": "createdeco:gold_coin", "count": 4 }]
});
<recipetype:create:pressing>.addJsonRecipe("brass_coin_from_sheet", {
    "type": "create:pressing",
    "ingredients": [{ "item": "create:brass_sheet" }],
    "results": [{ "id": "createdeco:brass_coin", "count": 4 }]
});
<recipetype:create:pressing>.addJsonRecipe("copper_coin_from_sheet", {
    "type": "create:pressing",
    "ingredients": [{ "item": "create:copper_sheet" }],
    "results": [{ "id": "createdeco:copper_coin", "count": 4 }]
});
<recipetype:create:pressing>.addJsonRecipe("zinc_coin_from_sheet", {
    "type": "create:pressing",
    "ingredients": [{ "item": "createdeco:zinc_sheet" }],
    "results": [{ "id": "createdeco:zinc_coin", "count": 4 }]
});
<recipetype:create:pressing>.addJsonRecipe("netherite_coin_from_ingot", {
    "type": "create:pressing",
    "ingredients": [{ "item": "minecraft:netherite_ingot" }],
    "results": [{ "id": "createdeco:netherite_coin", "count": 4 }]
});
<recipetype:create:pressing>.addJsonRecipe("industrial_iron_from_ingot", {
    "type": "create:pressing",
    "ingredients": [{ "item": "createdeco:industrial_iron_ingot" }],
    "results": [{ "id": "createdeco:industrial_iron_coin", "count": 4 }]
});
