gml_pragma("forceinline");
if global.dungeon mod 3 == 0
{
    if global.dungeon_name == "DARK DUNGEONS"
    {
        global.dungeon_name = "UNDERGROUND GARDEN";
    }else
    if global.dungeon_name == "UNDERGROUND GARDEN"
    {
        global.dungeon_name = "DARK DUNGEONS";   
    }
}
