settings.render=0;
import solids;
import three;
size(4cm,0);
currentprojection=orthographic((1.5, 1, .4));

revolution cyl=cylinder((.5, 0, -1.3), .5, 2.6, Z);


triple  f(real t) {return (cos(t)^2,cos(t)*sin(t),sin(t));}
path3 viviani=graph(f,0,2*pi);

draw(viviani,1bp+black);
draw(sphere(r=1).silhouette());
draw(cyl);

draw((-1.2,0,0)--(2,0,0),black,Arrow3);
draw((0,-1.2,0)--(0,1.6,0),black,Arrow3);
draw((0,0,-1.3)--(0,0,1.8),black,Arrow3);
