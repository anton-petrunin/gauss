settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));


size(7cm,0);

currentprojection=perspective(.3,.4,0);


triple  f(pair z) {return (z.x,.2*sin(z.x)*cos(z.y),.2*sin(z.x)*sin(z.y));}

draw(surface(f,(0.05,0),(pi-0.01,2*pi), nu=24,nv=12,Spline),
     white,meshpen=black+thick(),nolight);
     
