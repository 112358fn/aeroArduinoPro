include <../pins.scad>

module SHT1x_Breakout_v13(){
	board_thickness = 1.600000;
	pin_lenght = 6;
	board_size = [19.050000,19.050000,board_thickness];
	board_origin = [0.000000,0.000000];
	translate([0,board_size[1],board_thickness])rotate([180,0,0])
    union(){
		color("red")difference(){
			translate(board_origin)cube(board_size); //Board
			translate([2.540,16.510,-0.1])cylinder(r=1.600000, h=board_thickness+0.2); //Hole
			translate([2.540,2.540,-0.1])cylinder(r=1.600000, h=board_thickness+0.2); //Hole
		}
        color("grey"){
        translate([14.859,13.335,0])cylinder(r=0.508000, h=board_thickness+pin_lenght); //1X04 1
        translate([14.859,10.795,0])cylinder(r=0.508000, h=board_thickness+pin_lenght); //1X04 2
        translate([14.859,8.255,0])cylinder(r=0.508000, h=board_thickness+pin_lenght); //1X04 3
		translate([14.859,5.715,0])cylinder(r=0.508000, h=board_thickness+pin_lenght); //1X04 4
        }
        
		translate([8.890,15.875,0])0603_CAP();  //C1 0.1uF
		translate([14.859,13.335,0])rotate([0,0,270])1X04();  //JP1 
		translate([17.399,12.065,0])rotate([0,0,90])0603_RES();  //R1 10K
		translate([17.399,6.985,0])rotate([0,0,270])0603_RES();  //R2 10K
		translate([15.367,17.018,0])rotate([0,0,135])SFE_NEW_WEBLOGO();  //U$1 LOGO-SFENEW
		translate([17.780,17.780,0])FIDUCIAL_1X2();  //U$2 FIDUCIAL1X2
		translate([5.080,1.270,0])FIDUCIAL_1X2();  //U$3 FIDUCIAL1X2
		translate([19.050,-8.890,0])CREATIVE_COMMONS();  //U$4 CREATIVE_COMMONS
		translate([4.826,9.525,0])rotate([0,0,180])SHT1X();  //U1 SHT1XSMD
	}
}

module SHT1X() {
    union(){
    color("green")cube([4,8,1],center=true);
    color("black")cube([2,6,3],center=true);
    }
}
//translate([0,0,10])SHT1x_Breakout_v13(); //Show module
//Created by generate-scad.ulp version 0.1

//Creates standoffs
mountingHoleRadius = 1.6;
pcbHeight = 1.6;
module standoffs_SHT15( 
  height = 10, 
  topRadius = mountingHoleRadius + 1, 
  bottomRadius =  mountingHoleRadius + 2, 
  holeRadius = mountingHoleRadius,
  ) {
  holePlacement_SHT15()
    union() {
      cylinder(r1 = bottomRadius, r2 = topRadius, h = height, $fn=32);
      translate([0, 0, height - 1])
      pintack( h=pcbHeight + 3, r = holeRadius, lh=3, lt=1, bh=1, br=topRadius );
    }  
}
//standoffs_SHT15();

//This is used for placing the mounting holes and for making standoffs
//child elements will be centered on that chosen boards mounting hole centers
module holePlacement_SHT15() {
  for(i = [[2.540,16.510,0], [2.540,2.540,0]] ) {
    translate(i)
      children(0);
  }
}