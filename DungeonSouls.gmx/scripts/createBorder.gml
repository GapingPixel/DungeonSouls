//Creates border around the room sides
gml_pragma("forceinline");
//Needs refining
var size = 32;
for (i=-size;i<room_width;i+=size)
    {
    if !place_meeting(i,0,argument0)
        instance_create(i,0,argument0);
    }
for (i=-size;i<room_width;i+=size)
    {
    if !place_meeting(0,i,argument0)
        instance_create(0,i,argument0);
    }
