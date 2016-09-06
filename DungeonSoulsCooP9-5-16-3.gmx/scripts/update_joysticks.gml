/**
    Updates the joystick data received from the joystick gamepad, if enabled.
*/

for (var _i=0;_i<2;_i++)
{
    if (joystick_data[_i,0])
    {
        
        joystick_data[_i,2]=joystick_xpos(_i+1);
        joystick_data[_i,3]=joystick_ypos(_i+1);
        joystick_data[_i,4]=joystick_zpos(_i+1);
        joystick_data[_i,5]=joystick_rpos(_i+1);
        joystick_data[_i,6]=joystick_upos(_i+1);
        joystick_data[_i,7]=joystick_vpos(_i+1);
        if (joystick_data[_i,1]) //If pov enabled.
        {
            joystick_data_dpad_last[_i]=joystick_data[_i,8];
            joystick_data[_i,8]=joystick_pov(_i+1);
        }
        joystick_data[_i,9]=joystick_direction(_i+1);
        
        for (var _j=0;_j<32;_j++)
        {
            joystick_button_pressed[_i,_j]=false;
            joystick_button_released[_i,_j]=false;
        }
        
        joystick_dpad_pressed[_i,0]=false;
        joystick_dpad_pressed[_i,1]=false;
        joystick_dpad_pressed[_i,2]=false;
        joystick_dpad_pressed[_i,3]=false;
        
        var lastDpad;
        for (var _j=0;_j<4;_j++)
        {
            lastDpad = joystick_data_dpad_last[_i];
            switch (_j)
            {
                case 0: //Up
                    lastDpad=(lastDpad==0);
                    if (!lastDpad && joystick_data[_i,8]==0)
                    {
                        joystick_dpad_pressed[_i,_j]=true;
                    }
                break;
                case 1: //Right
                    lastDpad=(lastDpad==90);
                    if (!lastDpad && joystick_data[_i,8]==90)
                    {
                        joystick_dpad_pressed[_i,_j]=true;
                    }
                break;
                case 2: //Down
                    lastDpad=(lastDpad==180);
                    if (!lastDpad && joystick_data[_i,8]==180)
                    {
                        joystick_dpad_pressed[_i,_j]=true;
                    }
                break;
                case 3: //Left
                    lastDpad=(lastDpad==270);
                    if (!lastDpad && joystick_data[_i,8]==270)
                    {
                        joystick_dpad_pressed[_i,_j]=true;
                    }
                break;
            }
        }
        
        var lastBtnState;
        for (var _j=0;_j<32;_j++)
        {
            lastBtnState=joystick_button[_i,_j];
            joystick_button[_i,_j]=joystick_check_button(_i+1,_j+1);
            if (lastBtnState && !joystick_button[_i,_j]) //If it was pressed and now it is not, then it was released
            {
                joystick_button_released[_i,_j]=true;
            }
            else if (!lastBtnState && joystick_button[_i,_j]) //If it was released and now it isn't, then it was pressed
            {
                joystick_button_pressed[_i,_j]=true;
            }
        }
        
        for (var _j=0;_j<8;_j++)
        {
            joystick_stick_pressed[_i,_j]=false;
        }   
        
        //Check stick push
        for (var _j=0;_j<8;_j++)
        {
            lastBtnState = joystick_stick[_i,_j];
            switch (_j)
            {
                case 0:
                    joystick_stick[_i,_j] = joystick_check_stick_up(_i);
                break;
                case 4:
                    joystick_stick[_i,_j] = joystick_data[_i,5]<-gamepad_axis_deadzone;
                break;
                case 1:
                    joystick_stick[_i,_j] = joystick_check_stick_right(_i);
                break;
                case 5:
                    joystick_stick[_i,_j] = joystick_data[_i,4]>gamepad_axis_deadzone;
                break;
                case 2:
                    joystick_stick[_i,_j] = joystick_check_stick_down(_i);
                break;
                case 6:
                    joystick_stick[_i,_j] = joystick_data[_i,5]>gamepad_axis_deadzone;
                break;
                case 3:
                    joystick_stick[_i,_j] = joystick_check_stick_left(_i);
                break;
                case 7:
                    joystick_stick[_i,_j] = joystick_data[_i,4]<-gamepad_axis_deadzone;
                break;
            }
            
            if (!lastBtnState && joystick_stick[_i,_j]) //If it was released and now it isn't, then it was pressed
            {
                joystick_stick_pressed[_i,_j]=true;
            }
        }
    }
}
