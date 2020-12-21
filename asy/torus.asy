settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));


size(3cm,0);

currentprojection=perspective(1.3,-1.5,.3);


triple  f(pair z) {return (sin(z.x)-sin(2*z.x)/18, cos(z.y)*(2+cos(z.x)+cos(2*z.x)/18), sin(z.y)*(2+cos(z.x)+cos(2*z.x)/18));}

draw((-3,0,0)--(0,0,0),black + linewidth(.7pt));

draw(surface(f,(0,0),(2*pi,2*pi), nu=20,nv=20,Spline),
     white,meshpen=black+thick(),nolight);
     
draw((0,0,0)--(3,0,0),black + linewidth(.7pt),Arrow3);  

     
triple l(real t) 
{
return (sin(t)-sin(2*t)/18,0,2+cos(t)+cos(2*t)/18);
}

path3 spiral = graph(l, 0, 2*pi, operator ..);
draw(spiral,dashed);     
