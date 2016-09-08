///load_led_map(String fileWithData) : String
/*
    Loads the LED map contained in a .lled file.
    Argument0 - The name of the file.
    return - A string with the contents of the map.
*/
var _bitmap="";
var file_bin = file_bin_open(argument0,2);
while (file_bin_position(file_bin)<file_bin_size(file_bin))
{
    _bitmap+=chr(file_bin_read_byte(file_bin));
}
file_bin_close(file_bin);
return _bitmap;
