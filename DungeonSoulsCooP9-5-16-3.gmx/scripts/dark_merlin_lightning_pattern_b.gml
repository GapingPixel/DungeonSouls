///dark_merlin_lightning_pattern_b()
gml_pragma("forceinline");
/*
    Strikes in a sword_pattern:
        X
        X 
    X X X X X
      X C X
      X X X
      X X X
      X X X
        X
*/
var delay = 1.5*room_speed;
if (instance_exists(obj_Hero))
{
    var arr;
    arr[20,0]=0;
    arr[20,1]=4;
    
    arr[19,0]=0;
    arr[19,1]=3;
    
    arr[18,0]=0;
    arr[18,1]=2;
    
    arr[17,0]=0;
    arr[17,1]=1;
    
    arr[16,0]=0;
    arr[16,1]=0;
    
    arr[15,0]=0;
    arr[15,1]=-1;
    
    arr[14,0]=0;
    arr[14,1]=-2;
    
    arr[13,0]=0;
    arr[13,1]=-3;
    
    arr[12,0]=1;
    arr[12,1]=-1;
    
    arr[11,0]=2;
    arr[11,1]=-1;
    
    arr[10,0]=-1;
    arr[10,1]=-1;
    
    arr[9,0]=-2;
    arr[9,1]=-1;
    
    arr[8,0]=-1;
    arr[8,1]=0;
    
    arr[7,0]=1;
    arr[7,1]=0;
    
    arr[6,0]=-1;
    arr[6,1]=1;
    
    arr[5,0]=1;
    arr[5,1]=1;
    
    arr[4,0]=-1;
    arr[4,1]=2;
    
    arr[3,0]=1;
    arr[3,1]=2;
    
    arr[2,0]=-1;
    arr[2,1]=3;
    
    arr[1,0]=1;
    arr[1,1]=3;
    
    for (var i=1;i<21;i++)
    {
        create_delayed_projectile(obj_Hero.x+arr[i,0]*16,obj_Hero.y+arr[i,1]*16,id,obj_Lightning_Strike,delay,0,0,spr_Spark,4);
    }
    
    arr=0;
}
