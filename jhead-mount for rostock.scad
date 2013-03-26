//Disable $fn and $fa, do not change these
$fn=0;
$fa=0.01;

use <jhead.scad>

*%rotate([180,0,0]) hotend_jhead();

jhead_mount();

module jhead_mount() {

	union()
	{
		difference (){
			union()
			{
				scale([1.3,1,1]) translate([0,0,-4.5]) cylinder(h=9,r=14,center=true);
				translate([25,0,-4.5]) cylinder(h=9,r=8,center=true);
				translate([-25,0,-4.5]) cylinder(h=9,r=8,center=true);
				translate([0,0,-4.5]) cube([50,16,9],center=true);
			}
			//holding slot
			translate([0,0,-2.4]) cylinder(h=5.2,r=8.1,center=true,$fs=1);
			translate([0,-8,-2.4]) cube([15.8,16,5.2],center=true);
			translate([0,0,-5]) cylinder(h=11,r=6.1,center=true,$fs=1);
			translate([0,-10,-5]) cube([11.8,20,11],center=true);
			//holes
			translate([25,0,-4.5]) cylinder(h=10,r=3.3,center=true,$fs=0.5);
			translate([-25,0,-4.5]) cylinder(h=10,r=3.3,center=true,$fs=0.5);
			// trimm slot
			translate([0,-16,-4.5]) cube([50,16,10],center=true);
		}
	}
}