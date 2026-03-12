x = lock.x + lengthdir_x(dist, dir + lock.angle);
y = lock.y + lengthdir_y(dist, dir + lock.angle);

// rotate the image of the segment to match the lock
image_angle = lock.angle;