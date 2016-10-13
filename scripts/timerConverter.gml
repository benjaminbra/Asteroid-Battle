minutes = 0;
seconds = global.timer;
while(seconds >= 60){
    minutes++;
    seconds -= 60;
}

if(minutes >= 60){
    global.timerConverted = ">60 minutes";
} else {
    global.timerConverted = string(minutes)+":"+string(seconds);
}
