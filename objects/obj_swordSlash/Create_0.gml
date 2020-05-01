/// @desc Sword swing hitbox
enemiesHit = ds_list_create(); //tracks enemies hit, enemies should only be hit once by instance of damage
damage = 0; //initial damage value, changed in script_weaponSwing to match player attackDamage
following = noone; //instance sword swing originated from
objectType = obj_swordSlash;