///steam_file_read_file(steam_filename,local_filename)
/*
    Reads the contents of a steam filename onto a string and dumps the contents
    onto the local file.
*/
var st_name = argument0;
var lc_name = argument1;
if (steam_file_exists(st_name))
{
    var str = steam_file_read(st_name);
    if (file_exists(lc_name))
    {
        file_delete(lc_name);
    }
    var lc_file = file_text_open_write(lc_name);
    file_text_write_string(lc_file,str);
    file_text_close(lc_file);
}
