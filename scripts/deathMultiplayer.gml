///deathMultiplayer(winner)
var winner = argument[0];
name = "";
if(winner == 1){
    name = "Player one ";
} else if (winner == 2){
    name = "Player two ";
} else {
    name = "Personne n'";
} 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(room_width/2,room_height/2,name+"a gagné !",2,2,image_angle);
draw_text(room_width/2,(room_height/2)+96,"Appuie sur R pour relancer");
draw_text(room_width/2,(room_height/2)+128,"Appuie sur Esc pour revenir au menu"); 
