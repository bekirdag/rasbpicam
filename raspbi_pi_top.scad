$fn=100;

use <camera_holder.scad>

module raspberry_pi_zero_case_top(){
  //translate([-41.5,-42.1])import("RPi_Zero_Case_-_Top_-_Heat_Sink_-_Open_HDMI_-_1.2_1.3.stl", convexity=3);
    difference(){
        
        union(){
            color("red",0.5)cube([66,34.4,3]);
            hole();
            translate([58.3,0,0])hole();
            translate([58.4,23,0])hole();
            translate([0,23,0])hole();
        }
      
        union(){
            translate([28,7,-0.1])cube([15,15,4]);
            translate([72,18,-0.1])cylinder(10,10,10);
            translate([47.55,0,1])cube([11.85,8.7,4]);
            
            translate([4,4.9,-0.1])cylinder(6,1.74,1.74);
            translate([4,27.9,-0.1])cylinder(6,1.74,1.74);
            translate([62.3,4.9,-0.1])cylinder(6,1.74,1.74);
            translate([62.4,27.9,-0.1])cylinder(6,1.74,1.74);
            
            translate([1.99,1.99,-0.1])rotate([0,0,180]) corner();            
            translate([1.99,32.4,-0.1])rotate([0,0,90]) corner();
            translate([64,1.99,-0.1])rotate([0,0,270]) corner();
            translate([64,32.4,-0.1])rotate([0,0,0]) corner();
        }
    }
}

raspberry_pi_zero_case_top();