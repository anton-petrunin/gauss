settings.render=0;

import graph3;
defaultpen(fontsize(10pt));


size(4cm,0);

currentprojection=orthographic(2,1,2);
currentlight=(1,1,1);

real f(pair z) {return -(z.y^2/2+z.x^2/3+z.y*z.x/6+z.y^3/5);}


draw(surface(f,(-1,-1),(1,1),nx=10,Spline),
     white,meshpen=black+thick(),nolight);
     
triple l(real t) 
{
return ((t+t^3)/2,t,-(t^2/2+((t+t^3)/2)^2/3+(t*(t+t^3)/2)/6+t^3/5));
}
path3 spiral = graph(l, -1, 1, operator ..);
draw(spiral,black + linewidth(1.4pt));

draw((0,0,0)--(1.4/sqrt(5),2*1.4/sqrt(5),0),black + linewidth(.7pt),Arrow3);
draw((0,0,0)--(-2*1.4/sqrt(5),1.4/sqrt(5),0),black + linewidth(.7pt),Arrow3);
draw((0,0,0)--(0,0,1.4),black + linewidth(.7pt),Arrow3);

