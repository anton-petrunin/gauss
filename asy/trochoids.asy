settings.render=0;


import graph;
size(8cm,0);

pair a(real t) { return (t+(1)*sin(t), (1)*cos(t));}
path aa = graph(a, 0, 2*pi);
draw(aa);


pair b(real t) { return (t+(-1)*sin(t), (-1)*cos(t));}
path bb = graph(b, 0, 2*pi);
draw(bb);

pair c(real t) { return (t+(-.5)*sin(t), (-.5)*cos(t));}
path cc = graph(c, 0, 2*pi);
draw(cc);

pair d(real t) { return (t+(-1.5)*sin(t), (-1.5)*cos(t));}
path dd = graph(d, 0, 2*pi);
draw(dd);

pair e(real t) { return (t+(-0)*sin(t), (-0)*cos(t));}
path ee = graph(e, 0, 2*pi);
draw(ee);

pair f(real t) { return (t+(.5)*sin(t), (.5)*cos(t));}
path ff = graph(f, 0, 2*pi);
draw(ff);

pair g(real t) { return (t+(1.5)*sin(t), (1.5)*cos(t));}
path gg = graph(g, 0, 2*pi);
draw(gg);

