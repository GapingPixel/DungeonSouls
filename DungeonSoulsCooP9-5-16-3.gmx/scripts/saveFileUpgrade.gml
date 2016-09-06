///saveFileUpgrade(String file);
/*
    Upgrades the contents in the specified save file to the expected ones in this update.
    This code should be changed accordingly.
*/
var result=false;
var pastLines=45,currLines=51;
var integrity = checkStatsIntegrity(argument0,pastLines);
var curr_integrity = checkStatsIntegrity(argument0,currLines);
if (!curr_integrity) //If it does not possess the necessary data for this update
{
    if (integrity) //But if it checks right with the previous update's structure
    {
        //Upgrade time
        
        Temp_Load_Stats(); //Temporarely load
        
        //THE FOLLOWING CODE MUST BE CHANGED EVERYTIME A STAT-MEDDLING UPDATE APPEARS.
        //IT SHOULD NOT ONLY SAVE BUT ALSO ADD/FIX ANYTHING THAT IS NEEDED
        var file;
        file = file_text_open_write(argument0);
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
        for(a=0;a<8;a++)
        {
            file_text_write_real(file, rank[a]); file_text_writeln(file);
            file_text_write_real(file, global.rank_cur_point[a]); file_text_writeln(file);    
            file_text_write_real(file, unlocked[a]); file_text_writeln(file);
        }
        
        //FIX
        //Extra new classes:
        for(a=0;a<2;a++)
        {
            file_text_write_real(file, 0); file_text_writeln(file);
            file_text_write_real(file, 0); file_text_writeln(file);    
            file_text_write_real(file, 0); file_text_writeln(file);
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
        result=true;
    }
}
return result;
