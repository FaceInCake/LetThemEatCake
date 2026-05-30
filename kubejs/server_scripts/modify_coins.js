// File: kubejs/server_scripts/remove_coin_pressing.js

ServerEvents.recipes(event => {

    // Remove all pressing recipes that output brass coins
    event.remove({ type: 'create:pressing', output: 'createdeco:brass_coin' });
    event.remove({ type: 'create:pressing', output: 'createdeco:copper_coin' });
    event.remove({ type: 'create:pressing', output: 'createdeco:iron_coin' });
    event.remove({ type: 'create:pressing', output: 'createdeco:gold_coin' });
    event.remove({ type: 'create:pressing', output: 'createdeco:netherite_coin' });
    event.remove({ type: 'create:pressing', output: 'createdeco:industrial_iron_coin' });
    event.remove({ type: 'create:pressing', output: 'createdeco:zinc_coin' });

});