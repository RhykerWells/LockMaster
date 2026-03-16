// reference the controller instance
lock = instance_find(obj_lockController, 0);

// get offset from lock
var dx = x - lock.x;
var dy = y - lock.y;

// convert to polar
dist = point_distance(0,0,dx,dy);
dir  = point_direction(0,0,dx,dy) - lock.angle;

// physics
y_spd = 0;
grav = 0.5;

lockTurning = false;
impCanMove = false;

moves = 0;
depth = -10;

