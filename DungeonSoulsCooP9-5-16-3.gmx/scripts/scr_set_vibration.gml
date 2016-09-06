///scr_set_vibration(leftMotor,rightMotor,segs)
gml_pragma("forceinline");
if (global.vibration) {
   gamepad_set_vibration(global.pad[GAMEPAD_1],0+argument0,0+argument1);
   self.alarm[11] = room_speed*(0+argument2);
}
