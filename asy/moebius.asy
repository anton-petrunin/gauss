settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));


size(4cm,0);

currentprojection=perspective(1.5,-2,1.5);


triple  f(pair z) {return (cos(z.x)*(2+z.y*cos(z.x/2)),sin(z.x)*(2+z.y*cos(z.x/2)),z.y*sin(z.x/2));}

draw(surface(f,(0,-.5),(2*pi,.5), nu=50,nv=5,Spline),
     white,meshpen=black+thick(),nolight);
