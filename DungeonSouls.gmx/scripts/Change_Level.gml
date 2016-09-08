if argument0 == "Normal"
{
    if global.dungeon_name == ENVIRO1 or  SECRET1_STORY
    {
            global.dungeon_name     = ENVIRO2;
            global.tile_top         =  b_sewers_top;
            global.tile_floor       =  b_sewers_floor;
            global.tile_floorB      =  b_sewers_floor2;
            global.outline          = b_sewers_border
            global.dungeon_stair    = b_sewers_stairs;
            global.wall             = spr_Sewers_Wall
            global.wall_top         = spr_Sewers_Top;
            global.overlay          = b_sewers_overlay;
            global.decal            = b_sewers_decal;    
    }else
    if global.dungeon_name == ENVIRO2
    {
            global.dungeon_name     = ENVIRO3;
            global.tile_top         =  b_ice_top;
            global.tile_floor       =  b_ice_floor;
            global.tile_floorB      =  b_ice_floor2;
            global.outline          = b_ice_border
            global.dungeon_stair    = b_ice_stairs;
            global.wall             = spr_Ice_Wall
            global.wall_top         = spr_Ice_Top;
            global.overlay          = b_ice_overlay;
            global.decal            = b_ice_decal;
    }else
    if global.dungeon_name == ENVIRO3 or global.dungeon_name == SECRET2
    {
        //if global.dungeon_type == 0
        //{
            global.dungeon_name     = ENVIRO4;
            global.tile_top         =  b_cathedral_top;
            global.tile_floor       =  b_cathedral_floor;
            global.tile_floorB      =  b_cathedral_floor2;
            global.outline          = b_cathedral_border
            global.dungeon_stair    = b_cathedral_stairs;
            global.wall             = spr_Cathedral_Wall
            global.wall_top         = spr_Ice_Top;
            global.overlay          = b_cathedral_overlay;
            global.decal            = b_cathedral_decal;
        /*}else
        if global.dungeon_type == 1
        {
            global.dungeon_name     = "CATHEDRAL";
            global.tile_top         =  b_cathedralB_top;
            global.tile_floor       =  b_cathedralB_floor;
            global.tile_floorB      =  b_cathedralB_floor2;
            global.outline          = b_cathedralB_border
            global.dungeon_stair    = b_magma_stairs;
            global.wall             = spr_CathedralB_Wall
            global.wall_top         = spr_Magma_Top;
            global.overlay          = b_cathedral_overlay;
            global.decal            = b_dungeon_decal;    
        }*/   
    }else
    if global.dungeon_name == ENVIRO4
    {
        global.dungeon_name     = ENVIRO5;
        global.tile_top         =  b_devil_top;
        global.tile_floor       =  b_devil_floor;
        global.tile_floorB      =  b_devil_floor2;
        global.outline          = b_devil_border;
        global.dungeon_stair    = b_devil_stairs;    
        global.wall             = spr_Devil_Wall;
        global.wall_top         = spr_Devil_Top;
        global.overlay          = b_dungeon_grass;    
        global.decal            = b_devil_decal;
    }else
    if global.dungeon_name == ENVIRO5
    {
        global.loop++;
        if global.dungeon_type == 0
        {
            global.dungeon_name     = ENVIRO1;
            global.tile_top         =  b_dungeon_top;
            global.tile_floor       =  b_dungeon_floor;
            global.tile_floorB      =  b_dungeon_floor2;
            global.outline          = b_dungeon_border;
            global.dungeon_stair    = b_dungeon_stairs;    
            global.wall             = spr_Dungeon_Wall;
            global.wall_top         = spr_Dungeon_Block_Top;
            global.overlay          = b_dungeon_grass;    
            global.decal            = b_dungeon_decal;        
        }else
        if global.dungeon_type == 1
        {
            global.dungeon_name     = "DARK DUNGEONS";
            global.tile_top         =  b_dungeonB_top;
            global.tile_floor       =  b_dungeonB_floor;
            global.tile_floorB      =  b_dungeonB_floor2;
            global.outline          = b_dungeonB_border;
            global.dungeon_stair    = b_dungeonB_stairs;    
            global.wall             = spr_DungeonB_Wall;
            global.wall_top         = spr_DungeonB_Block_Top;
            global.overlay          = b_dungeon_grass;        
            global.decal            = b_dungeonB_decal;        
        }
    }
    else if (global.dungeon_name==SECRET1)
    {
        if (just_killed_owl || !visited_forbidden_chambers)
        {
            global.dungeon_name     = SECRET1_STORY;
            global.tile_top         =  b_library_top;
            global.tile_floor       =  b_library_floor;
            global.tile_floorB      =  b_library_floor2;
            global.outline          = b_library_border;
            global.dungeon_stair    = b_library_stairs;    
            global.wall             = spr_Library_Wall;
            global.wall_top         = spr_Library_Top;
            global.overlay          = b_library_grass;    
            global.decal            = b_library_decal;
        }
        else
        {
            global.dungeon_name     = ENVIRO2;
            global.tile_top         =  b_sewers_top;
            global.tile_floor       =  b_sewers_floor;
            global.tile_floorB      =  b_sewers_floor2;
            global.outline          = b_sewers_border
            global.dungeon_stair    = b_sewers_stairs;
            global.wall             = spr_Sewers_Wall
            global.wall_top         = spr_Sewers_Top;
            global.overlay          = b_sewers_overlay;
            global.decal            = b_sewers_decal;
        }
    }
}
else
if argument0 == "Secret"
{
    if global.dungeon_name == ENVIRO1
    {
            global.dungeon_name     = SECRET1;
            global.tile_top         =  b_library_top;
            global.tile_floor       =  b_library_floor;
            global.tile_floorB      =  b_library_floor2;
            global.outline          = b_library_border;
            global.dungeon_stair    = b_library_stairs;    
            global.wall             = spr_Library_Wall;
            global.wall_top         = spr_Library_Top;
            global.overlay          = b_library_grass;    
            global.decal            = b_library_decal;    
    }else
    if global.dungeon_name == ENVIRO3
    {
        //if global.dungeon_type == 0
        //{
            global.dungeon_name     = SECRET2;
            global.tile_top         =  b_garden_top;
            global.tile_floor       =  b_garden_floor;
            global.tile_floorB      =  b_garden_floor2;
            global.outline          = b_garden_border;
            global.dungeon_stair    = b_garden_stairs;    
            global.wall             = spr_Garden_Wall;
            global.wall_top         = spr_Garden_Top;
            global.overlay          = b_garden_overlay;
            global.decal            = b_garden_decal; 
        /*}else
        if global.dungeon_type == 1
        {
            global.dungeon_name     = SECRET2;
            global.tile_top         =  b_gardenB_top;
            global.tile_floor       =  b_gardenB_floor;
            global.tile_floorB      =  b_gardenB_floor2;
            global.outline          = b_gardenB_border;
            global.dungeon_stair    = b_gardenB_stairs;    
            global.wall             = spr_GardenB_Wall;
            global.wall_top         = spr_GardenB_Top;
            global.overlay          = b_garden_overlay;
            global.decal            = b_dungeon_decal;         
        }*/
    }
}
else if (argument0=="Special")
{
    if (global.dungeon_name==SECRET1)
    {
        global.dungeon_name     = SECRET1_STORY;
        global.tile_top         =  b_library_top;
        global.tile_floor       =  b_library_floor;
        global.tile_floorB      =  b_library_floor2;
        global.outline          = b_library_border;
        global.dungeon_stair    = b_library_stairs;    
        global.wall             = spr_Library_Wall;
        global.wall_top         = spr_Library_Top;
        global.overlay          = b_library_grass;    
        global.decal            = b_library_decal;
    }
}
