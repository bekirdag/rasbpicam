$fn=100;

use <camera_holder.scad>
use <raspberry_pi_zero_top.scad>

module raspberry_pi_zero_case_bottom() {
    
    /*
    color("purple",0.5){
        translate([4,4.9,-6])cylinder(6,1.72,1.72);
        translate([4,27.9,-6])cylinder(6,1.72,1.72);
        translate([62.3,4.9,-6])cylinder(6,1.72,1.72);
        translate([62.4,27.9,-6])cylinder(6,1.72,1.72);
    }
    */
    
    difference(){
        union(){
            //color("red",0.5)cube([66,34.4,3]);
            translate([-3,-3,-8])color("pink",0.5)cube([72,40.4,11]);
            
            color("purple",0.5){
                translate([4,4.9,-6])cylinder(6,1.72,1.72);
                translate([4,27.9,-6])cylinder(6,1.72,1.72);
                translate([62.3,4.9,-6])cylinder(6,1.72,1.72);
                translate([62.4,27.9,-6])cylinder(6,1.72,1.72);
            }
            

            // camera holder
            color("pink",0.5)rotate([0,0,90])translate([2.8,-47,3])cube([28,26,2]);
            
        }
      
        union(){
            translate([0,0,-9.1])color("brown",0.5)cube([66,34.4,9.1]);
            color("pink",0.5)rotate([0,0,90])translate([4.0,-45.2,2.95])cube([25.6,27,3.1]);

            color("green",0.5)translate([36.5,6.9,2.2])cylinder(1,2,2);
            color("green",0.5)translate([36.5,26.8,2.2])cylinder(1,2,2);
            
            translate([-4,8.3,-6])cube([10,18,6]);            
            translate([52,10.8,-10])cube([20,15,8.5]);
            
            translate([45.5,-3.01,-7])cube([13.85,11.7,9]);
            
            translate([5.5,-3.01,-7])cube([11,10,9]);
            translate([18,-3.01,-7])cube([11,10,9]);
            
            rotate([0,0,90])translate([4.3,-45,1])camera_mount_pins();
            translate([-1.05,-1.05,-10])rotate([0,0,180]) corner();            
            translate([-1.05,35.4,-10])rotate([0,0,90]) corner();
            translate([67.05,-1.05,-10])rotate([0,0,270]) corner();
            translate([67,35.4,-10])rotate([0,0,0]) corner();
        }
    }
}

raspberry_pi_zero_case_bottom();
//translate([0,0,-9])raspberry_pi_zero_case_top();

//translate([45,29.4,10])rotate([180,0,-90])camera_mount();


