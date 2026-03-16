// If lock rotates, follow it
if lockTurning {

    x = lock.x + lengthdir_x(dist, dir + lock.angle);
    y = lock.y + lengthdir_y(dist, dir + lock.angle);

    image_angle = lock.angle;

    lockTurning = false;
    impCanMove = true;
}

// Gravity
if impCanMove && !lockTurning {

    if y_spd < 5 {
        y_spd += grav;
    }

    if place_meeting(x, y + y_spd, obj_lockEdgeParent) || place_meeting(x, y + y_spd, obj_block) {

        y_spd = 0;

        // Update local offset relative to lock rotation
        var dx = x - lock.x;
        var dy = y - lock.y;

        dist = point_distance(0,0,dx,dy);
        dir  = point_direction(0,0,dx,dy) - lock.angle;
		
        if (place_meeting(x, bbox_bottom + 1, obj_unlock)) { 
            var inst = instance_place(x, y, obj_unlock);

            if (inst != noone) {
                inst.sprite_index = spr_unlock_disabled;
            }
        }
		impCanMove = false;
    }

    y += y_spd;
}