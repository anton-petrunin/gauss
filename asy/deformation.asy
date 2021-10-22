settings.render=0;

import graph3;
import contour;
import gsl;

defaultpen(fontsize(10pt));


size(8cm,0);

currentprojection=orthographic(1,-1.5,0);

real s;
s=3.5;

triple  f1(pair z){return (E(z.x,1), cos(z.y)*cos(z.x), sin(z.y)*cos(z.x));}

draw(surface(f1,(-pi/2+.01,0),(pi/2-.01,2*pi), nu=12,nv=24,Spline),
     white,meshpen=black+thick(),nolight);
     
real a2,b2;
a2=sqrt(2);
b2=asin(1/a2)-.01;


triple  f2(pair z){return (E(z.x,a2)-s, cos(z.y)*a2*cos(z.x), sin(z.y)*a2*cos(z.x));}

draw(surface(f2,(-b2,0),(b2,2*pi), nu=7,nv=34,Spline),
     white,meshpen=black+thick(),nolight);

real a3,b3;
a3=2;
b3=asin(1/a3)-.01;


triple  f3(pair z){return (E(z.x,a3)-2*s, cos(z.y)*a3*cos(z.x), sin(z.y)*a3*cos(z.x));}

draw(surface(f3,(-b3,0),(b3,2*pi), nu=5,nv=48,Spline),
     white,meshpen=black+thick(),nolight);
     
real a4,b4;
a4=1/sqrt(2);



triple  f4(pair z){return (E(z.x,a4)+s, cos(z.y)*a4*cos(z.x), sin(z.y)*a4*cos(z.x));}

draw(surface(f4,(-pi/2+.01,0),(pi/2-.01,2*pi), nu=12,nv=17,Spline),
     white,meshpen=black+thick(),nolight);
     
real a5,b5;
a5=1/2;


triple  f5(pair z){return (E(z.x,a5)+2*s, cos(z.y)*a5*cos(z.x), sin(z.y)*a5*cos(z.x));}

draw(surface(f5,(-pi/2+.01,0),(pi/2-.01,2*pi), nu=12,nv=12,Spline),
     white,meshpen=black+thick(),nolight);
