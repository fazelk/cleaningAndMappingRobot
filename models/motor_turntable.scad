// https://github.com/habi/OpenSCAD

$fn=100;

//motor holder
//base
difference(){
    for (angle = [0:60:359])
        rotate([0,0,angle]) cube([20,8,2]);
    cylinder(d=7, h=5);
}

//motor enclosure with cable hole
difference(){
    //cylinder(d=27, h=8);
    //cylinder(d=25, h=7);
    translate([sqrt(25-3)*2,sqrt(25-3)*2,2]) #cylinder(d=3,h=3);
}

//rotation blocker
height=19; 
//translate([16,2.5,height/2]) cube([2,5,height], center=true);
translate([16,-12.5,height/2]) cube([2,5,height], center=true);

//turntable
translate([0,0,height+2]){
    //grill
    for (angle = [0:10:359])
        rotate([0,0,angle]) cube([30,2,2]);
    for (y = [20:10:60])
        difference(){
            cylinder(d=y+1, h=2);
            cylinder(d=y-1, h=2);
        }
    //shaft
    translate([0,0,-4.5]) {
        difference(){
            cylinder(d=8, h=5);
            cylinder(d=5.5, h=5);
        }        
    }
}