//movement
#region
getControls();


//x movement
moveDir = rightKey - leftKey;

if moveDir != 0 {face = moveDir;};

runType = runKey;
xspd = moveDir *moveSpd[runType];

var sub_Pixel = 0.5;

if place_meeting( x+xspd, y, tile_map)
{
	
	//set xspd to 0
	xspd = 0;
} else {
	x += xspd;
}

//Y movements
yspd += grav;

//set the fall speed 
if yspd > termVel {yspd = termVel;};

//setting jump count 
if onGround 
{
	jumpCount = 0;
} 
else if jumpCount == 0 
{
	jumpCount = 1;
}

if jumpKeyBuffered && jumpCount < jumpMax 
{
	//Reset buffer
	jumpKeyBuffered = false;
	jumpKeyBufferTimer = 0;
	
	
	jumpCount++;
	
	yspd = jspd;
}

//Y Collision
if place_meeting(x, y+yspd, tile_map) 
{
	yspd = 0;
} else {
	y += yspd;
}

if place_meeting(x,y+1,tile_map) 
{
	onGround = true
	yspd = 0;
} else {
	onGround = false;
}

//Sprite Control
if abs(xspd) > 0 {sprite_index = walkSpr;};
//Running
if abs(xspd) >= moveSpd[1] {sprite_index = runSpr;};
//Not moving
if onGround && xspd == 0 {sprite_index = idleSpr;};
	mask_index = idleSpr;
#endregion

//attack
#region


#endregion







