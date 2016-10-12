bonus = irandom(1);
malus = irandom(1);
cBonus = false;
cMalus = false;
oBonus = 0;
oMalus = 0;

if(bonus == 1 && malus == 1){
    choice = irandom(1);
    if(choice == 0){
        cBonus = true;
    } else {
        cMalus = true;
    }
} else if (bonus == 1 && malus != 1){
    cBonus = true;
} else if (bonus != 1 && malus == 1){
    cMalus = true;
}

if(cBonus == true){
    //there is 3 bonus so 0 to 2;
    oBonus = irandom(2);
    switch(oBonus){
        case 0:
        default:
            instance_create(x,y,bonus0_obj);
            break;
        case 1:
            instance_create(x,y,bonus1_obj);
            break;
        case 2:
            instance_create(x,y,bonus2_obj);
            break;
    }
}
if(cMalus == true){
    //there is 2 malus so 0 to 1;
    oMalus = irandom(1);
    switch(oMalus){
        case 0:
            instance_create(x,y,malus0_obj);
            break;
        case 1:
            instance_create(x,y,malus1_obj);
            break;
        default:
            break;
    }
}
