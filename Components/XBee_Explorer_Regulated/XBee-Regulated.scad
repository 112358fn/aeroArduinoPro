include <../pins.scad>

THICKNESS = 1.600000;
BOARD = [34.290000,27.940000,THICKNESS];
module XBee_Regulated(){
    board_thickness = THICKNESS;
	eta = 0.1;
	board_size = BOARD;
	board_origin = [0.000000,0.000000];
    pin_length = 6;
	translate([board_size[0],board_size[1],0])rotate([0,0,180])union(){
		color("red")difference(){
			translate(board_origin)cube(board_size); //Board
			translate([2.540,2.540,-eta])cylinder(r=1.651000, h=board_thickness+eta*2); //hole
			translate([2.540,25.400,-eta])cylinder(r=1.651000, h=board_thickness+eta*2); //hole
			translate([30.480,25.400,-eta])cylinder(r=1.651000, h=board_thickness+eta*2); //hole
			translate([30.480,2.540,-eta])cylinder(r=1.651000, h=board_thickness+eta*2); //hole
			translate([3.810,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 1
			translate([6.350,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 2
			translate([8.890,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 3
			translate([11.430,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 4
			translate([13.970,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 5
			translate([16.510,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 6
			translate([19.050,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 7
			translate([21.590,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 8
			translate([24.130,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 9
			translate([26.670,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 10
			translate([29.210,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 11
			translate([29.210,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 1
			translate([26.670,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 2
			translate([24.130,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 3
			translate([21.590,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 4
			translate([19.050,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 5
			translate([16.510,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 6
			translate([13.970,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 7
			translate([11.430,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 8
			translate([8.890,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 9
			translate([6.350,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 10
			translate([3.810,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X11 11
			translate([1.270,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 1
			translate([1.270,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
		}
        color("grey"){
            translate([6.350,20.320,-pin_length])cylinder(r=0.508000, h=board_thickness+pin_length); //1X11 2
            translate([1.270,10.160,-pin_length])cylinder(r=0.508000, h=board_thickness+pin_length); //1X06 2
			translate([1.270,12.700,-pin_length])cylinder(r=0.508000, h=board_thickness+pin_length); //1X06 3
			translate([1.270,15.240,-pin_length])cylinder(r=0.508000, h=board_thickness+pin_length); //1X06 4
			translate([1.270,17.780,-pin_length])cylinder(r=0.508000, h=board_thickness+pin_length); //1X06 5
        }
		translate([8.890,10.414,0])EIA3216();  //C1 10uF
		translate([11.430,13.970,0])rotate([0,0,90])0402_CAP();  //C2 0.1uF
		translate([8.890,17.526,0])EIA3216();  //C3 10uF
		translate([3.810,20.320,0])1X11();  //JP2 M11PTH
		translate([29.210,7.620,0])rotate([0,0,180])1X11();  //JP3 M11PTH
		translate([1.270,7.620,0])rotate([0,0,90])1X06();  //JP4 
		translate([33.020,20.320,0])rotate([0,0,180])LED_0603();  //LED1 Red
		translate([33.020,11.430,0])rotate([0,0,180])LED_0603();  //LED2 Red
		translate([33.020,7.620,0])rotate([0,0,180])LED_0603();  //LED3 Green
		translate([33.020,16.510,0])rotate([0,0,180])LED_0603();  //LED4 Green
		translate([13.970,15.240,0])SOT23_3();  //Q1 MOSFET-NCHANNELSMD
		translate([24.130,15.240,0])SOT23_3();  //Q2 MOSFET-NCHANNELSMD
		translate([27.940,12.700,0])0402_RES();  //R1 1k
		translate([27.940,10.795,0])0402_RES();  //R3 1k
		translate([27.940,15.240,0])rotate([0,0,180])0402_RES();  //R4 1k
		translate([16.510,15.240,0])rotate([0,0,270])0402_RES();  //R5 1k
		translate([17.780,15.240,0])rotate([0,0,90])0402_RES();  //R6 1k
		translate([21.590,15.240,0])rotate([0,0,270])0402_RES();  //R7 1k
		translate([20.320,15.240,0])rotate([0,0,90])0402_RES();  //R8 1k
		translate([27.940,17.145,0])rotate([0,0,180])0402_RES();  //R11 1k
		translate([20.320,10.160,0])SJ_2S_NO();  //SJ1 SOLDERJUMPERNO
		translate([11.430,12.319,0])rotate([0,0,270])SFE_LOGO_FLAME();  //U$1 LOGO-SFESK
		translate([23.495,11.303,0])rotate([0,0,270])OSHW_LOGO_S();  //U$3 OSHW-LOGOS
		translate([26.543,0.762,0])rotate([0,0,180])SFE_NEW_WEBLOGO();  //U$4 LOGO-SFENEW
		translate([2.540,2.540,0])STAND_OFF();  //U$5 STAND-OFF
		translate([5.080,1.270,0])FIDUCIAL_1X2a();  //U$7 FIDUCIAL1X2
		translate([19.050,-29.210,0])CREATIVE_COMMONS();  //U$8 CREATIVE_COMMONS
		translate([2.540,25.400,0])STAND_OFF();  //U$9 STAND-OFF
		translate([30.480,25.400,0])STAND_OFF();  //U$10 STAND-OFF
		translate([30.480,2.540,0])STAND_OFF();  //U$11 STAND-OFF
		translate([5.080,24.670,0])FIDUCIAL_1X2a();  //U$16 FIDUCIAL1X2
		translate([5.080,13.970,0])rotate([0,0,270])XBEE_SMD();  //U2 XBEE-1B3
		translate([8.890,13.970,0])rotate([0,0,180])SOT23_5();  //U3 V_REG_LDOSMD
	}
}

module FIDUCIAL_1X2a(){
color("Black")cube([20,2,6]);
}
//translate([0,0,10])XBee_Regulated(); //Show module
//Created by generate-scad.ulp version 0.1


//Creates standoffs
mountingHoleRadius = 1.651000;
pcbHeight = 1.6;
module standoffs_xbee( 
  height = 10, 
  topRadius = mountingHoleRadius + 1, 
  bottomRadius =  mountingHoleRadius + 2, 
  holeRadius = mountingHoleRadius,
  ) {
  holePlacement_xbee()
  union() {
      cylinder(r1 = bottomRadius, r2 = topRadius, h = height, $fn=32);
      translate([0, 0, height - 1])
      pintack( h=pcbHeight + 3, r = holeRadius, lh=3, lt=1, bh=1, br=topRadius );
    }  
}
//standoffs_xbee();

//This is used for placing the mounting holes and for making standoffs
//child elements will be centered on that chosen boards mounting hole centers
module holePlacement_xbee() {
  for(i = [[2.540,2.540, 0], [2.540,25.400,0], [30.480,25.400,0], [30.480,2.540,0]] ) {
    translate([BOARD[0],BOARD[1],0])rotate([0,0,180])translate(i)
      children(0);
  }
}
