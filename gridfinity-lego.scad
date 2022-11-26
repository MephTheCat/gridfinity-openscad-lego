include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

STUD_RADIUS  = 2.4;
STUD_HEIGHT  = 1.7;
STUD_SPACING = 8.0;
GRID_SPACING = 42.0;

module lego_stud(studs_x=1, studs_y=1) {
	color("tomato") {
		total_x = (studs_x-1) * STUD_SPACING;
		total_y = (studs_y-1) * STUD_SPACING;
		
		translate([-total_x/2, -total_y/2, 0])
		for (x = [0:studs_x-1]) {
			translate([x * STUD_SPACING, 0.0, 0.0]) {
				for (y = [0:studs_y-1]) {
					translate([0.0, y * STUD_SPACING, 0.0]) {
						cylinder(STUD_HEIGHT, STUD_RADIUS, STUD_RADIUS, $fn=50);
					}
				}
			}
		}
	}
}

module gridfinity_lego(grid_x, grid_y) {
	gridfinityBase(grid_x, grid_y, 42, 0, 0, 1);
	
	translate([0, 0, 6.4]) {
		lego_stud(5 * grid_x, 5 * grid_y);
	}
}