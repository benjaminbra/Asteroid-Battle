bonus = irandom(99);
malus = irandom(99);
cBonus = false;
cMalus = false;

if(bonus == 1 && malus == 1){
    choice = irandom(99);
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
            instance_create(x,y,bonus0_obj);
            break;
        case 1:
            instance_create(x,y,bonus1_obj);
            break;
        case 2:
            instance_create(x,y,bonus2_obj);
            break;
        default:
            break;
    }
}
if(cMalus == true){
    //there is 2 malus so 0 to 1;
    oMalus = irandom(1);
    switch(oBonus){
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
