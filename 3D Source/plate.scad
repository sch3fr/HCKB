module hole(){
    cube(14);
}

module alphas(){
    for (x_position = [0:19.05:267]) {
        translate([x_position, 76.2, -7]) hole();
    }
    for (x_position = [0:19.05:210]) {
        translate([x_position+1.5*19.05, 57.15, -7]) hole();
    }
    for (x_position = [0:19.05:191]) {
        translate([x_position+1.75*19.05, 38.1, -7]) hole();
    }
    for (x_position = [0:19.05:172]) {
        translate([x_position+2.25*19.05, 19.05, -7]) hole();
    }
    //Tab
    translate([(19.05*1.5)/2-7,57.15,-7]) hole();
    //Caps
    translate([(19.05*1.75)/2-7,38.1,-7]) hole();
    //Lshift
    translate([(19.05*2.25)/2-7,19.05,-7]) hole();
    //Rshift
    translate([247.65-(1.75/2)-7, 19.05, -7]) hole();
    //Fn
    translate([266.7, 19.05, -7]) hole();
    //Return
    translate([(2.25*19.05)+191+(2.25*19.05/2), 38.1, -7]) hole();
    //Pipe
    translate([267-(1.5/2)-7, 57.15, -7]) hole();
    
}


alphas();