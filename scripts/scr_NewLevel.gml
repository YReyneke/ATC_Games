///scr_NewLevel(level_number)

level_number = argument0;
//LevelACList = ds_list_create()

for(i=1; i < level_number+1; i +=1)
{
    newAC = instance_create(-64,-64,obj_AC);
    newAC.alarm[0] = i*5*room_speed; // TBC - Randomise order of deployment
    
    if(i>3 && i<7){
    
        newAC.ACColour = "Red";
        newAC.image_index = 1;
        
    } else if(i>6 && i<10){
    
        newAC.ACColour = "Blue";
        newAC.image_index = 2;
        
    } else if (i>9) {
    
        r = i mod 3;
        if(r == 0){
            
            newAC.ACColour = "Yellow";
            newAC.image_index = 0;
        
        } else if(r == 1){
            
            newAC.ACColour = "Red";
            newAC.image_index = 1;
        
        } else if(r == 2){
            
            newAC.ACColour = "Blue";
            newAC.image_index = 2;
        
        }
    }
    
    if(i==4 && instance_number(obj_Gate) < 7){
        newGate = instance_create(16, 400, obj_Gate);
        newGate.GateNumber = -1;
        newGate.GateDir = "RE";
        newGate.image_index = 2;
        newGate.image_angle = 180;
    }
    if(i==7 && instance_number(obj_Gate) < 8){
        newGate = instance_create(16, 200, obj_Gate);
        newGate.GateNumber = -1;
        newGate.GateDir = "BE";
        newGate.image_index = 3;
        newGate.image_angle = 180;
    }
}
