// reference the controller instance
lock = instance_find(obj_lockController, 0);

// store distance + direction to the lock center
dist = point_distance(lock.x, lock.y, x, y);
dir  = point_direction(lock.x, lock.y, x, y);

depth = 0;