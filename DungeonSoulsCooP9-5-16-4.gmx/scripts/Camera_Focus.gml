//FOCUSS
gml_pragma("forceinline");
if (mouse_x > obj_Hero.x+16 && camxx < 8) then camxx += 1;
if (mouse_x < obj_Hero.x-16 && camxx > -8) then camxx -= 1;
if (mouse_y > obj_Hero.y+16 && camyy < 8) then camyy += 1;
if (mouse_y < obj_Hero.y-16 && camyy > -8) then camyy -= 1;
/*
if mouse_x > obj_Hero.x+16 then if camxx < 8 camxx += 1;
if mouse_x < obj_Hero.x-16 then if camxx > -8 camxx -= 1;
if mouse_y > obj_Hero.y+16 then if camyy < 8 camyy += 1;
if mouse_y < obj_Hero.y-16 then if camyy > -8 camyy -= 1;
