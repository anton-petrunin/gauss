settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));

size(4cm,0);

currentprojection=orthographic(3,2,1.2);
currentlight=(1,1,1);

real f(pair z) {return (z.y^2/2-z.x^2/3+z.y^3/10);}
real l(pair z) {return 0;}

draw((0,-1,0)--(0,1.3,0),black,Arrow3);

draw(surface(f,(-1,-1),(1,1),nx=10,Spline),
     white,meshpen=black+thick(),nolight);
     
//draw(surface(l,(-1,-1),(1,1),nx=10,Spline), white+opacity(0.5));     
     
real[] lignesniveaux={0};  
draw(lift(f,contour(f,(-1,-1),(1,1),lignesniveaux)),1bp+black);

draw((-1,0,0)--(1.3,0,0),black,Arrow3);
draw((0,0,0)--(0,0,1.3),black,Arrow3);


