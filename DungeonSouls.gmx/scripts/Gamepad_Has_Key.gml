///Gamepad_Has_Key(int key_value)
/*
    This code checks whether the keyboard configuration has the specified key or not.
    Because of the way game maker studio works, iterating through a map will have
    O(n^2) complexity, due to ds_map_next() having O(N) complexity.
    
    An implementation that uses a ds list with all the ckeys of the map could be used,
    but would require unnecessary memory usage for this case.
    
    See: https://www.reddit.com/r/gamemaker/comments/3p4k9d/whats_the_fastest_way_to_iterate_through_a_ds_map/
*/
var val = argument0;
var result;
result = (ds_map_find_value(global.ckeys,'up')==val || 
        ds_map_find_value(global.ckeys,'down')==val || 
        ds_map_find_value(global.ckeys,'left')==val || 
        ds_map_find_value(global.ckeys,'right')==val || 
        ds_map_find_value(global.ckeys,'potion')==val || 
        ds_map_find_value(global.ckeys,'pick')==val || 
        ds_map_find_value(global.ckeys,'stat')==val || 
        ds_map_find_value(global.ckeys,'map')==val || 
        ds_map_find_value(global.ckeys,'inv')==val || 
        ds_map_find_value(global.ckeys,'fskill')==val || 
        ds_map_find_value(global.ckeys,'sskill')==val || 
        ds_map_find_value(global.ckeys,'tskill')==val || 
        ds_map_find_value(global.ckeys,'askill')==val || 
        ds_map_find_value(global.ckeys,'skillup')==val);
return result;
