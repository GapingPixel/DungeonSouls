var fileName = "DUNGEON_SOULS.log";
if (file_exists(fileName))
{
    var test_Size = file_bin_open(fileName,2);
    if (file_bin_size(test_Size)>16384)
    {
        file_bin_rewrite(test_Size);
    }
    file_bin_close(test_Size);
}
var file = file_text_open_append(fileName);
var date = date_current_datetime();
var hour = date_get_hour(date);
var day = date_get_day(date);
var month = date_get_month(date);
var year = date_get_year(date);
var minute = date_get_minute(date);
var second = date_get_second(date);
var message = "["+string(year)+"/"+string(month)+"/"+string(day)+"-"+string(hour)
    +":"+string(minute)+":"+string(second)+"]:";
file_text_write_string(file,message+string(argument0));
file_text_writeln(file);
file_text_close(file);
