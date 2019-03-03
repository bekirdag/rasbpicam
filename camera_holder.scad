/*
Project name: Raspberry Pi Zero camera case
Project url: https://github.com/bekirdag/rasbpicam
Licence: GNU
Part: Part no#3, Rasbpi cam mount

Author: Bekir Dağ
Author website: https://bekirdag.com
Author email: bekir@piyotecom
*/

$fn = 100;

module camera_mount(){
  camera_mount_pins();
  difference(){
      //base
      union(){
          cube([25,24,2]);
          color("blue",0.5)translate([-2.9,-3.2,0])cube([31,27.2,2]);

          translate([-3.55,-3.2,0])cube([2,27.2,5.2]);
          translate([26.5,-3.2,0])cube([2,27.2,5.2]);
          
          translate([-3.55,-4.05,0])cube([32.05,2,5.2]);
          
          translate([-3.55,-4.05,-1])cube([32.05,30.05,1]);
          
          rotate([10,0,0])translate([4,23.46,-5.152])cube([17,24.5,1]);
          color("blue",0.5)translate([3,24,-1])cube([1,24,6.2]);
          translate([21,24,-1])cube([1,24,6.2]);
          translate([-3.55,24,0])cube([7,2,5.2]);
          translate([21.5,24,0])cube([7,2,5.2]);
          

          
      }
      union(){
          
          color("red",0.5)translate([-2.9,-2.05,0.99])rotate([90,180,90]) corner();
          color("red",0.5)translate([-1.6,27.05,0.99])rotate([90,180,0]) corner();
          color("red",0.5)translate([26.52,-10.05,0.99])rotate([90,180,180]) corner();

          
          translate([-1.56,-2.06,-2])rotate([0,0,180]) corner();
          translate([-1.56,24.01,-2])rotate([0,0,90]) corner();
          translate([26.5,24.01,-2])rotate([0,0,0]) corner();
          translate([26.51,-2.6,-2])rotate([0,0,270]) corner();
          
          rotate([10,0,0])translate([-4,23.46,-10.152])cube([33,24.5,5]);
          
          //
          translate([5.5,1.55,-0.5])cube([14.1,14.1,6]);
          
          translate([3.4,8.5,-0.5])cylinder(6,2.3,2.3);
          translate([3.6,6.2,-0.5])cube([2.4,4.6,6]);
          translate([21.7,8.5,-0.5])cylinder(6,2.3,2.3);
          translate([19.1,6.2,-0.5])cube([2.4,4.6,6]);
          
          translate([1.1,22.1,0.5])cube([22.6,1.9,6]);
          translate([1.6,17.9,0.5])cube([21.6,4.2,6]);
          
          color("red",0.5)translate([12.55,8.6,-5.5])cylinder(15,7.5,7.5);
      }
  }
}

module camera_mount_pins(){    
  translate([1.8,1.9])cylinder(5,0.8,0.8);
  translate([23.1,1.9])cylinder(5,0.8,0.8);
  translate([1.8,15.3])cylinder(5,0.8,0.8);
  translate([23.1,15.3])cylinder(5,0.8,0.8);
}



module hole(){
    difference(){
      color("green",0.5) translate([4,4.9,0]) cylinder(6,2.5,2.5);
      color("green",0.5) translate([4,4.9,-0.01]) cylinder(7,1.74,1.74);
    }
}

module corner(){
    difference(){
        cube([2,2,60]);
        translate([0,0,-0.1]) cylinder(60,2,2);
    }
}

camera_mount();






















