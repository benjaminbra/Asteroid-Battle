///areAlive(player)
//If the ship is destroyed and it not respawn
//The ship respawn with no penalty
var player = argument[0];

if(player == 0){
    instance = normal_obj;
} else {
    instance = hosted_obj;
} 
if(!instance_exists(instance)){
    if(global.deathTimer[player] < 60){
        global.deathTimer[player] ++;
    } else {
        if(global.life[player] > 0){
            instance_create(global.startX[player],global.startY[player],instance);
            instance_create(global.startX[player],global.startY[player],bulle_obj);
        }
    }
}
