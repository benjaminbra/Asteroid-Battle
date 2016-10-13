ini_open(global.filePath);

if(!ini_key_exists('save','score')){
    ini_write_real('save','score',0);
}
if(!ini_key_exists('save','hardScore')){
    ini_write_real('save','hardScore',0);
}
if(!ini_key_exists('save','earthScore')){
    ini_write_real('save','earthScore',0);
}

if(global.gameMode == "hard"){
    lastScore = ini_read_real('save','hardScore',0);
} else if(global.gameMode == "earth"){
    lastScore = ini_read_real('save','earthScore',0);
} else {
    lastScore = ini_read_real('save','score',0);
}

global.best = lastScore;

show_debug_message(global.best);

ini_close();
