
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

// Allow dirt paths to be mixed back into dirt, so players can more easily trace through JEI the infinite dirt automation
<recipetype:create:mixing>.addJsonRecipe("dirt_from_dirt_path", {
    "type": "create:mixing",
    "ingredients": [
        { "item": "minecraft:dirt_path" }
    ],
    "results": [
        { "id": "minecraft:dirt", "count": 1 }
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


function addCoinDeployRecipe(inputStr as string, material as string) as void {
    <recipetype:create:deploying>.addJsonRecipe(material + "_coin_from_hoe", {
        "type": "create:deploying",
        "ingredients": [
            { "item": inputStr },
            { "item": "minecraft:netherite_hoe", "keepItem": true }
        ],
        "results": [
            {
                "id": "createdeco:"+material+"_coin",
                "count": 1
            }
        ]
    });
}

addCoinDeployRecipe("create:golden_sheet", "gold");
addCoinDeployRecipe("create:brass_sheet", "brass");
addCoinDeployRecipe("createdeco:zinc_sheet", "zinc");
addCoinDeployRecipe("create:iron_sheet", "iron");
addCoinDeployRecipe("create:copper_sheet", "copper");
addCoinDeployRecipe("createdeco:industrial_iron_sheet", "industrial_iron");
addCoinDeployRecipe("minecraft:netherite_ingot", "netherite");



// Rework the Sheets recipe
recipes.removeByRegex("handcrafted:[a-z_]+_sheet");
recipes.removeByRegex("handcrafted:[a-z_]+_cushion");

var colours = [
    "white", "light_gray", "gray", "black",
    "red", "orange", "yellow", "lime",
    "green", "cyan", "light_blue", "blue",
    "magenta", "purple", "pink", "brown"
] as string[];

for colour in colours {
	var wool = <item:minecraft:${colour}_wool>;
    var sheet = <item:handcrafted:${colour}_sheet>;
	var cushion = <item:handcrafted:${colour}_cushion>;
	
    craftingTable.addShaped("wool_to_"+colour+"_sheet", sheet * 3, [
        [wool, wool, wool],
        [<item:minecraft:string>, <item:minecraft:string>, <item:minecraft:string>],
        [wool, wool, wool]
    ]);
	
	craftingTable.addShaped("wool_to_"+colour+"_cushion", cushion * 3, [
		[wool, wool, wool],
		[<item:minecraft:feather>, <item:minecraft:feather>, <item:minecraft:feather>],
		[wool, wool, wool]
	]);
}
