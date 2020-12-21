settings.render=0;

import graph3;
defaultpen(fontsize(10pt));


size(4cm,0);

currentprojection=orthographic(2,1,2);
currentlight=(1,1,1);

real f(pair z) {return (z.y^2/2+z.x^2/3+z.y*z.x/6+z.y^3/5);}

draw((-1,0,0)--(1.2,0,0),black + linewidth(.7pt),Arrow3);
draw((0,-1,0)--(0,1.2,0),black + linewidth(.7pt),Arrow3);
draw(surface(f,(-1,-1),(1,1),nx=10,Spline),
     white,meshpen=black+thick(),nolight);
draw((0,0,0)--(0,0,1.2),black + linewidth(.7pt),Arrow3);

