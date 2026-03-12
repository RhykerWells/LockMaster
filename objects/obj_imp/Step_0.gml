// Ensure we don't lock the position
if lockTurning {
	x = lock.x + lengthdir_x(dist, dir + lock.angle);
	y = lock.y + lengthdir_y(dist, dir + lock.angle);

	// rotate the image of the segment to match the lock
	image_angle = lock.angle;
	
	lockTurning = false;
	impCanMove = true;
}

// Prevent falling unless the lock has stopped
if impCanMove && !lockTurning {
	// Apply gravity
	if y_spd < 5 {
	    y_spd += grav;
	}

	// Prevent persistent sinking
	if place_meeting(x, y + y_spd, obj_backgroundEdge) {
	    y_spd = 0;
	}
	
	// Move Y position
	y += y_spd;	
}