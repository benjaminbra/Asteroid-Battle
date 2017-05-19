///multiGameOver(player)
var player = argument[0];
if(player == 1){
    instance = hosted_obj;
} else {
    instance = normal_obj;
}
instance_create(global.tempX[player]+50,global.tempY[player]+50,pDestroied1_obj);
instance_create(global.tempX[player]-50,global.tempY[player]-50,pDestroied2_obj);

global.destroy[player] = 1;

//global.points = max(global.points-100,0);
global.life[player] = max(global.life[player] - 1,0);

if(global.life[player] > 0){
    instance_create(global.startX[player],global.startY[player],instance);
    instance_create(global.startX[player],global.startY[player],bulle_obj);   
} else {

    /*if(global.points > global.best){
    
        ini_open(global.filePath);
        
        if(global.gameMode == "hard"){
            ini_write_real('save','hardScore',global.points);
        } else {
            ini_write_real('save','score',global.points);
        }
        
        global.best = global.points;
        
        ini_close();
    }    */

}
