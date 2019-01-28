$fn=50;

use <raspberry_pi_zero_top.scad>

module nail_to_wall(){
    wall_mount();
    translate([8.2,0,0])wall_mount();
    translate([16.4,0,0])wall_mount();    
    
    translate([0,0,-2])cube([20.4,8,3]);
    
    translate([6,0,-8])cube([8,8,8]);
    
    translate([10,4,-10])sphere(6);
}

nail_to_wall();