/**
    Works much like update_joysticks. This script is responsible for updating any events
    related to gamepads.
*/
if (gamepad_supported)
{
    for (var _i=0;_i<max_gamepad_pads;_i++)
    {
        if (gamepad_is_connected(_i))
        {
            for (var _j=0;_j<4;_j++)
            {
                gamepad_lstick_pressed[_i,_j]=false;
                gamepad_rstick_pressed[_i,_j]=false;
            }   
            
            //Check stick push
            for (var _j=0;_j<4;_j++)
            {
                //LEFT ANALOG UPDATE:
                lastBtnState = gamepad_lstick_state[_i,_j];
                switch (_j)
                {
                    case 0:
                        gamepad_lstick_state[_i,_j] = gamepad_axis_value(_i,gp_axislv)<-gamepad_axis_deadzone;
                    break;
                    case 1:
                        gamepad_lstick_state[_i,_j] = gamepad_axis_value(_i,gp_axislh)>gamepad_axis_deadzone;
                    break;
                    case 2:
                        gamepad_lstick_state[_i,_j] = gamepad_axis_value(_i,gp_axislv)>gamepad_axis_deadzone;
                    break;
                    case 3:
                        gamepad_lstick_state[_i,_j] = gamepad_axis_value(_i,gp_axislh)<-gamepad_axis_deadzone;
                    break;
                }
                
                if (!lastBtnState && gamepad_lstick_state[_i,_j]) //If it was released and now it isn't, then it was pressed
                {
                    gamepad_lstick_pressed[_i,_j]=true;
                }
                
                //RIGHT ANALOG UPDATE:
                
                lastBtnState = gamepad_rstick_state[_i,_j];
                switch (_j)
                {
                    case 0:
                        gamepad_rstick_state[_i,_j] = gamepad_axis_value(_i,gp_axisrv)<-gamepad_axis_deadzone;
                    break;
                    case 1:
                        gamepad_rstick_state[_i,_j] = gamepad_axis_value(_i,gp_axisrh)>gamepad_axis_deadzone;
                    break;
                    case 2:
                        gamepad_rstick_state[_i,_j] = gamepad_axis_value(_i,gp_axisrv)>gamepad_axis_deadzone;
                    break;
                    case 3:
                        gamepad_rstick_state[_i,_j] = gamepad_axis_value(_i,gp_axisrh)<-gamepad_axis_deadzone;
                    break;
                }
                
                if (!lastBtnState && gamepad_rstick_state[_i,_j]) //If it was released and now it isn't, then it was pressed
                {
                    gamepad_rstick_pressed[_i,_j]=true;
                }
            }
        }
    }
}
