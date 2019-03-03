/*
Project name: Raspberry Pi Zero camera case
Project url: https://github.com/bekirdag/rasbpicam
Licence: GNU
Part: Part no#1, Rasbpi case part 1

Author: Bekir Dağ
Author website: https://bekirdag.com
Author email: bekir@piyotecom
*/

$fn=100;

use <camera_holder.scad>
use <raspberry_pi_zero_top.scad>

module raspberry_pi_zero_case_bottom() {
    
    difference(){
        union(){
            //color("red",0.5)cube([66,34.4,3]);
            translate([-11,-3,-11])color("pink",0.5)cube([80,40.4,14]);
            
            color("blue",0.5){
                translate([4,4.9,-6])cylinder(6,1.72,1.72);
                translate([4,27.9,-6])cylinder(6,1.72,1.72);
                translate([62.3,4.9,-6])cylinder(6,1.72,1.72);
                translate([62.4,27.9,-6])cylinder(6,1.72,1.72);
            }
            
            
            // camera holder
            // color("blue",0.5)rotate([0,0,90])translate([2.8,-47,3])cube([28,26,2]);
            
        }
      
        union(){
            translate([-8,0,-12.1])color("brown",0.5)cube([74,34.4,12.1]);
            
            translate([19.4,3.5,-3])cube([25.5,26.5,4]); 
            translate([26.0,12.25,-0.99])cube([9,9,4]);
            
            translate([33.8,12.25,-1.5])cube([11,9,4]);
            
            translate([48,10.8,-10])cube([20,15,8.5]);
            
            
            translate([5.5,27.71,-6])cube([11,10,7]);
            translate([18,27.71,-6])cube([11,10,7]);
            
            
            translate([-9.05,-1.05,-14])rotate([0,0,180]) corner();
            translate([-9.05,35.4,-14])rotate([0,0,90]) corner();
            translate([67.05,-1.05,-14])rotate([0,0,270]) corner();
            translate([67,35.4,-14])rotate([0,0,0]) corner();
        }
    }
    rotate([0,0,90])translate([4.45,-43.7,-2])camera_mount_pins2();
}

module camera_mount_pins2(){    
  translate([1.8,1.7])cylinder(5,0.8,0.8);
  translate([22.8,1.7])cylinder(5,0.8,0.8);
  translate([1.8,14.3])cylinder(5,0.8,0.8);
  translate([22.8,14.3])cylinder(5,0.8,0.8);
}

raspberry_pi_zero_case_bottom();

