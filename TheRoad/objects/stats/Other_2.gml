/// @description Insert description here
// You can write your code in this editor


// global variables for both players (collective)
gas = 0;
bullets = 2;

food = 0;

water = 15; // in mL
maxWater = 60; // bottle capacity


bagCapacity = 200;

// all items add up to bagCapacity
// gas goes towards 40 units
// food goes towards 40 units
// water goes towards 60 units
// other goes towards 60 units
// ^^^ average values.

// individual variables
maxStats = 100;
initialRegen = 2;//how many per 30 seconds
lossRate = 2;//how many per minute
thirstScale = 8; // feels thirsty 10x faster than feeling hungry

papaHunger = maxStats;
papaThirst = maxStats;
papaHealth = maxStats;
papaEnergy = maxStats;

sonHunger = maxStats;
sonThirst = maxStats;
sonHealth = maxStats;
sonEnergy = maxStats;