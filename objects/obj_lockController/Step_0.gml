// INPUT
if (rotate_steps == 0 && !obj_imp.impCanMove)
{
    if (keyboard_check_pressed(vk_right))
    {
        rotate_dir = 1;
        rotate_steps = 90 div rotate_speed;
        obj_imp.moves ++
    }

    if (keyboard_check_pressed(vk_left))
    {
        rotate_dir = -1;
        rotate_steps = 90 div rotate_speed; 
        obj_imp.moves ++
    }
}

// ROTATION
if (rotate_steps > 0)
{
    angle += rotate_dir * rotate_speed;
    rotate_steps--;
	obj_imp.lockTurning = true;
}