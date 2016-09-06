///Keyboard_Has_Key(int key_value)
/*
    This code checks whether the keyboard configuration has the specified key or not.
    Because of the way game maker studio works, iterating through a map will have
    O(n^2) complexity, due to ds_map_next() having O(N) complexity.
    
    An implementation that uses a ds list with all the keys of the map could be used,
    but would require unnecessary memory usage for this case.
    
    See: https://www.reddit.com/r/gamemaker/comments/3p4k9d/whats_the_fastest_way_to_iterate_through_a_ds_map/
*/
var val = argument0;
var result;
result = (ds_map_find_value(global.keys,'up')==val || 
        ds_map_find_value(global.keys,'down')==val || 
        ds_map_find_value(global.keys,'left')==val || 
        ds_map_find_value(global.keys,'right')==val || 
        ds_map_find_value(global.keys,'potion')==val || 
        ds_map_find_value(global.keys,'pick')==val || 
        ds_map_find_value(global.keys,'stat')==val || 
        ds_map_find_value(global.keys,'map')==val || 
        ds_map_find_value(global.keys,'inv')==val ||  
        ds_map_find_value(global.keys,'sskill')==val || 
        ds_map_find_value(global.keys,'tskill')==val);
return result;
