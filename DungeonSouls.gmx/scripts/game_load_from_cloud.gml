///game_load_from_cloud()
/*
    Loads the contents of the game from the cloud using the Steam API.
*/

if (steam_is_initialized())
{
    if (steam_is_cloud_enabled_for_account())
    {
        if (steam_is_cloud_enabled_for_app())
        {
            //To-do: Should check return values to see if the file was correctly uploaded.
            //If not, warn the player that some files may have not been synced.
            steam_file_read_file("rm_arc_frg.ds","arc_frg.ds");
            steam_file_read_file("rm_arc_frg_itm.ds","arc_frg_itm.ds");
            steam_file_read_file("rm_arc_frg_rcp.ds","arc_frg_rcp.ds");
            steam_file_read_file("rm_arc_frg_ing.ds","arc_frg_ing.ds");
            steam_file_read_file("rm_configuration.ini","configuration.ini");
            steam_file_read_file("rm_DGS.back.ds","DGS.back.ds");
            steam_file_read_file("rm_DGSC.ds","DGSC.ds");
            steam_file_read_file("rm_dungeonsouls.ds","dungeonsouls.ds");
        }
    }
}
