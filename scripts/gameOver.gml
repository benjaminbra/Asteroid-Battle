    instance_create(global.tempX+50,global.tempY+50,pDestroied1_obj);
    instance_create(global.tempX-50,global.tempY-50,pDestroied2_obj);
    
    global.destroy = 1;
    global.destroyEarth = 1;
    
    //global.points = max(global.points-100,0);
    global.life = max(global.life - 1,0);

    if(global.life > 0){
        if(global.gameMode == "earth"){
            instance_create(512,384,player_obj);
            instance_create(512,384,earth_obj);
            instance_create(512,384,bulle_obj);
        } else {
            instance_create(512,384,player_obj);
            instance_create(512,384,bulle_obj);
        }
        
    } else {
    
        if(global.points > global.best){
        
            ini_open(global.filePath);
            
            if(global.gameMode == "hard"){
                ini_write_real('save','hardScore',global.points);
            } else {
                ini_write_real('save','score',global.points);
            }
            
            global.best = global.points;
            
            ini_close();
        }    
    
    }
