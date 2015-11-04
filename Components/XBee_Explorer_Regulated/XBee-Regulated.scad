module XBee_Regulated(){
	board_thickness = 1.600000;
	eta = 0.1;
	board_size = [34.290000,27.940000,board_thickness];
	board_origin = [0.000000,0.000000];
	union(){
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
			translate([1.270,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 2
			translate([1.270,12.700,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 3
			translate([1.270,15.240,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 4
			translate([1.270,17.780,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 5
			translate([1.270,20.320,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
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
		translate([33.020,1.270,0])FIDUCIAL_1X2();  //U$7 FIDUCIAL1X2
		translate([19.050,-29.210,0])CREATIVE_COMMONS();  //U$8 CREATIVE_COMMONS
		translate([2.540,25.400,0])STAND_OFF();  //U$9 STAND-OFF
		translate([30.480,25.400,0])STAND_OFF();  //U$10 STAND-OFF
		translate([30.480,2.540,0])STAND_OFF();  //U$11 STAND-OFF
		translate([5.080,26.670,0])FIDUCIAL_1X2();  //U$16 FIDUCIAL1X2
		translate([5.080,13.970,0])rotate([0,0,270])XBEE_SMD();  //U2 XBEE-1B3
		translate([8.890,13.970,0])rotate([0,0,180])SOT23_5();  //U3 V_REG_LDOSMD
	}
}

module 1X11(){
color("Black")cube([25.5,2,4]);
}
XBee_Regulated(); //Show module
//Created by generate-scad.ulp version 0.1
