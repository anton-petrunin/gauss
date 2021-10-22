settings.render=0;

import graph;
size(3cm,0);

real a=1;
real b=.6;

pair el(real t) { return (a*cos(t), b*sin(t));}
path ell = graph(el, 0, 2*pi);
draw(ell);


pair ast(real t) { return (((a^2-b^2)/a)*cos(t)^3, ((b^2-a^2)/b)*sin(t)^3);}
path astr = graph(ast, 0, 2*pi);
draw(astr);
