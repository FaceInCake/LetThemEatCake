// File: kubejs/startup_scripts/cake_slices.js
StartupEvents.registry('item', event => {

    // Glazed Cake Slice – Speed I (15s)
    event.create('kubejs:glazed_cake_slice')
        .food(food => {
            food
                .nutrition(2)
                .saturation(0.5)
                .fastToEat()
                .effect('minecraft:speed', 20 * 15, 0, 1.0);
        });

    // Golden Apple Cake Slice – Regen II (3s) + Absorption I (12s)
    event.create('kubejs:golden_apple_cake_slice')
        .food(food => {
            food
                .nutrition(2)
                .saturation(0.5)
                .fastToEat()
                .effect('minecraft:regeneration', 20 * 3, 1, 1.0)
                .effect('minecraft:absorption', 20 * 12, 0, 1.0);
        });

    // Nether Cake Slice – Fire Resistance (10s)
    event.create('kubejs:nether_cake_slice')
        .food(food => {
            food
                .nutrition(2)
                .saturation(0.5)
                .fastToEat()
                .effect('minecraft:fire_resistance', 20 * 10, 0, 1.0);
        });

    // Cookie Cake Slice – Jump Boost I (20s)
    event.create('kubejs:cookie_cake_slice')
        .food(food => {
            food
                .nutrition(2)
                .saturation(0.5)
                .fastToEat()
                .effect('minecraft:jump_boost', 20 * 20, 0, 1.0);
        });

});