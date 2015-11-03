include <OpenSCAD-Arduino-Mounting-Library/arduino.scad>
include <BezierCone.scad>

//Board Dimensions
ProDimensions = boardDimensions( LEONARDO );
width = ProDimensions[0];
length = ProDimensions[1];
height = 3;

//Plane Radius
planeRadius= 200;

//

//Board
translate([-width/2,-length/2,height])arduino(LEONARDO);

//Stand
difference(){
#hull(){
translate([-width/2,-length/2,0])stand(radius=planeRadius);
translate([0,length/2,0])rotate([-90,0,0])BezCone(d=width,h=length,curve=5);
rotate([-90,0,0])cylinder(h=length, r=width/2, center=true);
translate([0,-length/2,0])rotate([90,0,0])BezCone(d=width,h=length,curve=5);
}
translate([0,0,-planeRadius])rotate([-90,0,0])cylinder(r=planeRadius+1, h=length*3, center=true); 
}





translate([0,0,-planeRadius])rotate([-90,0,0])cylinder(r=planeRadius, h=length*4, center=true);


//modules
module cyl_thin(h, r, thickness=5) {
rotate([-90,0,0])
difference(){
    cylinder(r=r+thickness, h=h, center=true);
    cylinder(r=r, h=h*2,center=true);
}
}

module stand(offset=3, radius=100){
    union(){
    hull(){
        linear_extrude(height = 2)square([width, length]);
        translate([width/2,length/2,-radius])rotate([90,0,0])cylinder(r=radius, h=length, center=true);   
        }
    standoffs(LEONARDO, height=height, bottomRadius=2, topRadius=2, mountType=PIN); 
    }
}


