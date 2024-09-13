settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));

size(0,3.3cm);

currentprojection=perspective(-2,-1.5,.2);

triple  f(pair z)
{return
(
log(exp(z.x)*(1+sqrt(1-exp(-2*z.x))))-sqrt(1-exp(-2*z.x)),
cos(z.y)*exp(-z.x),
sin(z.y)*exp(-z.x)
);
}

draw(surface(f,(0,0),(2*pi,2*pi), nu=24,nv=24,Spline),
     white,meshpen=black+thick(),nolight);
