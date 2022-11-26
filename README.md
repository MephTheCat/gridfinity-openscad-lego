# LEGO Compatible Gridfinity Module Generator

A LEGO compatible [Gridfinity](https://www.youtube.com/watch?v=ra_9zU-mnl8) module generator written in OpenSCAD.  This generator relies on [Kennetek's Gridfinity OpenSCAD implementation](https://github.com/kennetek/gridfinity-rebuilt-openscad) and is included as a submodule.

## Command Line Usage
To simply generate STLs, use the following command.  In this case, for a module spanning 2 by 2 Gridfinity units.

`openscad -o Lego_2x2.stl gridfinity-lego-generator.scad -D "g_x=2;g_y=2"`


## Library Usage
If you wish to use this as part of a larger OpenSCAD project, the following modules are available.

`lego_stud(studs_x, studs_y)`, which generates a grid of `studs_x` by `studs_y`Lego studs.

`gridfinity_lego(grid_x, grid_y)`, which generates a Gridfinity module that is `grid_x` by `grid_y` Gridfinity units (42mm) in size.


## A Note on Compatibility
Lego studs are spaced 8mm apart center-to-center and the Gridfinity system is based on 42mm square modules.  Because 8 is not an integer multiple of 42, Lego bricks cannot bridge between separate modules.


## Acknowledgements
A big thank you to [Zack Freedman](https://www.youtube.com/@ZackFreedman) of Void Star Labs for designing and publishing specifications on the Gridfinity system.

Additionally, thank you to Kennetek on the Void Star Discord for telling me about his OpenSCAD implementation of the Gridfinity system, as it dramatically simplified my code.