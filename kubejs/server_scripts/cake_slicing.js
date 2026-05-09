// File: kubejs/server_scripts/cake_cutting.js
// Adds cutting board recipes to convert cake blocks into slices using a knife.

ServerEvents.recipes(event => {
    /**
     * Helper function to create a cutting board recipe.
     * @param {string} cakeItem - Input cake block item ID (e.g., 'deliciouscake:glazed_cake').
     * @param {string} sliceItem - Output slice item ID.
     * @param {number} sliceCount - Number of slices to output.
     */
    function makeCuttingRecipe(cakeItem, sliceItem, sliceCount) {
        event.custom({
            type: 'farmersdelight:cutting',
            ingredients: [
                { item: cakeItem }
            ],
            tool: [
				{
					type: "farmersdelight:item_ability",
					action: "knife_dig"
				},
				{
					tag: "c:tools/knife"
				}
            ],
            result: [
                {
					item: {
						id: sliceItem,
						count: sliceCount
					}
                }
            ]
        });
    }

    // --- Recipes ---
    makeCuttingRecipe('deliciouscake:glazed_cake', 'kubejs:glazed_cake_slice', 7);
    makeCuttingRecipe('deliciouscake:golden_apple_cake', 'kubejs:golden_apple_cake_slice', 7);
    makeCuttingRecipe('deliciouscake:nether_cake', 'kubejs:nether_cake_slice', 7);
    makeCuttingRecipe('deliciouscake:cookie_cake', 'kubejs:cookie_cake_slice', 7);
});