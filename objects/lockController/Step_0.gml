// INPUT
if (rotate_steps == 0)
{
    if (keyboard_check_pressed(vk_right))
    {
        rotate_dir = 1;
        rotate_steps = 90 div rotate_speed;
    }

    if (keyboard_check_pressed(vk_left))
    {
        rotate_dir = -1;
        rotate_steps = 90 div rotate_speed;
    }
}

// ROTATION
if (rotate_steps > 0)
{
    angle += rotate_dir * rotate_speed;
    rotate_steps--;
}