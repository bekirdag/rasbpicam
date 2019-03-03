/*
Project name: Raspberry Pi Zero camera case
Project url: https://github.com/bekirdag/rasbpicam
Licence: GNU
Part: Part no#5, Wall mount

Author: Bekir Dağ
Author website: https://bekirdag.com
Author email: bekir@piyotecom
*/

$fn=50;

use <raspberry_pi_zero_top.scad>

module nail_to_wall(){
    wall_mount();
    translate([8.2,0,0])wall_mount();
    translate([16.4,0,0])wall_mount();    
    
    translate([0,0,-2])cube([20.4,8,3]);
    
    translate([10,4,-10])cylinder(10,3,3);
    
    translate([10,4,-10])sphere(6.2);
}

nail_to_wall();