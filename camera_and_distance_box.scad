use <HC-SR04.scad>
use <sg90_head.scad>;

$fn = 50;

module camera_and_distance_box(){
    
    /*
    color("orange",0.5){
        difference(){
            union(){
                cube([78.5,14,30]);

            }
            union(){
                translate([2,-1.99,2])cube([74.5,15,26]);
                translate([2,6,25])cube([25,5,10]);
                translate([48,4,25])cube([10,9,10]);
                translate([-1,10,16.5])rotate([0,90,0])sg90head();
                translate([70,10,16.5])rotate([0,90,0])cylinder(r=2.5,h=10);
            }
        }
    }
    */
        
    difference(){
        color("blue",0.5)translate([2,0,2])cube([74.5,4,26]);
        union(){
            color("green",0.5)translate([0,3,47.1])rotate([0,90,-90])raspbi_cam_shape();
            translate([53,5.5,12.6])rotate([90,0,0])HCSR04();
            
        }
        
    }

    //color("green",0.5)translate([0,4,47.1])rotate([0,90,-90])raspbi_cam_shape();
    color("green",0.5)translate([0,0,0])rotate([90,0,0])camera_mount_pins();
    //translate([53,5,12.6])rotate([90,0,0])HCSR04();
    
}

module raspbi_cam_shape(){
  translate([19.4,3.5,-3])cube([25.5,26.5,4]); 
  translate([26.0,12.25,-0.99])cube([9,9,4]);          
  translate([33.8,12.25,-1.5])cube([11,9,4]);
  rotate([0,0,90])translate([4.45,-43.7,-2])camera_mount_pins();
}

module camera_mount_pins(){    
  translate([1.8,1.7])cylinder(5,0.8,0.8);
  translate([22.8,1.7])cylinder(5,0.8,0.8);
  translate([1.8,14.3])cylinder(5,0.8,0.8);
  translate([22.8,14.3])cylinder(5,0.8,0.8);
}

camera_and_distance_box();