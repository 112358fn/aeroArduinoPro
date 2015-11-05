include <Components/OpenSCAD-Arduino-Mounting-Library/arduino.scad>
include <Components/BezierCone.scad>
include <Components/SHT1x-Breakout-v13/SHT1x-Breakout-v13.scad>
include <Components/XBee_Explorer_Regulated/XBee-Regulated.scad>
include <Components/Xbee_Pro/Xbee_Pro.scad>

//Dimensions
ProDimensions = boardDimensions( LEONARDO );
width = ProDimensions[0];
length = ProDimensions[1];
height = ProDimensions[2];

//Stand
standHeight = 3;

//Cleanness
clearness = 10;

//Plane Radius
planeRadius= 200;

//

//Board
//arduinoPro();
//difference(){
//rotate([0,-180,-90])translate([-width/2,-length/2,-(height+clearness)])stand(radius=planeRadius);
//translate([-15,-25,33])SHT1x_Breakout_v13();
//translate([-15,-25,23])standoffs_SHT15();
//translate([-15,-3,33])xbee();
//translate([-15,-3,23])standoffs_xbee();
//}

//Enclosure
highestPoint = height+standHeight+clearness;
difference(){
hull(){
//rotate([0,-180,-90])translate([-width/2,-length/2,-(height+clearness)])stand(radius=planeRadius);
translate([0,length/2,0])rotate([-90,0,0])BezCone(d=highestPoint*2,h=length,curve=10);
rotate([-90,0,0])cylinder(h=length, r=width/2, center=true);
translate([0,-length/2,0])rotate([90,0,0])BezCone(d=highestPoint*2,h=length,curve=10);
}
translate([0,0,-planeRadius])rotate([-90,0,0])cylinder(r=planeRadius+1, h=length*3, center=true); 
}




//Plane
#translate([0,0,-planeRadius])rotate([-90,0,0])cylinder(r=planeRadius, h=length*4, center=true);


//modules
module cyl_thin(h, r, thickness=5) {
rotate([-90,0,0])
difference(){
    cylinder(r=r+thickness, h=h, center=true);
    cylinder(r=r, h=h*2,center=true);
}
}

module stand(offset=3, radius=100){
    translate([0,0,-standHeight])
    union(){
    linear_extrude(height = 2)square([width, length]);  
    standoffs(LEONARDO, height=standHeight,mountType=PIN); 
    }
}

module xbee() {
    XBee_Regulated();
    color("Darkblue")translate([18,14,8])rotate([90,0,90])scale(10)Xbee_Pro();
}

module arduinoPro() {
    rotate([0,-180,-90])translate([-width/2,-length/2,-(height+clearness)])arduino(LEONARDO);
}
