module hole(){  //switch hole is 14 mm, 
    cube(14);
}

module alphas(){
    for (x_position = [0:19.05:267]) {              //The size of 1U keycap is
        translate([x_position, 76.2, -7]) hole();   //around 19mm, Matt3o
    }                                               //reccomends 19.05mm gaps
    for (x_position = [0:19.05:210]) {
        translate([x_position+1.5*19.05, 57.15, -7]) hole();
    }
    for (x_position = [0:19.05:191]) {
        translate([x_position+1.75*19.05, 38.1, -7]) hole();
    }
    for (x_position = [0:19.05:172]) {
        translate([x_position+2.25*19.05, 19.05, -7]) hole();
    }
}

module mods(){  //not sure if any of those is correct
    //Tab       //will have to remake this, the math is insane and probably wrong
    translate([(19.05*1.5)/2-7,57.15,-7]) hole();   //probably correct
    //Caps
    translate([(19.05*1.75)/2-7,38.1,-7]) hole();   //probably correct
    //Lshift
    translate([(19.05*2.25)/2-7,19.05,-7]) hole();  //might be correct
    //Rshift
    translate([247.65-(1.75/2)-7, 19.05, -7]) hole(); //no idea
    //Fn
    translate([266.7, 19.05, -7]) hole();           //probably correct
    //Return
    translate([(2.25*19.05)+191+(2.25*19.05/2), 38.1, -7]) hole(); //probably wrong
    //Pipe
    translate([267-(1.5/2)-7, 57.15, -7]) hole();   //probably wrong
    //spacebar
    translate([287/2-7, 0, -7]) hole(); //idk tbh
    
    //todo 2 keys left of spacebar and 2 keys right of spacebar
}

//testing some things, I'll have to make this into two pieces to be able
//to print this on my printer with 23cm*23cm printbed

difference(){
    translate([-6,-6,0])cube([293,101,2]);
    alphas();
    mods();
}