controlsSetup();

//movement
xspd = 0;
yspd = 0;
moveDir = 0;
moveSpd[0] = 2;
moveSpd[1] = 4;
face = 1;
runType = 0;

//jump
grav = 0.275;
termVel = 4;
jspd = -6.15;
jumpMax = 2;
jumpCount = 0;
onGround = true;

//sprites
idleSpr = spr_player;
walkSpr = spr_player;
runSpr = spr_run;
rollSpr = spr_roll;
deathSpr = spr_death;
hurtSpr = spr_hurt;

//Tiles
tile_map = layer_tilemap_get_id("Tiles_Col");
