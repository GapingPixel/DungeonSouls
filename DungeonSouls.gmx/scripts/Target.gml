gml_pragma("forceinline");
if !instance_exists(target)
{
    target = -1;
}

var alliesExist;

alliesExist = instance_exists(obj_Skeleton_Ally);
        
if target = -1
{ 
    var nearest;
    if (!alliesExist || object_index==obj_Redeemer)
    {  
        
        if instance_exists(obj_Hero) 
        {
            nearest = instance_nearest(x,y,obj_Hero);
            if nearest.status == "invisible"
            {
                target = -1;
            }else
            {
                target = nearest;
            }
        }
    }
    else
    {
        var distPlayer=-32,distSkeletonAlly=0;
        var nearestPlayer=-1,nearestSkelAlly=-1;
        if (instance_exists(obj_Hero))
        {
            nearestPlayer=instance_nearest(x,y,obj_Hero);
            distPlayer=distance_to_object(nearestPlayer);
        }
        if (instance_exists(obj_Skeleton_Ally))
        {
            nearestSkelAlly=instance_nearest(x,y,obj_Skeleton_Ally);
            distSkeletonAlly=distance_to_object(nearestSkelAlly);
        }
        if (distSkeletonAlly<distPlayer+32)
        {
            if (nearestSkelAlly!=-1)
            {
                target=nearestSkelAlly;
            }
            else if (nearestPlayer!=-1)
            {
                target=nearestPlayer;
            }
        }
        else
        {
            if (nearestPlayer!=-1)
            {
                target=nearestPlayer;
            }
            else if (nearestSkelAlly!=-1)
            {
                target=nearestSkelAlly;
            }
        }
    }        
}
