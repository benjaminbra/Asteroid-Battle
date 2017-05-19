///playerUpdate(player)
var player = argument[0];

areAlive(player);

if(global.missedShot[player] >= 10){
    global.points[player] = max(global.points[player] - 25,0);
    global.missedShot[player] = 0;
}

if(global.rotator[player] == false && global.rebooter[player] < 20){
    global.rebooter[player]++;
} else if (global.rotator[player] == false){
    global.rebooter[player] = 0;
    global.rotator[player] = true;
}
