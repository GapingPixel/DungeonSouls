gml_pragma("forceinline");
var file;
file = file_text_open_write(working_directory + "\dungeonsouls.ds");
file_text_write_real(file, global.soul_orb); file_text_writeln(file);
file_text_write_real(file, global.emerald); file_text_writeln(file);
file_text_write_real(file, global.total_coins); file_text_writeln(file);
file_text_write_real(file, global.en_kills); file_text_writeln(file);
file_text_write_real(file, global.deaths); file_text_writeln(file);
file_text_write_real(file, global.item_get); file_text_writeln(file);
file_text_write_real(file, global.all_coin); file_text_writeln(file);
file_text_write_real(file, global.boss_kill); file_text_writeln(file);
file_text_write_string(file, global.highest_level); file_text_writeln(file);
file_text_write_real(file, global.highest_levelB); file_text_writeln(file);
file_text_write_real(file, global.highest_loop); file_text_writeln(file);
file_text_write_real(file, global.mpc); file_text_writeln(file);


//rank
for(a=0;a<10;a++)
{
    file_text_write_real(file, rank[a]); file_text_writeln(file);
    file_text_write_real(file, global.rank_cur_point[a]); file_text_writeln(file);    
    file_text_write_real(file, unlocked[a]); file_text_writeln(file);
}

//PASSIVE
file_text_write_real(file, global.passive[0]); file_text_writeln(file);
file_text_write_real(file, global.passive[1]); file_text_writeln(file);
file_text_write_real(file, global.passive[2]); file_text_writeln(file);
file_text_write_real(file, global.passive[3]); file_text_writeln(file);
file_text_write_real(file, global.passive[4]); file_text_writeln(file);
file_text_write_real(file, global.passive[5]); file_text_writeln(file);
file_text_write_real(file, global.passive[6]); file_text_writeln(file);
file_text_write_real(file, global.passive[7]); file_text_writeln(file);
file_text_write_real(file, global.passive[8]); file_text_writeln(file);


file_text_close(file);
desync_time=0; //States that the current save file and the previous one are desynced.
max_desync_time=max(max_desync_time-10,10);//Subtracts 10 seconds to the maximum desync
//time allowed. The more the player saves, the more frequent the backup.
