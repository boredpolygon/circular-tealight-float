$fn=640;
inner_diameter_mm = 40;
inner_h_mm = 10;

outer_diameter_1_mm = 40;
outer_diameter_2_mm = 75;
outer_h_mm = .5*25.4;

wall_mm = 1;


module tube(r1_mm, r2_mm, height, wall_mm)
{
    difference()
    {
        cylinder(h=height, r1= r1_mm+wall_mm, r2=r2_mm+wall_mm);
        cylinder(h=height, r1 = r1_mm, r2 = r2_mm);
    }
}
union()
{
    tube(inner_diameter_mm/2, inner_diameter_mm/2, inner_h_mm, wall_mm);
    #tube(outer_diameter_1_mm/2, outer_diameter_2_mm/2, outer_h_mm, wall_mm);
    cylinder(h=1, r=outer_diameter_1_mm/2);
}
