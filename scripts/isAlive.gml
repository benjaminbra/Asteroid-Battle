//If the ship is destroyed and it not respawn
//The ship respawn with no penalty
if(!instance_exists(player_obj)){
    if(global.deathTimer < 60){
        global.deathTimer ++;
    } else {
        if(global.life > 0){
            instance_create(512,384,player_obj);
            instance_create(512,384,bulle_obj);
        }
    }
}
