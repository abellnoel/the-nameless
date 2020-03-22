/// @desc Sword swing hitbox
enemiesHit = ds_list_create(); //tracks enemies hit, enemies should only be hit once by instance of damage
damage = 0; //initial damage value, changed in script_weaponSwing to match player attackDamage
following = noone; //instance sword swing originated from

//offsetting from center
reach = noone; //how far from the instances center sword slash will originate
reachDir = noone; //which direction to offset
