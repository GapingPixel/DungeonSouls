if (gamepad_get_index(0)!=-1)
{
    if gamepad_button_check_pressed(gamepad_get_index(0),gp_face1) 
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_face2)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_face3)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_face4)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_shoulderl)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_shoulderr)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_shoulderrb)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_shoulderlb)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_select)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_start)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_stickl)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_stickr)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_padu)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_padd)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_padl)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_padr)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_axislh)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_axislv)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_axisrh)
    or gamepad_button_check_pressed(gamepad_get_index(0),gp_axisrv)
        return true;
}
return false;
