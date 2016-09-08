///fix_backup(file);
if (file_exists(argument0))
{
    var content="";
    var _file = file_text_open_read(argument0);
    var fb = file_text_open_write(argument0+".TEMP");
    var seek=0;
    while (!file_text_eof(_file))
    {
        while (seek>35 && seek<42)
        {
            file_text_write_real(fb,0);
            file_text_writeln(fb);
            seek++;
        }
        file_text_write_string(fb,file_text_read_string(_file));
        file_text_writeln(fb);
        file_text_readln(_file);
        seek++;
    }
    
    file_text_close(_file);
    file_text_close(fb);
    if (seek==51)
    {
        file_delete(argument0);
        _file = file_text_open_write(argument0);
        fb = file_text_open_read(argument0+".TEMP");
        while (!file_text_eof(fb))
        {
            file_text_write_string(_file,file_text_read_string(fb));
            file_text_writeln(_file);
            file_text_readln(fb);
        }
        show_message("Dungeon souls has detected that your backup save file was badly configured and update it.");
        file_text_close(_file);
        file_text_close(fb);
        file_delete(argument0+".TEMP");
    }
    show_debug_message(content);
}
