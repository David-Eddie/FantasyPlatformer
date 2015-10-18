// pc action game state

with(obj_pc) {
    var proj_x = x;
    var proj_y = y;
    var move_dist = sprite_get_width(0);
    
    if (keyboard_check_pressed(ord("A"))) {
        proj_x -= move_dist;
    }
    else if (keyboard_check_pressed(ord("D"))) {
        proj_x += move_dist;
    }
    else if (keyboard_check_pressed(ord("W"))) {
        proj_y -= move_dist;
    }
    else if (keyboard_check_pressed(ord("S"))) {
        proj_y += move_dist;
    }
    
    // check for collision
    if ((proj_x != x) || (proj_y != y)) {
        if (!place_meeting(proj_x, proj_y, obj_wall)
            && !place_meeting(proj_x, proj_y, obj_character)
        ) {
            x = proj_x;
            y = proj_y;
            
            global.gamestate = gamestates.npc_action;
        }
    }
}
