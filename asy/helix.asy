settings.render=0;
import solids;
import three;
size(1.5cm,0);
currentprojection=orthographic((1, 0, .5));

revolution cyl=cylinder((0, 0, -3), 1, 6, Z);


triple  f(real t) {return (cos(t),sin(t),t);}
path3 helix=graph(f,-3,3);

draw(helix,1bp+black);
draw(cyl);


draw((1,0,0)--(1,0,0)+1.2*(0,1/sqrt(2),1/sqrt(2)),black,Arrow3);
draw((1,0,0)--(1,0,0)+1.2*(-1,0,0),black,Arrow3);
draw((1,0,0)--(1,0,0)+1.2*(0,-1/sqrt(2),1/sqrt(2)),black,Arrow3);

dot((1,0,0));
