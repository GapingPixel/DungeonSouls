///checkStatsIntegrity(String file,Integer expectedLines)
/*
    Checks whether the file that contains the player's stats, specified in the argument,
    is correctly formed or not. 
    Return - True if the file is valid.
*/
var result = false;
var _f = working_directory+argument0;
if (file_exists(_f))
{
    var fil = file_text_open_read(_f);
    var lineCount=0;
    while (!file_text_eof(fil))
    {
        file_text_readln(fil);
        lineCount++;
    }
    result = lineCount==argument1;
}
return result;
