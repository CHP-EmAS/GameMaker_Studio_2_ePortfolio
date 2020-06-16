var _collision = false;

//Horizontal Tiles
if(tilemap_get_at_pixel(collisionMap, x + h_speed, y)) {
	x -= x mod TILE_SIZE;
	if(sign(h_speed) == 1) x += TILE_SIZE - 1;
	h_speed = 0;
	_collision = true;
}

//Horrizontal Move Commit
x += h_speed

//Vertical Tiles
if(tilemap_get_at_pixel(collisionMap, x, y + v_speed)) {
	y -= y mod TILE_SIZE;
	if(sign(v_speed) == 1) y += TILE_SIZE - 1;
	v_speed = 0;
	_collision = true;
}

//Vertical Move Commit
y += v_speed

return _collision;