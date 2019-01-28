/*
Project name: Raspberry Pi Zero camera case
Project url: https://github.com/bekirdag/rasbpicam
Licence: GNU
Part: Part no#4, Ball mount

Author: Bekir Dağ
Author website: https://bekirdag.com
Author email: bekir@piyotecom
*/

$fn=50;


module ball_mount(){
    
    difference(){
        sphere(7.5);
        union(){
            sphere(6);
            translate([-10,-10,4])cube([20,20,20]);
            translate([-1,-10,-4])cube([2,20,20]);
            translate([-10,-1,-4])cube([20,2,20]);
        }
    }
    
    translate([0,0,-12])cylinder(5,3,3);
}

module holes(){
    difference(){
        union(){
            translate([0,12,-12])cylinder(4,5,5);
            translate([0,-12,-12])cylinder(4,5,5);
            translate([-5,-12,-12])cube([10,24,4]);
        }
        union(){
            translate([0,12,-12.1])cylinder(6,2,2);
            translate([0,-12,-12.1])cylinder(6,2,2);
        }
    }
}
            
ball_mount();
holes();