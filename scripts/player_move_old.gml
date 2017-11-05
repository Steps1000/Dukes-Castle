///player movement
if keyboard_check(vk_left) or keyboard_check(ord('A'))
{
    var wally = collision_point(x-5,y,obj_solid,false,false)
    if !wally
    {
        var seconds_passed = delta_time/1000000;
        var move_speed_this_frame = move_speed*seconds_passed;
        x -= move_speed_this_frame;
    }
    else 
    {
        x = x - distance_to_object(wally)
    }   
}
if keyboard_check(vk_right) or keyboard_check(ord('D'))
{
    var wally = collision_point(x+5,y,obj_solid,false,false)
    if !wally
    {
        var seconds_passed = delta_time/1000000;
        var move_speed_this_frame = move_speed*seconds_passed;
        x += move_speed_this_frame;
    }
    else 
    {
        x = x + distance_to_object(wally)
    }
}
if keyboard_check(vk_up) or keyboard_check(ord('W'))
{
    var wally = collision_point(x,y-5,obj_solid,false,false)
    if !wally
    {
        var seconds_passed = delta_time/1000000;
        var move_speed_this_frame = move_speed*seconds_passed;
        y -= move_speed_this_frame;
    }
    else 
    {
        y = y - distance_to_object(wally)
    }
}
if keyboard_check(vk_down) or keyboard_check(ord('S'))
{
    var wally = collision_point(x,y+5,obj_solid,false,false)
    if !wally
    {
        var seconds_passed = delta_time/1000000;
        var move_speed_this_frame = move_speed*seconds_passed;
        y += move_speed_this_frame;
    }
    else 
    {
        y = y + distance_to_object(wally)
    }
}
//if you collide with the invisible wall
