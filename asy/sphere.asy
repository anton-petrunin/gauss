settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));


size(2.4cm,0);

currentprojection=perspective(1,1,1.5);


triple  f(pair z) {return (sin(z.x)*cos(z.y),sin(z.x)*sin(z.y),cos(z.x));}

draw(surface(f,(0,0),(pi,2*pi), nu=12,nv=24,Spline),
     white,meshpen=black+thick(),nolight);
     
