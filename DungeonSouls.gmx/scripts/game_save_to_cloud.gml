///game_save_to_cloud
/*
    Saves all local files that have to do with the game's content onto the user's steam
    cloud.
*/
if (steam_is_initialized())
{
    if (steam_is_cloud_enabled_for_account())
    {
        if (steam_is_cloud_enabled_for_app())
        {
            //To-do: Should check return values to see if the file was correctly uploaded.
            //If not, warn the player that some files may have not been synced.
            steam_file_write_file("rm_arc_frg.ds","arc_frg.ds");
            steam_file_write_file("rm_arc_frg_itm.ds","arc_frg_itm.ds");
            steam_file_write_file("rm_arc_frg_rcp.ds","arc_frg_rcp.ds");
            steam_file_write_file("rm_arc_frg_ing.ds","arc_frg_ing.ds");
            steam_file_write_file("rm_configuration.ini","configuration.ini");
            steam_file_write_file("rm_DGS.back.ds","DGS.back.ds");
            steam_file_write_file("rm_DGSC.ds","DGSC.ds");
            steam_file_write_file("rm_dungeonsouls.ds","dungeonsouls.ds");
        }
    }
}
