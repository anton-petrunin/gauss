input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(1) 
save u;
u:=1cm;

save p; path p[];
p1=(0,0)*u..(0,1)*u..(2,1)*u..(2,0)*u..(1,-.3)*u..cycle;
p2=(3,-.2)*u..(3,1)*u..(5,1)*u..(5,-.2)*u..(4,.3)*u..cycle;

draw p1 penbold;
draw p2 penbold;

hatchfill p1  withcolor (87, 1.5mm, -.5bp);
hatchfill p2  withcolor (87, 1.5mm, -.5bp);

label.bot(btex convex etex, (1,-.3)*u);
label.bot(btex not convex etex, (4,-.3)*u);

endfig;

beginfig(2) 
save u;
u:=1cm;

save p; path p[];
p1=(0,0)*u..(0,1)*u..(2,1)*u..(2,0)*u..(1,-.5)*u..cycle;

draw p1 penbold;

for i = 1 upto 20:
draw (point (directiontime ((1,0) rotated (18*i)) of p1) of p1)--(point (directiontime ((1,0) rotated (18*i)) of p1) of p1)+(1,0)*u rotated (18*i) penhair;
endfor 

draw
for i = 1 upto 19:
(point (directiontime ((1,0) rotated (18*i)) of p1) of p1)+(1,0)*u rotated (18*i)..
endfor
cycle penbold;

endfig;

beginfig(3) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.4,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;


beginfig(4) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.9,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;

beginfig(5) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.745,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;

beginfig(6) 
save u;
u:=.3cm;

draw (0,0)*u--(6,0)*u--(6,6)*u--(0,6)*u--cycle penhair;
draw (0,0)*u--(6,6)*u penbold;
draw (0,0)*u--(1,0)*u--(1,1)*u--(2,1)*u--(2,2)*u--(3,2)*u--(3,3)*u--(4,3)*u--(4,4)*u--(5,4)*u--(5,5)*u--(6,5)*u--(6,6)*u penbold;

endfig;

beginfig(7) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.c=(2,2.5)*u;
z.d=(0,2.5)*u;

z.u=.3[z.a,z.b];
z.v=.4[z.b,z.c];
draw z.u--z.v;

z.w=.7[z.u,z.v];
z.x=.6[z.c,z.d];
draw z.w--z.x;

z.y=.5[z.w,z.x];
z.z=.3[z.d,z.a];
draw z.y--z.z;

z.p=.5[z.y,z.z];
z.q=.9[z.d,z.a];
draw z.p--z.q;

z.r=.5[z.p,z.q];
z.s=.5[z.u,z.v];
draw z.r--z.s;

draw z.u..z.v..z.x..z.z..z.q..cycle penbold;

hatchfill z.r--z.s--z.w--z.y--z.p--cycle  withcolor (87, 1.5mm, -.5bp);
draw z.r--z.s--z.w--z.y--z.p--cycle penbold;

endfig;

beginfig(8) 
save u;
u:=1cm;

z.a=origin;
z.b=(1,0)*u;
z.c=(1,1)*u;
z.d=(0,1.5)*u;

save p; path p[];

p0=z.a..z.b..z.c..z.d;
p1=p0 rotatedabout (z.b, -angle(z.c-z.b));
p2=p1 rotatedabout (point 2 of p1, -angle( (point 3 of p1) - (point 2 of p1)));

draw p0 penbold;
draw z.b--z.c--z.d dashed evenly;
draw z.a--point 3 of p2 dashed evenly;
draw subpath (1,2) of p1 penbold;
draw subpath (2,3) of p2 penbold;

endfig;


beginfig(9) 
save u;
u:=1cm;

z.a=origin;
z.b=(1,0)*u;
z.c=z.b rotated 60;
z.bc=z.b rotated 30;
z.ab=z.a rotatedabout (z.c, 30);
z.ca=z.c rotatedabout (z.b, 30);

draw z.a..z.ab..z.b--z.b..z.bc..z.c--z.c..z.ca..z.a--cycle penbold;
hatchfill z.a..z.ab..z.b--z.b..z.bc..z.c--z.c..z.ca..z.a--cycle  withcolor (77, 1.5mm, -.5bp);
draw circle (z.a,z.b-z.a)  dashed evenly;
draw circle (z.b,z.c-z.b)  dashed evenly;
draw circle (z.c,z.a-z.c)  dashed evenly;

endfig;

beginfig(10) 
save u;
u:=1cm;

z.a=(1,2)*u;
z.a1=(2,1)*u;
z.a2=(2,.2)*u;
z.b=(1.5,0)*u;
z.b1=(1.6,-.3)*u;
z.b2=(2,-1)*u;
z.c=(1,-1)*u;

draw z.a..z.a1..z.a2..z.b penbold;
draw z.b..z.b1..z.b2..z.c penbold;
dOt z.a;
dOt z.b;
dOt z.c;

label.lft(btex $\alpha(a)$ etex, z.a);
label.lft(btex $\alpha(b)=\beta(b)$ etex, z.b);
label.lft(btex $\beta(c)$ etex, z.c);

endfig;

beginfig(11) 
save u;
u:=1cm;

z.o=origin;
z.a1=(1.2,.5)*u;
z.a2=(1.1,0)*u;
z.a3=(1.1,-.5)*u;
z.a4=(1.3,0)*u;

draw z.a1..z.a2..z.a3--z.a3..z.a4..z.a1--cycle;
hatchfill z.a1..z.a2..z.a3--z.a3..z.a4..z.a1--cycle  withcolor (57, 1.5mm, -.5bp);

z.b1=(-.5,1.2)*u;
z.b2=(0,1.1)*u;
z.b3=(.5,1.2)*u;
z.b4=(0,1.4)*u;

draw z.b1..z.b2..z.b3--z.b3..z.b4..z.b1--cycle;
hatchfill z.b1..z.b2..z.b3--z.b3..z.b4..z.b1--cycle  withcolor (57, 1.5mm, -.5bp);

draw z.a1+z.b3..z.a4+z.b3..z.a3+z.b3--z.a3+z.b3..z.a3+z.b2..z.a3+z.b1--z.a3+z.b1..z.a2+z.b1..z.a1+z.b1--z.a1+z.b1..z.a1+z.b4..z.a1+z.b3--cycle;
hatchfill z.a1+z.b3..z.a4+z.b3..z.a3+z.b3--z.a3+z.b3..z.a3+z.b2..z.a3+z.b1--z.a3+z.b1..z.a2+z.b1..z.a1+z.b1--z.a1+z.b1..z.a1+z.b4..z.a1+z.b3--cycle  withcolor (57, 1.5mm, -.5bp);

z.a=(1.2,.2)*u;
z.b=(.1,1.2)*u;

drawarrow z.o--z.a;
drawarrow z.o--z.b;
drawarrow z.a--(z.a+z.b);
drawarrow z.b--(z.a+z.b);

dOt z.o;


endfig;

beginfig(12) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(.8,1)*u;
z.a2=(2.8,.7)*u;
z.a3=(3,0)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3;

draw p0;
z.b0=z.a0+2*direction 0 of p0;
drawarrow z.a0--z.b0;
z.b3=z.a3+3*direction 3 of p0;
drawarrow z.a3--z.b3;
drawarrow z.a0--z.a3;

dOt z.a0,z.a3;

label.lft(btex $\alpha'(a)$ etex, z.b0);
label.rt(btex $\alpha'(b)$ etex, z.b3);
label.top(btex $\alpha(b)-\alpha(a)$ etex, .5[z.a0,z.a3]);
endfig;

beginfig(13) 
save u;
u:=1cm;

z.a1=(0,0)*u;
z.a2=(1,0)*u;
z.a3=(0,1)*u;
z.a4=(2,1)*u;
z.a5=(1,2)*u;
z.a6=(.5,3)*u;
z.a7=(.2,2)*u;
z.a8=(3,2)*u;
z.a9=(3,3)*u;


save p; path p[];
p0=z.a1--z.a2--z.a3--z.a4--z.a6--z.a7--z.a8--z.a9--cycle;

draw p0;
fill p0 withcolor black;

label(btex $U$ etex, ((2.5,.5)*u));

endfig;

beginfig(14) 
save u;
u:=.5cm;

z.a1=(-2,0)*u;
z.a2=(2,0)*u;
z.a3=(-1,3)*u;
z.a4=(-3,1)*u;
z.a5=(3,1)*u;
z.a6=(1,3)*u;

save p; path p[];
p0=z.a1--z.a2--z.a3--z.a4--z.a5--z.a6--cycle;


fill p0 withcolor black;

z.x=whatever[z.a2,z.a3]=whatever[z.a4,z.a5];
z.y=whatever[z.a6,z.a1]=whatever[z.a4,z.a5];
z.z=whatever[z.a2,z.a3]=whatever[z.a6,z.a1];

fill z.x--z.y--z.z--cycle withcolor white;

draw p0;

label(btex $D$ etex, .6[z.z,.5[z.x,z.y]]);
label(btex $U$ etex, .5[z.a3,z.a6]);
endfig;

beginfig(15) 
save u;
u:=1cm;

z.o=origin;
z.p1=(-1,1)*u;
z.p2=(0,2)*u;
z.p3=(1,2.1)*u;

z.sh=(4,0)*u;

z.oo=z.o+z.sh;
z.q1=z.p1+z.sh;
z.q2=z.p2+z.sh;
z.q3=(z.p3+z.sh) reflectedabout (z.oo,z.q2);

draw z.o--z.p1--z.p2--z.p3--z.o--z.p2;
draw z.oo--z.q1--z.q2--z.q3--z.oo--z.q2;

fill_angle(z.p3, z.p2, (2[z.p1,z.p2]), 10);
fill_angle(z.q3, z.q2, (2[z.q1,z.q2]), 10);

dOt z.o,z.oo,z.p1,z.p2,z.p3,z.q1,z.q2,z.q3;

label.bot(btex $o$ etex, z.o);
label.bot(btex $o$ etex, z.oo);

label.rt(btex $p_{i-1}$ etex, z.p1+(2,0));
label.top(btex $p_i$ etex, (z.p2+(-2,0)));
label.top(btex $p_{i+1}$ etex, z.p3);

whitelabel.rt(btex $p_{i-1}$ etex, z.q1+(2,0));
label.top(btex $p_i$ etex, (z.q2+(-2,0)));
label.top(btex $p_{i+1}$ etex, z.q3);

endfig;

beginfig(16) 
save u;
u:=1cm;

z.o=origin;
z.p1=(.7,.1)*u;
z.p2=(-.5,.5)*u;
z.p3=(.3,-.7)*u;
z.p4=(.5,.7)*u;
z.p5=(.7,.4)*u;

draw circle(z.o,1*u);

save p; path p[];
p0=z.p1--z.p2--z.p3--z.p4--z.p5--cycle;

draw p0 penbold;

z.q0=(2,-.3)*u;
z.q1=z.q0+(abs(z.p1-z.p5),0);
z.q2=z.q1+(abs(z.p2-z.p1),0);
z.q3=z.q2+(abs(z.p3-z.p2),0);
z.q4=z.q3+(abs(z.p4-z.p3),0);
z.q5=z.q4+(abs(z.p5-z.p4),0);
z.q6=z.q5+(abs(z.p1-z.p5),0);

z.s0=(z.q0+(z.o-z.p5 rotated -angle(z.p1-z.p5))) reflectedabout (z.q0,z.q1);
z.s1=z.q1+(z.o-z.p1 rotated -angle(z.p2-z.p1));
z.s2=z.q2+(z.o-z.p2 rotated -angle(z.p3-z.p2));
z.s3=z.q3+(z.o-z.p3 rotated -angle(z.p4-z.p3));
z.s4=(z.q4+(z.o-z.p4 rotated -angle(z.p5-z.p4))) reflectedabout (z.q0,z.q1);
z.s5=(z.q5+(z.o-z.p5 rotated -angle(z.p1-z.p5))) reflectedabout (z.q0,z.q1);

draw z.q6--z.s5--z.q5--z.s4--z.q4--z.s3--z.q3--z.s2--z.q2--z.s1--z.q1--z.s0--z.q0;
draw z.s5--z.s4--z.s3--z.s2--z.s1--z.s0 dashed evenly;
draw z.q0--z.q6 penbold;

draw z.s0--z.s5 penhair;

draw z.o--z.p1 penhair;
draw z.o--z.p2 penhair;
draw z.o--z.p3 penhair;
draw z.o--z.p4 penhair;
draw z.o--z.p5 penhair;

dOt z.o,z.p1,z.p2,z.p3,z.p4,z.p5,z.q0,z.q1,z.q2,z.q3,z.q4,z.q5,z.q6, z.s0, z.s1, z.s2, z.s3, z.s4, z.s5;

whitelabel.lft(btex $o$ etex, z.o);
whitelabel.rt(btex $p_0$ etex, z.p5);
whitelabel.rt(btex $p_1$ etex, z.p1);
whitelabel.lft(btex $p_2$ etex, z.p2);
label.bot(btex $q_0$ etex, z.q0);
label.bot(btex $q_1$ etex, z.q1+(3,0));
label.bot(btex $q_2$ etex, z.q2+(3,0));
label.bot(btex $\dots$ etex, .5[z.q2,z.q5]+(0,-3));
label.bot(btex $q_n$ etex, z.q5+(3,0));
label.top(btex $s_0$ etex, z.s0);
label.top(btex $s_1$ etex, z.s1);
label.top(btex $s_n$ etex, z.s5);

endfig;

beginfig(17) 
save u;
u:=1cm;

z.p0=(0,0)*u;
z.p1=(1,1)*u;
z.p2=(2,0)*u;
z.ww=.7[z.p1,z.p2];
z.w=.7[z.p1,z.ww];
z.x=.6[z.p0,z.ww];
z.y=altitude(z.p0, z.x, z.w);

draw z.w--z.p0--z.p1--z.p2;
draw z.p0--z.ww dashed evenly;
dOt z.p0,z.p1,z.p2,z.x,z.y,z.w,z.ww;


label.bot(btex $p_0$ etex, z.p0);
label.top(btex $p_1$ etex, z.p1);
label.bot(btex $p_2$ etex, z.p2);
label.urt(btex $w_1$ etex, z.w);
label.rt(btex $w_1'$ etex, z.ww);
label.bot(btex $y_1$ etex, z.x);
label.top(btex $x_1$ etex, z.y);
endfig;

beginfig(18) 
save u,a;
u:=1cm;
a:=45;

z.i=(0,1)*u;
z.a1= z.i rotated -a;
z.a2= z.i rotated a;
z.a3=z.a1 rotated -120;
z.a4=z.a2 rotated -120;
z.a5= z.a1 rotated 120;
z.a6=z.a2 rotated 120;

z.a23=.5[z.a2,z.a3];
z.a45=.5[z.a4,z.a5];
z.a61=.5[z.a6,z.a1];

z.a223=whatever[z.a2,z.a3]=whatever[z.a4,z.a5];
z.a661=whatever[z.a6,z.a1]=whatever[z.a2,z.a3];
z.a445=whatever[z.a4,z.a5]=whatever[z.a6,z.a1];

draw z.a2--z.a23 penbold;
fill circle(z.a223,2.5) withcolor white;

draw z.a45--z.a5--z.a6--z.a61 penbold;
fill circle(z.a661,2.5) withcolor white;


draw z.a23--z.a3--z.a4--z.a45 penbold;
fill circle(z.a445,2.5) withcolor white;
draw z.a61--z.a1--z.a2 penbold;

endfig;

beginfig(19) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(-.4,-1.3)*u;
z.a2=(.4,-2)*u;
z.a3=(.1,-3)*u;
z.b1=(.7,-.9)*u;
z.b2=(-.7,-2.3)*u;
z.x=whatever[z.a1,z.a2]=whatever[z.b1,z.b2];

hatchfill z.a0--z.a1--z.b1--cycle  withcolor (87, 1.5mm, -.5bp);
%hatchfill z.a1--z.b1--z.a2--cycle  withcolor (27, 1.5mm, -.5bp);
%hatchfill z.b1--z.b2--z.a2--cycle  withcolor (-24, 1.5mm, -.5bp);

draw z.a1--z.a0--z.b1--z.b2--z.a3--z.a2 penbold;
fill circle(z.x,2) withcolor white;
draw z.a1--z.a2 penbold;
%draw z.x--z.a2 dashed evenly penbold;
draw z.a1--z.b1;
draw z.b1--z.a2--z.b2 dashed evenly;

dOt z.a0,z.a1,z.a2,z.a3,z.b1,z.b2;

label.lft(btex $p_{n-1}$ etex, z.a1);
label.top(btex $p_n$ etex, z.a0);
label.rt(btex $p_1$ etex, z.b1);
endfig;

beginfig(20) 
save u;
u:=.7cm;

z.a=origin;
z.b=(1,0)*u;
z.c=2*z.b;
z.d=3*z.b;
z.x=.5[z.b,z.c]+(0,-1)*u;

save p; path p[];
p0=z.x..z.c..z.b..z.x..z.d..z.a..cycle;

draw subpath (.05,5.95) of p0;
draw -.2[z.a,z.d]--1.2[z.a,z.d];
drawarrow subpath (4.2,4.6) of p0;
drawarrow subpath (5.2,5.6) of p0;
drawarrow subpath (1.2,1.6) of p0;
drawarrow subpath (.3,.6) of p0;
drawarrow subpath (3.2,3.5) of p0;
dOt z.a,z.b,z.c,z.d;


label.urt(btex $a$ etex, z.a);
label.ulft(btex $b$ etex, z.b);
label.urt(btex $c$ etex, z.c);
label.ulft(btex $d$ etex, z.d);
label.lrt(btex $\gamma$ etex, point 3.5 of p0);
endfig;

beginfig(21) 
save u;
u:=1cm;

z.a0=(.5,0)*u;
z.a1=(1,0)*u;
z.a2=(1,1)*u;
z.a3=(2,0)*u;
z.a4=(0,0)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3..z.a4;

draw p0 penbold;

z.z=(point 1.3 of p0) + whatever*( (direction 1.3 of p0) rotated 90)=(point 1.4 of p0) + whatever*( (direction 1.4 of p0) rotated 90);

p1=circle(z.z,(point 1.3 of p0)-z.z);

draw p1;

dOt (point 1.3 of p0);

label.lrt(btex $\gamma$ etex, point 3 of p0);
label.urt(btex $\sigma$ etex, point 1 of p1);

endfig;

beginfig(22) 
save u;
u:=1cm;

z.p=(1,0)*u;
z.s=(0,1.4)*u;
z.q=(-1,0)*u;

save p; path p[];
p0=z.p{dir 150}..z.s{right}..{dir -150}z.q;

draw p0;
drawarrow subpath (0,1.05) of p0;
drawarrow subpath (0,.2) of p0;
drawarrow subpath (0,1.85) of p0;
draw ddline(z.p,z.q)(0.3, 0.3);
drawarrow z.p--.5[z.p,z.q];

dOt z.p, z.q;

label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.bot(btex $\gamma$ etex, z.s);
endfig;

beginfig(23) 
save u;
u:=1cm;

z.pp=(2,0)*u;
z.qq=(-2,0)*u;
z.s=(.5,1.5)*u;

save p; path p[];
p0=z.pp..z.s..z.qq;
draw p0;

z.p=.2[z.pp,z.qq];
z.q=.8[z.pp,z.qq];
z.sq=(0,.7)*u;

p1=z.p{dir 170}..z.s{dir angle direction 1 of p0}..z.sq..{dir -120}z.q;
draw p1;

draw ddline(z.pp,z.qq)(0.1, 0.1);

drawarrow subpath (0,1.4) of p0;
drawarrow subpath (0,2) of p1;

dOt z.p, z.q, z.pp, z.qq, z.s;

label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.urt(btex $p$ etex, z.pp);
label.ulft(btex $q$ etex, z.qq);
label.top(btex $w$ etex, z.s);
label.lrt(btex $\gamma$ etex, z.sq);
label.lrt(btex $\sigma$ etex, (point 1.4 of p0));
endfig;


beginfig(24) 
save u;
u:=1cm;

z.pp=(2,0)*u;
z.qq=(-2,0)*u;
z.s=(.5,1.5)*u;

save p; path p[];
p0=z.pp..z.s..z.qq;
draw p0;

z.p=.2[z.pp,z.qq];
z.q=.8[z.pp,z.qq];
z.sq=(.5,.7)*u;

p1=z.p{dir 170}..z.s{dir ((angle direction 1 of p0)-180)}..z.sq;
draw p1;

hatchfill (subpath (0,1) of p1)--(reverse(subpath (0,1) of p0))--cycle withcolor (67, 1.5mm, -.5bp);

draw ddline(z.pp,z.qq)(0.1, 0.1);

drawarrow subpath (0,1.4) of p0;
drawarrow subpath (0,2) of p1;

dOt z.p, z.q, z.pp, z.qq, z.s;

label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.urt(btex $p$ etex, z.pp);
label.ulft(btex $q$ etex, z.qq);
label.top(btex $w$ etex, z.s);
whitelabel.lrt(btex $\gamma$ etex, z.sq);
label.lrt(btex $\sigma$ etex, (point 1.4 of p0));
endfig;

beginfig(25) 
save u;
u:=.7cm;

z.p=(0,1)*u;
z.q=(2,1)*u;

draw (0,.25)*u{left}..(0,.5)*u{right}..(0,0)*u{left}..z.p{right}..(2,0)*u{right}..z.q{left}..(2,.5)*u{right}..(2,.75)*u{left};

draw ddline(z.p,z.q)(.2,.2);

dOt z.p, z.q;
endfig;

beginfig(26);
save u;
u:=.5cm;

save p; path p[];
p0=(0,0)*u..(2,0)*u..(1,0)*u..(3,0)*u..cycle;
draw p0;

p1=(0,-3)*u..(1.5,-2)*u..(3,-3)*u..(1.5,-4)*u..cycle;
draw p1;

dOt point 1.5 of p0, point 3.5 of p0, (0,-3)*u,(1.5,-2)*u,(3,-3)*u,(1.5,-4)*u;
endfig;

beginfig(271) 
save u;
u:=1.4cm;

z.o=origin;
z.p1=(1,0)*u;

save p; path p[];
p0=circle(z.o,z.p1-z.o);

draw p0;

z.p2= point 1.5 of p0;
z.p3= point 2.8 of p0;
z.s=.5[z.o,.5[z.p1,z.p3]];

p1=z.p1{direction 0 of p0}..tension 1.5..z.p2{direction 1.5 of p0}..tension 1.5..z.p3{direction 2.8 of p0}..tension 1.5..z.s{z.o-z.s zscaled (0,-1)}..tension 1.5..cycle;
draw p1 penbold;

z.oo=z.s-unitvector(z.s)*abs(z.p1);
p3=circle(z.oo,z.p1-z.o);

dOt z.p1, z.p2,z.p3;

label.lft(btex $\alpha$ etex, point 2.6 of p1);
label.lrt(btex $\gamma$ etex, point 3.6 of p0);
endfig;

beginfig(27) 
save u;
u:=.7cm;

z.o=origin;

z.dir1=(2,1);
z.dir2=(-x.dir1,y.dir1);
x.r=2*u;

save p; path p[];

p0=circle(z.o,x.r);
draw p0;

z.oo=(-1,0)*u;

p1=circle(z.oo,x.r);
draw p1;

z.a1=directionpoint z.dir1 of p0;
z.a2=directionpoint z.dir2 of p0;

z.a12=point 3.9 of p1;
z.dir12=direction 3.9 of p1;
p3=z.a1{z.dir1}..z.a12{z.dir12}..z.a2{z.dir2};
draw p3 penbold;

dOt z.a1,z.a12,z.a2;

label.rt(btex $\bar\alpha$ etex, point 1.4 of p3);
label.rt(btex $\gamma$ etex, point 3.7 of p0);
label.lft(btex $\gamma'$ etex, point 3.7 of p1);
label.bot(btex $p_1$ etex, z.a1);
label.top(btex $p_2$ etex, z.a2);
label.rt(btex $s_1$ etex, z.a12);

endfig;

beginfig(28);
save u;
u:=1cm;

z.a1=(-1.5,0)*u;
z.a2=(0,0)*u;
z.a3=(1,1)*u;
z.a4=(2,1)*u;
z.a5=(0,-.5)*u;

save p; path p[];
p0=z.a1..z.a2..z.a3..z.a4..z.a5;

z.o=z.a2+((direction 1 of p0) zscaled (0,-1));
p1=circle(z.o,point 1 of p0 -z.o);

p2=circle(point 1 of p0,0.7*(point 1 of p0 -z.o));

draw p0;
drawarrow (((p0 cutbefore p2) cutafter p2) cutafter p2) penbold;
draw p1;
draw p2 dashed evenly;

dOt point 1 of p0;

label.top(btex $p$ etex, z.a2);
label.top(btex $\alpha$ etex, z.a3);
label.top(btex $\gamma$ etex, point .4 of p1);
label(btex $R$ etex, (.4,-.2)*u);
label(btex $L$ etex, (-.4,.2)*u);
endfig;

beginfig(30);
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(1.3,.5)*u;
z.a2=(1,.5)*u;
z.a3=(.7,.5)*u;
z.a34=(1.3,.8)*u;
z.a4=(2,0)*u;

save p; path p[];
p0=z.a0-z.a4+z.a0{right}..z.a1-z.a4+z.a0{up}..z.a2-z.a4+z.a0{down}..z.a3-z.a4+z.a0{up}..z.a34-z.a4+z.a0..
z.a0{right}..z.a1{up}..z.a2{down}..z.a3{up}..z.a34..
z.a0+z.a4-z.a0{right}..z.a1+z.a4-z.a0{up}..z.a2+z.a4-z.a0{down}..z.a3+z.a4-z.a0{up}..z.a34+z.a4-z.a0..{right}z.a4+z.a4-z.a0;
draw p0;

drawarrow subpath (0,8) of p0;
%draw ddline(z.a0,z.a4)(.2,.2) dashed evenly;

dOt point 4 of p0,point 9 of p0,point 14 of p0;

label.top(btex $\alpha(-T)$ etex, point 4 of p0);
label.top(btex $\alpha(0)$ etex, point 9 of p0);
label.top(btex $\alpha(T)$ etex, point 14 of p0);
label.lft(btex $\dots$ etex,z.a0-z.a4+z.a0);
label.rt(btex $\dots$ etex,z.a4+z.a4-z.a0);
endfig;

beginfig(31);
save u;
u:=.5cm;

z.a0=(0,0)*u;
z.a1=(0,1)*u;
z.a2=(3,-3)*u;
z.a3=(6,1)*u;
z.a4=(6,0)*u;
z.a5=(6,-1)*u;
z.a6=(6,2)*u;
z.a7=(3,-4)*u;
z.a8=(0,2)*u;
z.a9=(0,-1)*u;

save p; path p[];
p0=z.a0{right}..z.a1{left}..z.a2..z.a3{left}..z.a4{right}..z.a5{left}..z.a6{right}..z.a7..z.a8{right}..z.a9{left}..cycle;
draw p0;

p1=ddline(z.a1, z.a3)(.5,.5);

draw p1 dashed evenly;

z.b1=p1 intersectionpoint subpath (8,9) of p0;
z.b2=p1 intersectionpoint subpath (7,8) of p0;
z.b3=p1 intersectionpoint subpath (6,7) of p0;
z.b4=p1 intersectionpoint subpath (5,6) of p0;

hatchfill subpath (1,3) of p0 --cycle withcolor (67, 1.5mm, -.5bp);

dOt z.a0,z.a4, z.a1, z.a3, z.b1,z.b2, z.b3, z.b4;

whitelabel.bot(btex $v$ etex, z.a0);
whitelabel.bot(btex $w$ etex, z.a4);
whitelabel.bot(btex $F$ etex, .5[z.a0,z.a4]);
label.top(btex $x$ etex, z.a1);
label.top(btex $y$ etex, z.a3);
label.urt(btex $p_1$ etex, z.b1);
label.ulft(btex $p_2$ etex, z.b2);
label.urt(btex $p_3$ etex, z.b3);
label.ulft(btex $p_4$ etex, z.b4);
whitelabel.top(btex $\alpha_1$ etex, z.a2);
label.bot(btex $\alpha_2$ etex, z.a7);
endfig;

beginfig(32);
save u;
u:=.7cm;

save p; path p[];

z.o1=(0,0)*u;
x.r1=.6*u;
p1=circle(z.o1,x.r1);
draw p1;

z.o2=(4,0)*u;
x.r2=.7*u;
p2=circle(z.o2,x.r2);
draw p2;

z.o3=(8,0)*u;
x.r3=1.1*u;
p3=circle(z.o3,x.r3);
draw p3;

z.d1=(1,1);
z.d2=(1,-1);
z.d3=(1,0);
z.d4=(-1,0);
z.d5=(-.8,-.3);
z.d6=(-1,.5);
z.pp=(10,.2)*u;
z.qq=(4,-3)*u;

z.base=(-2,0)*u;

p0=
(directionpoint z.d1 of p1){z.d1}..
(2,-1)*u..
(1.5,-3)*u..
(3,-3)*u..
(2.2,-1)*u..
(directionpoint z.d2 of p2){z.d2}..
z.qq..
(directionpoint z.d3 of p3){z.d3}..
z.pp..
(directionpoint z.d4 of p3){z.d4}..
(directionpoint z.d5 of p2){z.d5}..
(directionpoint z.d6 of p1){z.d6}..
z.base--
z.base..
cycle;

p4=circumcircle(point 8.2 of p0,point 8 of p0,point 7.8 of p0);

draw p0;
draw p4;
z.p1=directionpoint z.d1 of p1;
z.p2=directionpoint z.d2 of p2;
z.p3=directionpoint z.d3 of p3;
z.q1=directionpoint z.d6 of p1;
z.q2=directionpoint z.d5 of p2;
z.q3=directionpoint z.d4 of p3;

dOt z.p1, z.p2, z.p3, z.q1, z.q2, z.q3, z.pp, z.base;

label(btex $\sigma_1$ etex, z.o1);
label(btex $\sigma_2$ etex, z.o2);
whitelabel(btex $\hat\sigma_3$ etex, z.o3-(x.r3,0));
whitelabel(btex $\check\sigma_3$ etex, z.o3+(x.r3,0));
whitelabel(btex $\sigma_\infty$ etex, point 2 of p4);
label.lrt(btex $p_1$ etex, z.p1);
label.llft(btex $p_2$ etex, z.p2);
label.bot(btex $p_3$ etex, z.p3);
label.rt(btex $p_\infty$ etex, z.pp);
label.urt(btex $q_1$ etex, z.q1);
label.top(btex $q_2$ etex, z.q2);
label.top(btex $q_3$ etex, z.q3);
label.top(btex $F$ etex, (z.p2+z.p3+z.qq)/3);

endfig;

beginfig(33);
save u;
u:=.35cm;

picture pic;

pic = image(
x.shift=9*u;
x.width=.2*u;
x.size=2*u;
x.gap=4*u;
x.right=10*u;

z.r=(x.size,x.shift);


z.a0=(x.width,x.shift);
z.a1=z.a0 rotatedabout (z.r,-60);
z.a2=z.a0 rotatedabout (z.r,-120);
z.a3=z.a0 rotatedabout (z.r,-180);
z.a4=z.a3 reflectedabout((0,0),(1,0));
z.a5=z.a2 reflectedabout((0,0),(1,0));
z.a6=z.a1 reflectedabout((0,0),(1,0));
z.a7=z.a0 reflectedabout((0,0),(1,0));

z.aa4=z.a2 reflectedabout((0,x.shift),(1,x.shift));
z.aa5=z.a1 reflectedabout((0,x.shift),(1,x.shift));

z.aaa8=z.a7 reflectedabout((0,-x.gap),(1,-x.gap));
z.aaa9=z.a6 reflectedabout((0,-x.gap),(1,-x.gap));
z.aaa10=z.a5 reflectedabout((0,-x.gap),(1,-x.gap));
z.aaa11=z.a4 reflectedabout((0,-x.gap),(1,-x.gap));



save p; path p[];

p1=z.a0{up}..z.a1..z.a2..z.a3{down}..z.a4{down}..z.a5..z.a6..z.a7{up}..cycle;
draw p1;

p2=p1 reflectedabout((0,0),(0,1));
draw p2;

z.b0=z.a0 reflectedabout((0,0),(0,1));
z.b1=z.a1 reflectedabout((0,0),(0,1));
z.b2=z.a2 reflectedabout((0,0),(0,1));
z.b3=z.a3 reflectedabout((0,0),(0,1));
z.b4=z.a4 reflectedabout((0,0),(0,1));
z.b5=z.a5 reflectedabout((0,0),(0,1));
z.b6=z.a6 reflectedabout((0,0),(0,1));
z.b7=z.a7 reflectedabout((0,0),(0,1));

z.c1= z.b0 rotatedabout (z.r,-60);
z.c2= z.b0 rotatedabout (z.r,-120);
z.c3= z.b0 rotatedabout (z.r,-180);
z.c4=z.c3 reflectedabout((0,0),(1,0));
z.c5=z.c2 reflectedabout((0,0),(1,0));
z.c6=z.c1 reflectedabout((0,0),(1,0));
z.c7=z.c6 reflectedabout((0,0),(0,1));
z.c8=z.c5 reflectedabout((0,0),(0,1));
z.c9=z.c4 reflectedabout((0,0),(0,1));
z.c10=z.c3 reflectedabout((0,0),(0,1));
z.c11=z.c2 reflectedabout((0,0),(0,1));
z.c12=z.c1 reflectedabout((0,0),(0,1));

p3=
z.c3{down}..
z.c4{down}..
z.c5..
z.c6{dir 150}..
z.c7{dir -150}..
z.c8..
z.c9{up}..
z.c10{up}..
z.c11..
z.c12{dir-30}..
z.c1{dir 30}..
z.c2..
cycle;
draw p3;

z.d5=z.c2 reflectedabout((0,x.shift),(1,x.shift));
z.d4=z.c1 reflectedabout((0,x.shift),(1,x.shift));

z.d8=z.b7 reflectedabout((0,-x.gap),(1,-x.gap));
z.d9=z.c6 reflectedabout((0,-x.gap),(1,-x.gap));
z.d10=z.c5 reflectedabout((0,-x.gap),(1,-x.gap));
z.d11=z.c4 reflectedabout((0,-x.gap),(1,-x.gap));

p4=z.a0{up}..z.a1..z.a2..z.a3..z.aa4..z.aa5..cycle;
draw p4 shifted (x.right,0);
draw p4 shifted (2*x.right,0);
draw p4 rotated 180 shifted (2*x.right,0);

p5=
z.c1{dir 30}..
z.c2..
z.c3{down}..
z.d5..
z.d4..
z.b0{up}..
z.b1..
z.b2..
z.b3{down}..
z.b4{down}..
z.b5..
z.b6..
z.b7{up}..
z.d8{up}..
z.d9..
z.d10..
z.d11{down}..
z.c4{down}..
z.c5..
z.c6{dir 150}..
z.c7{dir -150}..
z.c8..
z.c9{up}..
z.c10{up}..
z.c11..
z.c12{dir-30}..
cycle;

draw p5 shifted (x.right,0);

p6=
z.aaa8{up}..
z.aaa9..
z.aaa10..
z.aaa11{down}..
z.a4{down}..
z.a5..
z.a6..
z.a7{up}..
cycle
;

draw p6 shifted (x.right,0);

p7=z.c10{up}..
z.c11..
z.c12{dir-30}..
z.c1{dir 30}..
z.c2..
z.c3{down}..
z.d5..
z.d4..
z.b0{up}..
z.b1..
z.b2..
z.b3{down}..
-z.aaa11{down}..
-z.aaa10..
-z.aaa9..
-z.aaa8{up}..
z.d8{up}..
z.d9..
z.d10..
z.d11{down}..
z.c4{down}..
z.c5..
z.c6{dir 150}..
z.c7{dir -150}..
z.c8..
z.c9{up}..
-z.d5..
-z.d4..
-z.b0{down}..

z.a7{down}..
z.a6..
z.a5..
z.a4{up}..

z.aaa11{up}..
z.aaa10..
z.aaa9..
z.aaa8{down}..

-z.d8{down}..
-z.d9..
-z.d10..
-z.d11{up}..
cycle;
draw p7 shifted (2*x.right,0);

hatchfill (reverse p1)--p3--p2--cycle  withcolor (57, .75mm, -.5bp);

hatchfill ((reverse p4 shifted (x.right,0))--p5 shifted (x.right,0)--cycle)--(reverse p6 shifted (x.right,0))--cycle  withcolor (57, .75mm, -.5bp);

hatchfill ((reverse p4 shifted (2*x.right,0))--p7 shifted (2*x.right,0)--cycle)--(reverse p4 rotated 180 shifted (2*x.right,0))--cycle  withcolor (57, .75mm, -.5bp);

draw (z.a3--z.aaa11 cutbefore p5 cutafter subpath (5,15) of p5) shifted (x.right,0) dashed evenly penhair;
draw (z.a0--z.aaa8 cutbefore p5 cutafter subpath (5,15) of p5) shifted (x.right,0) dashed evenly penhair;
draw (z.b0--z.d8) shifted (x.right,0) penhair;
draw (z.c3--z.d11) shifted (x.right,0) penhair;

draw (z.a3--z.aaa11 cutbefore p5 cutafter subpath (5,15) of p5) shifted (2*x.right,0) dashed evenly penhair;
draw (z.a0--z.aaa8 cutbefore p5 cutafter subpath (5,15) of p5) shifted (2*x.right,0) dashed evenly penhair;

draw (z.a3--z.aaa11 cutbefore p5 cutafter subpath (5,15) of p5) rotated 180 shifted (2*x.right,0) dashed evenly penhair;
draw (z.a0--z.aaa8 cutbefore p5 cutafter subpath (5,15) of p5) rotated 180 shifted (2*x.right,0) dashed evenly penhair;

draw (z.b0--z.d8) shifted (2*x.right,0) penhair;
draw (z.c3--z.d11) shifted (2*x.right,0) penhair;
draw (z.b0--z.d8) rotated 180 shifted (2*x.right,0) penhair;
draw (z.c3--z.d11) rotated 180 shifted (2*x.right,0) penhair;

draw (-2.3*x.size,0)--(2.3*x.size,0)  dashed linedot penhair;
draw ((-.3*x.size,-(-x.shift+x.gap))--(2.3*x.size,-(-x.shift+x.gap))) shifted (x.right,0)  dashed linedot penhair;

label.bot(btex $V_1$ etex rotated 90, (0,-x.shift-2*u));
label.bot(btex $V_2$ etex rotated 90, (x.right,-x.shift-2*u));
label.bot(btex $V_3$ etex rotated 90, (2*x.right,-x.shift-2*u));
);

draw pic rotated -90;
endfig;

beginfig(34);
save u;
u:=1cm;

save p; path p[];

p1=circle(origin,u);
p2=circle(origin,1.2*u);
draw p1;
draw p2;

hatchfill reverse p1--p2--cycle  withcolor (57, .75mm, -.5bp);
endfig;


beginfig(35);
save u;
u:=.5cm;

save p; path p[];
p0=(0,0)*u..(2,0)*u..(1,0)*u..(3,0)*u..cycle;
draw p0;

endfig;

beginfig(36);
save u;
u:=1cm;
save p; path p[];

z.x=(2,0)*u;
z.y=(.5,1)*u;
z.z=(0,3)*u;

p1=origin--z.x--z.x+z.y--z.y--cycle;
p2=p1 shifted z.z;

draw p2 penhair;

z.p=.5*(z.x+z.y);

z.a0=z.z+.2*z.x+.3*z.y;
z.a1=z.z+.4*z.x+.2*z.y;
z.a2=z.z+.5*z.x+.3*z.y;
z.a3=z.z+.4*z.x+.4*z.y;

p3=z.a0..z.a1..z.a2..z.a3..cycle;
draw p3 penbold;

z.b1=z.p-.1*z.x;
z.b2=z.p-.05*z.y;
z.b3=z.p+.1*z.x;

p4=directionpoint (-1,-1) of p3{(-1,-1)}..z.b1..z.b2..z.b3..directionpoint (-1,1) of p3{(-1,1)};
draw p4 pensemibold;

draw (subpath (0,3) of p1) cutafter p4 penhair;
draw (subpath (3,4) of p1) cutbefore p4 penhair;

label(btex $\Pi_h$ etex, z.z+.8*z.x+.3*z.y);
label(btex $\Pi_0$ etex, .8*z.x+.3*z.y);
label.top(btex $\alpha_h$ etex, z.a3);
label(btex $\Sigma_h$ etex, .5*z.z+.4*z.x+.5*z.y);


endfig;

beginfig(37) 
save u;
u:=1.4cm;

save p; path p[];

z.x0=(3.2,0)*u;
z.x1=(3,.5)*u;
z.x2=(4,1)*u;
z.x3=(5,.4)*u;
z.y=(4.8,0)*u;
z.y0=.6[z.x2,z.x3];
z.z0=.4[z.x0,z.y0];

z.z=.4[z.x0,z.y];

p2=(3,-.2)*u..(3,1.2)*u..(5,1.3)*u..(5,-.2)*u..z.z0{z.x0-z.y0}..cycle;
z.p=point 1.1 of p2;
z.q=z.p+(direction 1.1 of p2 rotated -90)/2;

mark_rt_angle(z.q, z.p, z.p+(direction 1.1 of p2)/2);
draw p2 penbold;

drawarrow z.p--z.q;


draw z.x0--z.x1--z.x2--z.x3--z.y--cycle;
draw z.x0--z.y0;

dOt z.x0,z.y,z.y0,z.z0,z.z;

label.lft(btex $x$ etex, z.x0);
label.rt(btex $y$ etex, z.y);
label.urt(btex $y_0$ etex, z.y0);
label.top(btex $z_0$ etex, z.z0);
label.bot(btex $z$ etex, z.z);
label.top(btex $R$ etex, (4,1.1)*u);
label.urt(btex $\Sigma$ etex, point 2 of p2);
label.rt(btex $\Norm$ etex, z.q);
endfig;

beginfig(38) 
save u;
u:=.6cm;

z.a0=(-2,1)*u;
z.a1=(-1,.25)*u;
z.a2=(0,0)*u;
z.a3=(1,.25)*u;
z.a4=(2,1)*u;

save p; path p[];

p1=z.a0..z.a1..z.a2..z.a3..z.a4;
draw p1;

z.b0=(-1.4,5)*u;
%z.b1=(-1.9,2)*u;
%z.b3=(1.9,2)*u;
z.b4=(1.4,5)*u;

p2=z.b0{down}...subpath (1,3) of p1...z.b4{up};
draw p2;
hatchfill p2--cycle  withcolor (57, 1.5mm, -.5bp);

draw (-2,0)*u--(2,0)*u dashed evenly;

dOt z.a2;

label.bot(btex $p$ etex, z.a2);
label.rt(btex $\Sigma$ etex, z.a4);
label.lrt(btex $\Sigma'$ etex, z.b4);
label.bot(btex $\T_p$ etex, (2,0)*u);
whitelabel(btex $K$ etex, (0,3)*u);
endfig;

beginfig(39) 
save u;
u:=.7cm;

z.a0=(-1,0)*u;
z.a1=(0,.5)*u;
z.a2=(1,0)*u;
z.a3=(0,-.5)*u;

save p; path p[];

p1=z.a0..z.a1..z.a2..z.a3..cycle;
draw p1 penbold;

z.b0=(-3,0)*u;
z.b1=(0,2.5)*u;
z.b2=(3,0)*u;
z.b3=(0,-2.5)*u;

p2=z.b0..z.b1..z.b2..z.b3..cycle;
draw p2 penbold;

draw circle (z.a1,z.b1-z.a1);

dOt z.a1, z.b1;

label.top(btex $p$ etex, z.b1);
label.top(btex $p'$ etex, z.a1);
label.rt(btex $\Sigma_R$ etex, z.b2);
label.rt(btex $\Sigma$ etex, z.a2);

endfig;

beginfig(40) 
save u;
u:=1.3cm;

z.p=(0,2)*u;
z.p0=(.5,0)*u;
z.p1=-z.p0;
z.m=origin;

rimmark(z.p--z.p0, z.p--z.p1);
rimmark2(z.m--z.p0, z.m--z.p1);
mark_rt_angle(z.p, z.m, z.p0);

draw z.m--z.p--z.p0--z.p1--z.p;
dOt z.m,z.p,z.p0,z.p1;

 

label.top(btex $p$ etex, z.p);
label.rt(btex $\bar p$ etex, z.p0);
label.lft(btex $\bar p'$ etex, z.p1);
label.bot(btex $m$ etex, z.m);
endfig;

beginfig(41) 
save u;
u:=1.3cm;

z.p=(-1,1)*u;
z.pp=(-.7,0)*u;
z.q=(1,.9)*u;
z.qq=(.7,0)*u;

z.p1=altitude(z.qq,z.p,z.pp);
z.q1=altitude(z.qq,z.q,z.pp);

mark_rt_angle(z.p, z.p1, z.pp);
mark_rt_angle(z.q, z.q1, z.qq);

save p; path p[];

z.s=(0,-1)*u;
p1=z.pp{(z.p-z.pp) zscaled (0,-1)}..
z.qq{(z.q-z.qq) zscaled (0,-1)}..
z.s..cycle;

draw p1;
draw ddline(z.qq,z.pp)(.4,.4) penhair;
draw z.p--z.pp--z.qq--z.q penbold;
draw z.p--z.p1 dashed evenly;
draw z.q--z.q1 dashed evenly;

hatchfill p1  withcolor (57, 1.5mm, -.5bp);

dOt z.p,z.pp,z.q,z.qq,z.p1,z.q1;

label.top(btex $p$ etex, z.p);
label.top(btex $q$ etex, z.q);
label.urt(btex $\bar p$ etex, z.pp+(0,1));
label.ulft(btex $\bar q$ etex, z.qq+(0,1));
whitelabel.(btex $R$ etex, (z.pp+z.qq+2*z.s)/4);


endfig;

beginfig(42) 
save u;
u:=1cm;

z.p=origin;
z.g0=(-1,-1)*u;
z.g1=(1,0)*u;
z.g2=(0,1)*u;
z.g3=(-.5,0)*u;

save p; path p[];
p0=z.g0{right}..z.g1..z.g2..z.g3;

draw p0;
z.x=point 1.3 of p0;
z.y=point 1.7 of p0;


hatchfill subpath (1.3,1.7) of p0--z.p--cycle withcolor (57, 1.5mm, -.5bp);
draw z.x--z.p--z.y;
dOt z.p,z.x,z.y;

label.bot(btex $\tilde p$ etex, z.p);
label.urt(btex $\tilde x$ etex, z.x);
label.urt(btex $\tilde y$ etex, z.y);
label.ulft(btex $\tilde \gamma$ etex, point 2.5 of p0);
endfig;

beginfig(43) 
save u;
u:=1cm;

z.a=(1,0)*u;

save p; path p[];

p0=circle(origin, z.a);
draw p0;

z.x1=(.3,.4)*u;
z.y1=z.a rotated (90+angle z.x1);

p1=(-z.y1)..(z.x1-z.y1)/sqrt(2)..z.x1..(z.x1+z.y1)/sqrt(2)..z.y1..(-z.x1+z.y1)/sqrt(2)..(-z.x1)..(-z.x1-z.y1)/sqrt(2)..cycle;
draw subpath (0,4) of p1;
draw subpath (4,8) of p1 dashed evenly;

z.x2=(-.3,.3)*u;
z.y2=z.a rotated (90+angle z.x2);

p2=(-z.y2)..(z.x2-z.y2)/sqrt(2)..z.x2..(z.x2+z.y2)/sqrt(2)..z.y2..(-z.x2+z.y2)/sqrt(2)..(-z.x2)..(-z.x2-z.y2)/sqrt(2)..cycle;
draw subpath (0,4) of p2;
draw subpath (4,8) of p2 dashed evenly;

z.x3=(.05,-.3)*u;
z.y3=z.a rotated (90+angle z.x3);

p3=(-z.y3)..(z.x3-z.y3)/sqrt(2)..z.x3..(z.x3+z.y3)/sqrt(2)..z.y3..(-z.x3+z.y3)/sqrt(2)..(-z.x3)..(-z.x3-z.y3)/sqrt(2)..cycle;
draw subpath (0,4) of p3;
draw subpath (4,8) of p3 dashed evenly;

hatchfill 
((subpath (0,4) of p1) cutbefore (subpath (0,4) of p3) cutafter (subpath (0,4) of p2))
--
((subpath (0,4) of p2) cutbefore (subpath (0,4) of p1) cutafter (subpath (0,4) of p3))
--
((subpath (0,4) of p3) cutbefore (subpath (0,4) of p2) cutafter (subpath (0,4) of p1))
--cycle
 withcolor (57, 1.5mm, -.5bp);
 
whitelabel(btex $\Delta$ etex, origin);
endfig;

beginfig(44) 
save u;
u:=.7cm;

drawarrow (2,-2)*u--(2,0)*u;
drawarrow (2,0)*u--(-2,0)*u;
drawarrow (-2,0)*u--(-2,1)*u;
drawarrow (-2,1)*u--(-1,1)*u;
drawarrow (-1,1)*u--(-1,-1)*u;
drawarrow (-1,-1)*u--(1,-1)*u;
drawarrow (1,-1)*u--(1,2)*u;
drawarrow (1,2)*u--(0,2)*u;
drawarrow (0,2)*u--(0,-2)*u;
drawarrow (0,-2)*u--(2,-2)*u;

label(btex $-1$ etex, (-1.5,.5)*u);
label(btex $1$ etex, (-.5,-.5)*u);
label(btex $2$ etex, (.5,-.5)*u);
label(btex $0$ etex, (1.8,1)*u);
label(btex $1$ etex, (.5,1)*u);
label(btex $1$ etex, (1.5,-1.5)*u);
endfig;

beginfig(45) 
save u;
u:=1cm;

z.v=(.8,1)*u;
z.vw=(1.6,1.8)*u;
z.w=(2,3)*u;

labelarcs2(z.vw,z.w, (3,1)*u, 9, btex $\beta$ etex);
labelarcs(z.vw,z.w, (-1,2)*u, 10, btex $\alpha$ etex);

draw (0,0)*u--(-1,2)*u--z.w--(3,1)*u--(2.8,.2)*u--(1.2,-.1)*u--z.v--cycle;
draw z.v--z.vw--z.w;

dOt z.v,z.w;

label.rt(btex $w$ etex, z.v);
label.top(btex $v$ etex, z.w);
label(btex $Q$ etex, (0.2,1.8)*u);
label(btex $R$ etex, (2,1)*u);

endfig;

beginfig(46) 
save u;
u:=1cm;
x.s=.5*u;

draw (0,0)*u..(-x.s,-x.s)..(0,0)*u..(0,1)*u..(-x.s,u+x.s)..(0,1)*u..(1,1)*u..(u+x.s,u+x.s)..(1,1)*u..(1,0)*u..(u+x.s,-x.s)..(1,0)*u..cycle;
dOt (0,0)*u,(0,0)*u,(0,1)*u,(0,1)*u,(1,1)*u,(1,1)*u,(1,0)*u,(1,0)*u;

%label.urt(btex $a$ etex, (0,0)*u);
%label.lrt(btex $b$ etex, (0,1)*u);
%label.llft(btex $c$ etex, (1,1)*u);
%label.ulft(btex $d$ etex, (1,0)*u);
endfig;

beginfig(47) 
save u;
u:=.7cm;

z.a=(0,1)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;
z.s=(4,0)*u;

draw z.a..2*z.a{right}..z.a..z.b..2*z.b{dir 120}..z.b..z.c..2*z.c{dir -120}..z.c..cycle;

%draw z.a+z.s{dir -120}..origin+z.s{right}..z.a+z.s{dir 120}..z.b+z.s..2*z.b+z.s{dir 120}..z.b+z.s..z.c+z.s..2*z.c+z.s{dir -120}..z.c+z.s..cycle;

%dOt z.a,z.b,z.c,z.a+z.s,z.b+z.s,z.c+z.s;

z.e=(0,.5)*u;

z.d0=(0,-1)*u+1.7*z.s;
z.d1=z.d0+z.e;
z.d2=z.d0+2*z.e;
z.d3=z.d0+3*z.e;
z.d4=z.d0+4*z.e;
z.d5=z.d0+5*z.e;
z.d6=z.d0+6*z.e;

%draw z.d1..z.d2..z.d3..z.d4..z.d5{right}..z.d4{left}..z.d6{right}..z.d3{left}..z.d0{right}..z.d2{left}..cycle;

dOt z.a,z.b,z.c
%,z.a+z.s,z.b+z.s,z.c+z.s,z.d2,z.d3,z.d4
;

endfig;

beginfig(471) 
save u;
u:=.7cm;

z.a=(0,1)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;
z.s=(4,0)*u;

draw z.a{dir -120}..(.3)*z.a{right}..z.a{dir 120}..z.b..2*z.b{dir 120}..z.b..z.c..2*z.c{dir -120}..z.c..cycle;

%draw z.a+z.s{dir -120}..origin+z.s{right}..z.a+z.s{dir 120}..z.b+z.s..2*z.b+z.s{dir 120}..z.b+z.s..z.c+z.s..2*z.c+z.s{dir -120}..z.c+z.s..cycle;

%dOt z.a,z.b,z.c,z.a+z.s,z.b+z.s,z.c+z.s;

z.e=(0,.5)*u;

z.d0=(0,-1)*u+1.7*z.s;
z.d1=z.d0+z.e;
z.d2=z.d0+2*z.e;
z.d3=z.d0+3*z.e;
z.d4=z.d0+4*z.e;
z.d5=z.d0+5*z.e;
z.d6=z.d0+6*z.e;

%draw z.d1..z.d2..z.d3..z.d4..z.d5{right}..z.d4{left}..z.d6{right}..z.d3{left}..z.d0{right}..z.d2{left}..cycle;

dOt z.a,z.b,z.c
%,z.a+z.s,z.b+z.s,z.c+z.s,z.d2,z.d3,z.d4
;

endfig;

beginfig(472) 
save u,p;
path p[];
u:=1cm;

z.a=(1,0)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;
z.s=(0,4)*u;

p0= z.c..1.5*z.c{dir (-120-90)}..z.c..z.a{dir (-120-90)}..(.5)*z.a{dir (-90)}..z.a{dir (120-90)}..z.b..1.5*z.b{dir (120-90)}..z.b..cycle;

draw p0 pensemibold;

p1= circle(origin,8) rotated -90 shifted z.a cutafter (subpath (5,6) of p0) cutbefore (subpath (2,3) of p0); 
draw p1;

p2= circle(origin,8) rotated -140 shifted z.b cutafter (subpath (5,6) of p0) cutbefore (subpath (8,9) of p0); 
draw p2;

p3= circle(z.c,8) cutafter (subpath (8,9) of p0) cutbefore (subpath (2,3) of p0); 
draw p3;

z.e=(0,.5)*u;

z.d0=(0,-1)*u+1.7*z.s;
z.d1=z.d0+z.e;
z.d2=z.d0+2*z.e;
z.d3=z.d0+3*z.e;
z.d4=z.d0+4*z.e;
z.d5=z.d0+5*z.e;
z.d6=z.d0+6*z.e;

dOt z.a,z.b,z.c;

label.llft(btex $z$ etex, point 1 of p0);
label.bot(btex $b$ etex, point 2.3 of p0);
label.lft(btex $x$ etex, point 4 of p0);
label.top(btex $c$ etex, point 5.7 of p0);
label.ulft(btex $y$ etex, point 7 of p0);
label.lft(btex $a$ etex, point 8.55 of p0);

label.rt(btex $\alpha$ etex, z.a+(8,0));
label.lrt(btex $\beta$ etex, z.b +(5,-6));
label.urt(btex $\gamma$ etex, z.c +(5,6));
endfig;

beginfig(473) 
save u,p;
path p[];
u:=1cm;

z.a=origin;
z.b=(-2,-1)*u;
z.c=(-1.9,1)*u;
z.bb=(-4.1,-.6)*u;
z.cc=(-4.05,.6)*u;

p0=z.a{(z.b-z.a) rotated 5 }..z.b--z.b{(z.bb-z.b) rotated 5 }..z.bb--z.bb{(z.cc-z.bb) rotated 5 }..z.cc--z.cc{(z.c-z.cc) rotated 5}..z.c--z.c--cycle;
draw p0 pensemibold;

p2= circle(origin,8) rotated -90 shifted z.a cutafter (subpath (0,1) of p0) cutbefore (subpath (8,9) of p0); 
draw p2;

p3= circle(origin,8) rotated -90 shifted z.b cutafter (subpath (2,3) of p0) cutbefore (subpath (0,1) of p0); 
draw p3;

p4= circle(origin,8) rotated -180 shifted z.bb cutafter (subpath (4,5) of p0) cutbefore (subpath (2,3) of p0); 
draw p4;

p5= circle(origin,8) rotated -140 shifted z.cc cutafter (subpath (6,7) of p0) cutbefore (subpath (4,5) of p0); 
draw p5;

p6= circle(origin,8) rotated 0 shifted z.c cutafter (subpath (8,9) of p0) cutbefore (subpath (6,7) of p0); 
draw p6;


label.lrt(btex $c$ etex, point 0.5 of p0);
label.bot(btex $c+y$ etex rotated -10, point 2.5 of p0);
label.lft(btex $x$ etex, point 4.5 of p0);
label.top(btex $b+z$ etex rotated 10, point 6.5 of p0);
label.urt(btex $b$ etex, point 8.5 of p0);

label.lft (btex $\alpha$ etex, (dir 180)*8+z.a);
label.top (btex $\pi{-}\beta$ etex, (dir 90)*8+z.b);
label.bot (btex $\pi{-}\gamma$ etex, (dir -90)*8+z.c);
label.rt(btex $\pi{-}\alpha$ etex, (dir -45)*8+ z.cc);
label.rt(btex $\pi{-}\alpha$ etex, (dir 45)*8+ z.bb);
endfig;

beginfig(48) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(.5,1)*u;
z.a2=(0,2.5)*u;

z.b1=.2[z.a0,z.a1];
z.b2=.5[z.a1,z.a2];

z.v=(-1,.2)*u;

labelarcs(2*z.a1-z.a0,z.a1, z.a2, 10, btex $\theta_i$ etex);
labelarcs(z.b1+z.v,z.b1, z.a1, 10, btex $\phi_i$ etex);
labelarcs(z.b2+z.v,z.b2, z.a2, 10, btex $\phi_{i+1}\,\,$ etex);

save p; path p[];

p0=z.a0--z.a1--z.a2;
draw p0 penbold;
draw z.a1--z.a1+14*unitvector(z.a1-z.a0) penhair;

drawarrow z.b1--z.b1+z.v;
drawarrow z.a1--z.a1+z.v;
drawarrow z.b2--z.b2+z.v;

endfig;

beginfig(49) 
save u,r;
u:=1cm;
r:=1cm;


z.s=(2.5,0)*u;
z.o1=origin;
z.o2=z.o1+z.s;
z.o3=z.o1+2*z.s;
z.o4=z.o1+3*z.s;

draw circle(z.o1,r);
dOt z.o1+(0,-1)*r;

draw circle(z.o2,r);
dOt z.o2+(0,-1)*r, z.o2-(0,-1)*r;

draw circle(z.o3,r);
draw z.o3+(0,-1)*r--z.o3-(0,-1)*r;
dOt z.o3+(0,-1)*r, z.o3-(0,-1)*r;

draw circle(z.o4,r);
draw z.o4+(0,-1)*r--z.o4-(0,-1)*r;
draw z.o4+(-1,0)*r--z.o4-(-1,0)*r;
dOt z.o4,z.o4+(0,-1)*r, z.o4-(0,-1)*r,z.o4+(-1,0)*r, z.o4-(-1,0)*r;

label.bot(btex $1-1+1=1;$ etex, z.o1+(0,-1)*r);
label.bot(btex $2-2+1=1;$ etex, z.o2+(0,-1)*r);
label.bot(btex $2-3+2=1;$ etex, z.o3+(0,-1)*r);
label.bot(btex $5-8+4=1.$ etex, z.o4+(0,-1)*r);

endfig;

beginfig(50) 
save u;
u:=1cm;

z.p=(0,0)*u;
z.x=(-1,2)*u;
z.z=(2,2)*u;
z.y=.4[z.x,z.z];

z.s=(4,0)*u;

z.p1=z.p+z.s;
z.x1=z.x+z.s;
z.z1=z.z+z.s;
z.y1=z.y+z.s;

z.xx=z.x rotated -3;
z.zz=z.z rotated 3;

z.zzz=(-abs(z.y-z.z)/abs(z.y-z.x))[z.yy,z.xx];



save p; path p[];

p1=circle(z.xx,z.y-z.x);
p2=circle(z.zz,z.y-z.z);
z.yy=cross.top(p1,p2);

draw z.p1--z.x1--z.z1--cycle;
draw z.p--z.xx--z.yy--z.zz--cycle;

draw z.p--z.yy dashed evenly;
draw z.p1--z.y1 dashed evenly;

rimmark(z.p1--z.x1,z.p--z.xx);
rimmark2(z.x1--z.y1,z.xx--z.yy);
rimmark3(z.y1--z.z1,z.yy--z.zz,z.zzz--z.yy);
rimmark4(z.z1--z.p1,z.zz--z.p);

draw z.zzz--z.yy;
draw z.zzz--z.p dashed evenly;

dOt z.p,z.p1,z.x1,z.y1,z.z1,z.xx,z.yy,z.zz,z.zzz;

label.bot(btex $p$ etex, z.p);
label.bot(btex $p'$ etex, z.p1);
label.lft(btex $x'$ etex, z.x1);
label.lft(btex $x$ etex, z.xx);
label.top(btex $y'$ etex, z.y1);
label.top(btex $y$ etex, z.yy);
label.rt(btex $z'$ etex, z.z1);
label.rt(btex $z$ etex, z.zz);
label.rt(btex $\bar z$ etex, z.zzz);
endfig;

beginfig(51) 
save u;
u:=1cm;

z.s=(3,0)*u;

draw origin{(1,1)}..(1,1)*u{up}..{down}origin;
dOt origin;

%draw z.s{right}..z.s+(1,1)*u..cycle;

endfig;

beginfig(52)
save u,p;
path p[];
u:=1cm;

z.z=origin;
z.r=(1,1)*u;

p0=circle(z.z,z.r);

z.p=(.3,-.2)*u;
z.q=-z.p;

draw z.p--z.q;

z.s=(.5,-.5)*u;

p1= z.p{up}..z.r..z.q{-1,-1}..z.s..cycle;

draw p1;

p2=(subpath (0,2) of p1) rotated 180;

draw p2 dashed evenly;

clip currentpicture to p0;
draw p0;

dOt z.p,z.q,z.r,-z.r,z.z;

label.rt(btex $p$ etex, z.p);
label.ulft(btex $q$ etex, z.q);
label.urt(btex $z$ etex, z.z);
label.urt(btex $r$ etex, z.r);
label.llft(btex $r^{*}$ etex, -z.r);

label.ulft(btex $\gamma_1$ etex, point 1.6 of p1+(1,0));
label.ulft(btex $\gamma_1^{*}$ etex, point .6 of p2+(1,0));
endfig;

beginfig(53) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a3=(3,0)*u;

save p; path p[];
p0=z.a0{1,1}..{1,-2}z.a3;
z.b0=z.a0+1*direction 0 of p0;
z.b3=z.a3+.5*direction 3 of p0;

labelarcsprof(z.b0, z.a0, z.a3, 10,7, btex $\alpha$ etex);
whitelabelarcsprof2(z.a0, z.a3, (z.a3+2*(z.a3-z.b3)), 10,7, btex $\beta$ etex);
draw p0;
draw (z.a0+.5*(z.a0-z.b0))--z.b0 penhair;
draw (z.a3+2*(z.a3-z.b3))--z.b3 penhair;
draw z.a0--z.a3;
drawarrow subpath (0,.5) of p0;
drawarrow z.a3--.5[z.a0,z.a3];

dOt z.a0,z.a3;


label.top(btex $\gamma$ etex, point .5 of p0);
label.bot(btex $\ell$ etex, .5[z.a0,z.a3]);
label.lft(btex $\gamma(a)$ etex, z.a0+(0,2));
label.rt(btex $\gamma(b)$ etex, z.a3+(0,2));
%label.lft(btex $\gamma'(a)$ etex, z.b0);
%label.rt(btex $\gamma'(b)$ etex, z.b3);
%label.top(btex $\alpha(b)-\alpha(a)$ etex, .5[z.a0,z.a3]);
endfig;

beginfig(54) 
save u;
u:=1cm;

z.a=(1,2)*u;
z.a1=(2,1)*u;
z.a2=(2,.2)*u;
z.b=(1.5,0)*u;
z.b1=(1.6,-.3)*u;
z.b2=(1.5,-1)*u;
z.c=(1,-1)*u;

save p; path p[];
p0=z.a{1,-.5}..{-1,-1}z.b;
p1=z.b{0,-1}..z.b2..{-1,0}z.c;

z.aa=.5*u*unitvector(direction 1 of p0);
z.bb=.5*u*unitvector(direction 0 of p1);

labelarcsprof(z.b+z.aa, z.b, z.b+z.bb, 10,7, btex $\theta$ etex);
draw z.b+z.aa--z.b-z.aa penhair;
draw z.b+z.bb--z.b-z.bb penhair;
draw p0;
draw p1;
dOt z.a;
dOt z.b;
dOt z.c;

label.lft(btex $\alpha(a)$ etex, z.a);
label.lft(btex $\alpha(b)=\beta(b)$ etex, z.b+(0,2));
label.lft(btex $\beta(c)$ etex, z.c);

endfig;

beginfig(55) 
save u;
u:=1.4cm;

z.a0=(0,0)*u;
z.a1=(1,1.2)*u;
z.a2=(0.1,2)*u;
z.a3=(-1,1.1)*u;

save p; path p[];
p0=z.a0..tension .8..z.a1..z.a2..z.a3..tension .8..cycle;
p1=z.a0--z.a1--z.a2--z.a3--cycle;

z.b0= .5*u*unitvector(direction 0 of p0);
z.b1= .5*u*unitvector(direction 1 of p0);
z.b2= .5*u*unitvector(direction 2 of p0);
z.b3= .5*u*unitvector(direction 3 of p0);

labelarcsprof(z.a0+z.b0, z.a0, z.a1, 10,7, btex {\small $\alpha_1$} etex);
labelarcsprof(z.a1+z.b1, z.a1, z.a2, 10,7, btex {} etex);
labelarcsprof(z.a2+z.b2, z.a2, z.a3, 10,7, btex {} etex);
whitelabelarcsprof(z.a3+z.b3, z.a3, z.a0, 10,7, btex {\small $\alpha_n$} etex);

labelarcsprof(z.a0-z.b0, z.a0, z.a3, 10,7, btex {\small $\beta_1$} etex);
labelarcsprof(z.a1-z.b1, z.a1, z.a0, 10,7, btex {\small $\beta_2$} etex);
labelarcsprof(z.a2-z.b2, z.a2, z.a1, 10,7, btex {} etex);
labelarcsprof(z.a3-z.b3, z.a3, z.a2, 10,7, btex {} etex);

draw p0;
draw p1;
draw z.a0-z.b0--z.a0+z.b0 penhair;
draw z.a1-z.b1--z.a1+z.b1 penhair;
draw z.a2-z.b2--z.a2+z.b2 penhair;
draw z.a3-z.b3--z.a3+z.b3 penhair;

dOt z.a0,z.a1,z.a2,z.a3;

label.bot(btex $p_1$ etex, z.a0);
label.rt(btex $p_2$ etex, z.a1);
label.top(btex $\dots$ etex rotated angle -z.b2, z.a2);
label.lft(btex $p_n$ etex, z.a3);
endfig;

beginfig(56) 
save u;
u:=1.4cm;

z.a0=(0,0)*u;
z.a1=(1,1.2)*u;
z.a2=(0.1,2)*u;
z.a3=(-1,1.1)*u;

save p; path p[];
p0=z.a0..tension .8..z.a1..z.a2..z.a3..tension .8..cycle;
p1=z.a0--z.a1--z.a2--z.a3--cycle;



draw p0;
draw p1;
draw z.a1--z.a3;

dOt z.a0,z.a1,z.a2,z.a3;

label.bot(btex $a$ etex, z.a0);
label.rt(btex $b$ etex, z.a1);
label.top(btex $c$ etex, z.a2);
label.lft(btex $d$ etex, z.a3);
endfig;

beginfig(57) 
save u;
u:=1.4cm;

z.a0=(0,0)*u;
z.a1=(1,-3)*u;
z.a2=(1.5,0)*u;
z.b0=.5*u*unitvector(-1,-.5);
z.b1=.5*u*unitvector(1,0);
z.b2=.5*u*unitvector(-1,.7);

save p; path p[];
p0=z.a0{z.b0}..tension 1.4..z.a1{z.b1}..tension 1.4..{z.b2}z.a2;

draw p0;

drawarrow z.a0--z.a0+z.b0;
drawarrow z.a1--z.a1+z.b1;
drawarrow z.a2--z.a2+z.b2;
draw ddline(z.a0,z.a2)(.2,.2);
dOt z.a0,z.a1,z.a2;

label.top(btex $\gamma_1(a)$ etex, z.a0);
label.top(btex $\gamma_1(s_0)$ etex, z.a1+(-2,0));
label.urt(btex $\gamma_1(b)$ etex, z.a2);
label.bot(btex $\vec u_1$ etex, z.a1+z.b1);
label.bot(btex $\vec u_1$ etex, z.a1+z.b1);
label.bot(btex $\ell$ etex, .5[z.a0,z.a2]);
endfig;

beginfig(58) 
save u;
u:=1cm;

z.o=origin;
z.v=(1,.3)*u;
z.iv=z.v rotated 90;

mark_rt_angle(z.v, z.o, z.iv);

drawarrow z.o--z.v;
drawarrow z.o--z.iv;

dOt z.o;

label.top(btex $w$ etex, z.v);
label.top(btex $i\cdot w$ etex, z.iv);



endfig;

beginfig(59) 
save u;
u:=1.4cm;

z.a0=(0,0)*u;
z.a1=(1,1.2)*u;
z.a2=(0.1,2)*u;
z.a23=(0,1)*u;
z.a3=(-1,1.1)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2..z.a23..z.a3..tension 1.2..cycle;
p1=z.a0--z.a1--z.a2--z.a23--z.a3--cycle;

z.b0= .5*u*unitvector(direction 0 of p0);
z.b1= .5*u*unitvector(direction 1 of p0);
z.b2= .5*u*unitvector(direction 2 of p0);
z.b23= .5*u*unitvector(direction 3 of p0);
z.b3= .5*u*unitvector(direction 4 of p0);

draw p0;

whitelabelarcsprof(z.a0+z.b0, z.a0, z.a1, 10,7, btex {\small $\alpha_1$} etex);
labelarcsprof(z.a1+z.b1, z.a1, z.a2, 10,7, btex {} etex);
labelarcsprof(z.a2+z.b2, z.a2, z.a23, 10,7, btex {} etex);
labelarcsprof(z.a23+z.b23, z.a23, z.a3, 10,7, btex {} etex);
whitelabelarcsprof(z.a3+z.b3, z.a3, z.a0, 10,7, btex {\small $\alpha_n$} etex);

whitelabelarcsprof(z.a0-z.b0, z.a0, z.a3, 10,7, btex {\small $\beta_1$} etex);
whitelabelarcsprof(z.a1-z.b1, z.a1, z.a0, 10,8, btex {\small $\beta_2$} etex);
labelarcsprof(z.a2-z.b2, z.a2, z.a1, 10,7, btex {} etex);
labelarcsprof(z.a23-z.b23, z.a23, z.a2, 10,7, btex {} etex);
labelarcsprof(z.a3-z.b3, z.a3, z.a23, 10,7, btex {} etex);

labeldashedarcsprof(z.a3, z.a0, z.a1, 12,16, btex {\small $\delta_1$} etex);
labeldashedarcsprof(z.a0, z.a1, z.a2, 12,16, btex {\small $\delta_2$} etex);

draw p1;
draw z.a0-z.b0--z.a0+z.b0 penhair;
draw z.a1-z.b1--z.a1+z.b1 penhair;
draw z.a2-z.b2--z.a2+z.b2 penhair;
draw z.a23-z.b23--z.a23+z.b23 penhair;
draw z.a3-z.b3--z.a3+z.b3 penhair;

dOt z.a0,z.a1,z.a2,z.a23,z.a3;

label.bot(btex $p_1$ etex, z.a0);
label.rt(btex $p_2$ etex, z.a1);
label.lft(btex $\dots$ etex rotated angle -z.b2, z.a2 +(3,3));
label.ulft(btex $p_n$ etex, z.a3);
endfig;


beginfig(60);
save u;
u:=1cm;

z.a1=(-1.5,0)*u;
z.a2=(0,0)*u;
z.a3=(1,1)*u;
z.a4=(2,1)*u;
z.a5=(0,-.5)*u;

save p; path p[];
p0=z.a1..z.a2..z.a3..z.a4..z.a5;

z.o=z.a2+((direction 1 of p0) zscaled (0,-1));
p1=circle(z.o,point 1 of p0 -z.o);

p2=circle(point 1 of p0,0.7*(point 1 of p0 -z.o));

draw p0 dashed evenly;
drawarrow (((p0 cutbefore p2) cutafter p2) cutafter p2);
draw p1;

dOt point 1 of p0;

label.top(btex $p$ etex, z.a2);
label.top(btex $\gamma$ etex, z.a3);
label.urt(btex $\sigma$ etex, point .4 of p1);
endfig;

beginfig(61);
save u, n;
u:=.1cm;
n:=30;

z.a=(1,0)*u;
z.b=z.a rotated 180/n;
x.r=abs(z.a-z.b)/2.6;
y.r=3*u;

for i=0 
upto n:
draw circle(z.a rotated (i*360/n),y.r+i*x.r) penhair;
endfor

draw
for i=0 
upto n-1:
(z.a rotated (i*360/n) + (y.r+i*x.r)*unitvector(z.a rotated ((i-1)*360/n)-z.a rotated (i*360/n)))..
endfor
(z.a rotated (n*360/n) + (y.r+n*x.r)*unitvector(z.a rotated ((n-1)*360/n)-z.a rotated (n*360/n)))
;

endfig;

beginfig(62);
save u, a, p;
u:=.6cm;
a:=88;
path p[];

z.o=origin;
z0=(0,-1)*u;
z2=z0 rotated 120;
z4=z0 rotated -120;

z1= whatever*(z0 rotated 60)=z0+whatever*(-z0 rotated -a);
z3=z1 rotated 120;
z5=z1 rotated -120;

z.r=(.5*(z1-z0)) rotated a;

p0=arc(z0+z.r rotated a,z0+z.r,z0+z.r rotated -a)
--
arc(z1-z.r rotated -a,z1-z.r rotated 60,z1-z.r rotated (120+a));

p1=p0--(p0 rotated 120)--(p0 rotated -120)--cycle;

p2=circle(z.o,z0+z.r);

draw p1;

fill p2 withcolor 0;

endfig;

beginfig(63);
save u;
u:=1cm;

save p; path p[];
p0=(0,0)*u..(0,1)*u..(1,0)*u..(0,-1)*u..cycle;

draw circumcircle(point 2 of p0,point 2.2 of p0,point 1.8 of p0);
draw circumcircle(point 0 of p0,point 0.2 of p0,point 3.8 of p0);
draw circumcircle(point .9 of p0,point 1.1 of p0,point 1.3 of p0);
draw circumcircle(point 3.1 of p0,point 2.7 of p0,point 2.9 of p0);

draw p0 penbold;

dOt point 0 of p0,point 1.1 of p0,point 2 of p0,point 2.9 of p0;
endfig;

beginfig(64);
save u;
u:=1cm;

z.p1=(0,0)*u;
z.q1=(.2,2)*u;
z.s=(-.9,.8)*u;
z.p2=(1,1)*u;
z.ss=(-1.7,1)*u;

save p; path p[];
p0=z.p1..tension 1.3..z.q1..z.s..cycle;
p1=z.p1{direction 0 of p0}..z.p2..z.q1{direction 1 of p0};
p2= z.p2{direction 1 of p1}..tension 1.6..z.s{1,-2}..tension 1.3..cycle;

draw p0;
draw p1 penbold;
draw p2;

z.x= p0 intersectionpoint subpath (0,1) of p2;
z.y= p0 intersectionpoint subpath (1,2) of p2;

dOt z.p1,z.q1,z.s,z.p2, z.x, z.y;

label.llft(btex $y$ etex, z.x);
label.ulft(btex $x$ etex, z.y);
label.lrt(btex $p_1$ etex, z.p1);
label.urt(btex $q_1$ etex, z.q1);
label.rt(btex $p_2$ etex, z.p2);
label.llft(btex $s$ etex, z.s);
label.urt(btex $\gamma_1$ etex, point 1.5 of p1);
label.ulft(btex $\hat\sigma_1$ etex, point 1.5 of p0);
whitelabel(btex $\check\sigma_1$ etex, point .6 of p0);
label.lrt(btex $\sigma_2$ etex, point .7 of p2);
endfig;

beginfig(65);
save u;
u:=.8cm;

save p; path p[];
p0= circle(origin,1*u);

z.p1=point 0 of p0;
z.p2=point .5 of p0;
z.p3=point .9 of p0;
z.p4=point 1.3 of p0;
z.p5=point 1.9 of p0;
z.p6=point 2.5 of p0;
z.p7=point 3.1 of p0;
z.p8=point 3.6 of p0;

p1= z.p1{1,0}..z.p2..z.p3{0,1}..z.p4..z.p5{-1,0}..z.p6..z.p7{0,-1}..z.p8..cycle;

draw p0;
draw p1 penbold;

dOt z.p1, z.p2, z.p3, z.p4, z.p5, z.p6, z.p7, z.p8;

label.lrt(btex $p_1$ etex, z.p1);
label.urt(btex $p_2$ etex, z.p2);
label.lft(btex $\dots$ etex rotated (angle (direction  1.5 of p0)), point 1.5 of p0);
label.lrt(btex $p_{2{\cdot} n}$ etex, z.p8);
endfig;

beginfig(67);
save u;
u:=1cm;

z.p=(0,0)*u;
z.b=(0,2)*u;

save p; path p[];
p0=z.p{1,1}..z.b..{0,-1}z.p;

draw p0;

z.z=((point .6 of p0)+(point 1 of p0)+(point 1.4 of p0))/3;

p1=circumcircle (.8*(point .6 of p0)+.2*z.z, .8*(point 1 of p0)+.2*z.z, .8*(point 1.4 of p0)+.2*z.z);

draw p1;
fill p1  withcolor 0;

dOt z.p;
%label.bot(btex $p$ etex, z.p);
endfig;

beginfig(68);
save u;
u:=1cm;

z.x=(0,0)*u;
z.y=(2,0)*u;
z.xy=(1,.5)*u;
z.yx=(1,1.4)*u;

save p; path p[];
p0=z.x{right}..z.xy..z.y{right}..z.yx{-1,.2}..cycle;

hatchfill p0  withcolor (67, 1.5mm, -.5bp);
draw p0;

draw ddline(z.x,z.y)(.4,.3)dashed evenly;

dOt z.x,z.y;

whitelabel(btex $F$ etex, (1,1)*u);
label.bot(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
label.bot(btex $\gamma_1$ etex, z.xy);
label.top(btex $\gamma_2$ etex, z.yx);
endfig;

beginfig(69);
save u;
u:=1cm;

z.o=origin;
z.a=(2,0)*u;
z.c=(-.5,1.2)*u;
z.b=.3[z.c,z.a];
z.bb=(-.3,-.6)*u;

save p; path p[];
p0=z.o--z.b;
p1=z.o--z.bb;
p2=z.a--z.b;
p3=z.a--z.bb;

draw p0;
draw p1;
draw p2;
draw p3;

draw z.a--z.o--z.c--z.b;
draw z.c--z.bb;

dOt z.o,z.a,z.b,z.bb,z.c;

rimmark(p0,p1);
rimmark2(p2,p3);

label.lrt(btex $o$ etex, z.o);
label.rt(btex $a$ etex, z.a);
label.urt(btex $b^*$ etex, z.b);
label.bot(btex $b$ etex, z.bb);
label.top(btex $c$ etex, z.c);
endfig;

beginfig(70);
save u,k;
u:=1cm;
k=.5;

z.x=(-1,0)*u;
z.y=(1,0)*u;
z.a=(0,k)*u;
z.b=(0,1/k)*u;


save p; path p[];
p0=arc(z.x,z.a,z.y);
p1=arc(z.y,z.b,z.x);

hatchfill p0--p1--cycle  withcolor (67, 1.5mm, -.5bp);

draw p0;
draw p1;


z.c0=point .3 of p0;
z.c1=(0,1)*u;
z.c2=point 1.5 of p0;

draw z.c0{up}..z.c1{.2,-.5}..{down}z.c2 penbold;

dOt z.x, z.y, z.c0, z.c2;

label.bot(btex $y$ etex, z.x);
label.bot(btex $x$ etex, z.y);
whitelabel.bot(btex $F$ etex, z.b+(-5,-5));
label.top(btex $\sigma_2$ etex, z.b);
label.bot(btex $\sigma_1$ etex, z.a);
whitelabel.rt(btex $\gamma$ etex, z.c1);
endfig;

beginfig(71);
save u,k;
u:=1cm;
k=100;

z0=(0,-1)*u;
z1=(2,0)*u;
z2=(0,1)*u;
z3=(3.5,0)*u;

save p; path p[];
p0=z0{up}..z1{down}..z2{up}..z3{down}..cycle;

draw subpath (0,1) of p0 cutafter subpath (1.1,1.9) of p0 dashed evenly pensemibold;
draw subpath (0,1) of p0 cutbefore subpath (1.1,1.9) of p0 pensemibold;
draw subpath (1,4) of p0 pensemibold;

for i=1  upto k:
draw (point 2*i/k of p0)--(point 2+2*i/k of p0) cutbefore subpath (1.5,2) of p0  pensemibold penhair;
endfor 

endfig;

beginfig(72);
save u;
u:=1cm;

z.a0=(-1,1)*u;
z.a1=(0,0)*u;
z.a2=(1,1)*u;

z.b0=(0,.5)*u;
z.b1=(0,2)*u;

save p; path p[];
p0= z.a0{1,-.5}..z.a1..z.a2{-1,-.5}..z.a1..cycle;
p1=z.a0{1,-.5}..z.a2{1,.5};
p2=z.b0{1,-.1}..z.b1{-1,.1}..cycle;

hatchfill p1--(reverse (subpath (1,2) of p0))--(subpath (3,4) of p0)--cycle  withcolor (87, 1.5mm, -.5bp);
hatchfill p2  withcolor (7, 1.5mm, -.5bp);
draw p0 pensemibold;
draw p1;
draw p2 dashed evenly;

whitelabel(btex $\Omega$ etex, .5[z.b0,z.b1]);
whitelabel(btex $\hat\Sigma$ etex, .5[z.a0,z.a1]+(-5,-5));
label.top(btex $\hat\gamma$ etex, point 1.8 of p0);
endfig;

beginfig(73);
save u;
u:=1cm;

z.a0=(0,1)*u;
z.a1=(0,0)*u;
z.a2=(0,-1)*u;
z.a3=(-.2,0)*u;

z.b0=(0,-1.5)*u;
z.b1=(0,1.5)*u;

z.q=(2.5,-.4)*u;

z.c0=(2,-1.5)*u;
z.c1=(2.2,1.7)*u;

save p; path p[];
p0=z.b0{1,-.1}..z.b1{-1,.1}..cycle;
p1= z.a0{1,-.5}..z.a1..z.a2{-1,-.5}..z.a3..cycle;
p3=z.c0..z.q..z.c1;
p2=z.a0{1,-.5}..z.q{-direction 1 of p3}..z.a2{-1,-.5};

hatchfill p0  withcolor (7, 1.5mm, -.5bp);
draw p0;
draw p1 penbold;
draw p2;

draw ddline(z.c0,z.c1)(.1,.1);

draw p3;

z.p= point .8 of p2;

dOt z.q, z.p;

label.llft(btex $p$ etex, z.p);
label.rt(btex $q$ etex, z.q);
whitelabel.rt(btex $R$ etex, point 1.5 of p0);
label.llft(btex $\Pi$ etex, .9[z.c0,z.c1]);
label.rt(btex $\Sigma_0$ etex, point 1.5 of p3);
label.bot(btex $\Sigma$ etex, point .5 of p2);
whitelabel.rt(btex $\partial\Sigma$ etex, z.a1);
endfig;

beginfig(74);
save u;
u:=1cm;

z.l=(0,0)*u;
z.a0=(0,1)*u;
z.a1=(1,1)*u;
z.a2=(2,1.5)*u;
z.a3=(3,1)*u;
z.a4=(4,1)*u;
z.a5=(5,1)*u;
z.a6=(6,1)*u;
z.a7=(7,1)*u;
z.a8=(8,1)*u;
z.r=(8,0)*u;

z.b0=(6.5,.5)*u;
z.b1=(5.5,.5)*u;


save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3..z.a4..z.a5..z.a6..z.a7..z.a8;
p1=z.b0..tension 2..z.b1..tension 2..cycle;

z.p=(-.3)[point 1.5 of p0,point 2.4 of p0];
z.q=1.3[point 1.5 of p0,point 2.4 of p0];

draw p0 pensemibold;
draw p1 pensemibold;

hatchfill p0--z.r--p1--z.r--z.l--cycle  withcolor (37, 1.5mm, -.5bp);

draw z.r--z.l dashed evenly;
draw z.r+(0,2)*u--z.l+(0,2)*u dashed evenly;
draw z.p--z.q;

dOt z.p,z.q;

label.top(btex $p$ etex, z.p);
label.top(btex $q$ etex, z.q);
label.top(btex $\Theta$ etex, z.a5);
whitelabel.bot(btex $\hat\Sigma$ etex, z.a5);
label.top(btex $z=r$ etex, (x.a5,2*u));
label.bot(btex $z=0$ etex, (x.a5,0));
endfig;

beginfig(75);
save u;
u:=1cm;

z.l=(0,0)*u;
z.a0=(0,1)*u;
z.a8=(8,1)*u;
z.a5=(5/8)[z.a0,z.a8];
z.a2=(2/8)[z.a0,z.a8];
z.r=(8,0)*u;

z.b0=(6.5,.5)*u;
z.b1=(5.5,.5)*u;

z.w=(1,1.3)*u;
z.ww=(3,2.5)*u;

save p; path p[];
p0=z.a0--z.a8;
p1=z.b0..tension 2..z.b1..tension 2..cycle;

draw p0 pensemibold;
draw p1 pensemibold;

hatchfill p0--z.r--p1--z.r--z.l--cycle  withcolor (37, 1.5mm, -.5bp);

draw z.r--z.l dashed evenly;
draw z.r+(0,2)*u--z.l+(0,2)*u dashed evenly;
draw z.w--z.ww;

dOt z.w;

label.top(btex $\Theta$ etex, z.a2);
whitelabel.bot(btex $\hat\Sigma$ etex, z.a2);
label.top(btex $z=r$ etex, (x.a5,2*u));
label.top(btex $z=r_0$ etex, (x.a5,1*u));
label.ulft(btex $w$ etex, z.w);
label.bot(btex $z=0$ etex, (x.a5,0));
endfig;

beginfig(76);
save u;
u:=1cm;

z.a0=(-4,.1)*u;
z.a1=(0,0)*u;
z.a2=(4,.2)*u;

z.b0=(-4,-.9)*u;
z.b1=z.a1;
z.b2=(-4,.9)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2;
p1=z.b0{right}...z.b1...{left}z.b2;

hatchfill (subpath (0,1) of p0)--(subpath (1,0) of p1)--cycle  withcolor (37, 1.5mm, -.5bp);

hatchfill (subpath (2,1) of p0)--(subpath (1,2) of p1)--(-4,1.5)*u--(4,1.5)*u--cycle  withcolor (37, 1.5mm, -.5bp);

draw p0;
draw p1;

draw (-4,1)*u--(4,1)*u pensemibold;
draw (-4,-1)*u--(4,-1)*u pensemibold;

dOt z.a1;

x.h=3*u;

whitelabel.top(btex $h=-C$ etex, (x.h,1*u));
label.top(btex $h=C$ etex, (x.h,-1*u));
whitelabel.top(btex $\Sigma^+_0$ etex, (-2*u,-.6*u));
whitelabel.top(btex $\Sigma^+_1$ etex, (2*u,.4*u));
label.lrt(btex $p$ etex, z.a1);

whitelabel.lrt(btex $R_-$ etex, (-4,1.5)*u);
whitelabel.rt(btex $R_0$ etex, (-4,0)*u+(0,2));
whitelabel.urt(btex $R_+$ etex, (-4,-1.5)*u);
endfig;

beginfig(77);
save u, t;
u:=.7cm;
t:=1.7;

save p; path p[];
p0=ellipse_canonical(sqrt(5)*u, 1*u);

z.l=point t of p0;
z.r=point (2-t) of p0;
z.v=(0,whatever)=z.l+ whatever*(direction t of p0);
z.p=point (2.1) of p0;

labelarcsprof(origin, z.p, z.v, 10,7, btex {$\theta$} etex);

draw subpath (2-t,t) of p0 dashed evenly;
draw subpath (t,4) of p0;
draw subpath (0,2-t) of p0;

draw z.r--z.v--z.l;
draw z.p--origin  dashed evenly penhair;
draw z.p--z.v penhair;

dOt origin;


endfig;

beginfig(78);
save u, t;
u:=.7cm;

save p; path p[];
p0= circle(origin, 2*u);
p1=(1.2,0)*u{.1,1}..(0,1.1)*u{-1,.2}..(-1,0)*u{-.3,-1}..(0,-1)*u{1,-.2}..cycle;

hatchfill p1  withcolor (87, 1.5mm, -.5bp);
draw p0 pensemibold;
draw p1 pensemibold;


z.xi=point .8 of p0;
draw ddline(origin,z.xi)(0,.2);
z.rhoxi=p1 intersectionpoint (origin--z.xi);

dOt origin, z.xi,z.rhoxi;

label.urt(btex $\xi$ etex, z.xi+(1,-2));
label.urt(btex $q$ etex, z.rhoxi+(1,-2));
whitelabel(btex $R$ etex, (-.4,.4)*u);
label.ulft(btex $\Sigma$ etex, point 1.5 of p1);
label.ulft(btex $\mathbb{S}^2$ etex, point 1.5 of p0);
endfig;

beginfig(79);
save u;
u:=1cm;

z.p=(1,0)*u;
z.q=(-1,0)*u;
z.s=(0,1/4)*u;

draw z.p--z.s--z.q;
draw z.p--z.q dashed evenly;

Dot z.p,z.q,z.s; 

dOt origin;

label.rt(btex $p$ etex, z.p);
label.lft(btex $q$ etex, z.q);
label.top(btex $s_\epsilon$ etex, z.s);
endfig;

beginfig(80);
save u;
u:=1cm;

z.p=origin;
z.w=(1,0)*u;
z.nu=z.w rotated 90;

z.a0=(-1.5,.4)*u;
z.a2=(1.5,.5)*u;
z.b0=(-1,.9)*u;
z.b2=(1,1)*u;

draw z.a0..z.p{z.w}..z.a2 pensemibold withcolor .5;
draw z.b0..z.p{z.w}..z.b2 pensemibold;

drawarrow z.p--z.w;
drawarrow z.p--z.nu;

dOt z.p;

label.bot(btex $p$ etex, z.p);
label.rt(btex $\vec w$ etex, z.w);
label.top(btex $\Norm_p$ etex, z.nu);
label.rt(btex {\color{darkgray} $\gamma_1$} etex, z.a2);
label.rt(btex $\gamma_2$ etex, z.b2);
label(btex $\Pi$ etex, .5[z.b0,z.nu]);
endfig;



beginfig(82);
save u;
u:=1cm;

z.a0=(-1,0)*u;
z.a1=(1,0)*u;

save p; path p[];
p0=z.a0{.3,1}..z.a1{.3,-1}..cycle;

hatchfill p0  withcolor (37, 1.5mm, -.5bp);
draw p0;

z.p=point .2 of p0;
z.q=point .9 of p0;
z.Sigma=point 1.1 of p0;
z.s=(0,1.5)*u;
z.a=(-.8,1.2)*u;
z.b=(.9,1.3)*u;

p1=z.p..z.a..z.s..z.b..z.q;

draw ddline(z.a,z.b)(.2,.5);
draw p1 pensemibold;

dOt z.p,z.q,z.s,z.a,z.b;

whitelabel.lrt(btex $p$ etex, z.p);
whitelabel.llft(btex $q$ etex, z.q);
label.ulft(btex $a$ etex, z.a);
label.urt(btex $b$ etex, z.b);
label.top(btex $w$ etex, z.s);
label.rt(btex $\Sigma$ etex, z.Sigma);
label.bot(btex $\Pi$ etex, 1.5[z.a,z.b]);
whitelabel(btex $R$ etex, (0,-.5)*u);
endfig;

beginfig(83);
save u, t;
u:=2cm;
t=1;

z.a0=(-.5,0)*u;
z.a1=(.5,0)*u;

save p; path p[];
p0= circle(origin, .2*u);
p1=z.a0{.3,1}..z.a1{1,-1}..cycle;
p2= circle(origin, 1*u);

z.p= point t of p1;
z.nu=z.p + unitvector(direction t of p1 rotated 90)*u;
z.Sigma=point 1.5 of p1;

labelarcsprof(2*z.p, z.p, z.nu, 12,12, btex {$\theta_p$} etex);
mark_rt_angle(z.nu, z.p, z.p + unitvector(direction t of p1 rotated 180)*u);

draw p0 dashed evenly;
draw p1 pensemibold;
draw p2 dashed evenly;
draw ddline(origin,z.p)(0,.65) dashed evenly;

drawarrow z.p--z.nu;

dOt origin,z.p;

label.llft(btex $\gamma(t)$ etex, z.p+(3,0));
label.urt(btex $\Norm$ etex, z.nu);
label.top(btex $\Sigma$ etex, z.Sigma);
endfig;

beginfig(84);
save u, n, m;
u:=.15cm;
n:=30;
m:=10;

z.a=(1,0)*u;
z.b=z.a rotated 180/n;
x.r=abs(z.a-z.b)/2.6;
y.r=3*u;

draw
for i=0 
upto n-1:
(z.a rotated (i*360/n) + (y.r+i*x.r)*unitvector(z.a rotated ((i-1)*360/n)-z.a rotated (i*360/n)))..
endfor
(z.a rotated (n*360/n) + (y.r+n*x.r)*unitvector(z.a rotated ((n-1)*360/n)-z.a rotated (n*360/n)))
;

draw circle(z.a rotated (m*360/n),y.r+m*x.r) pensemibold;
draw z.a rotated (m*360/n)--(z.a rotated (m*360/n) + (y.r+m*x.r)*unitvector(z.a rotated ((m-1)*360/n)-z.a rotated (m*360/n)));
dOt z.a rotated (m*360/n), (z.a rotated (m*360/n) + (y.r+m*x.r)*unitvector(z.a rotated ((m-1)*360/n)-z.a rotated (m*360/n)));

label.urt(btex $\gamma(s)$ etex, (z.a rotated (m*360/n) + (y.r+m*x.r)*unitvector(z.a rotated ((m-1)*360/n)-z.a rotated (m*360/n))));
label.llft(btex $\omega(s)$ etex, z.a rotated (m*360/n));

label.top(btex $r(s)$ etex rotated angle(z.a rotated ((m-1)*360/n)-z.a rotated (m*360/n)), .5[z.a rotated (m*360/n), (z.a rotated (m*360/n) + (y.r+m*x.r)*unitvector(z.a rotated ((m-1)*360/n)-z.a rotated (m*360/n)))]+(-1,-2));
endfig;

beginfig(85);
save u;
u:=1cm;

z.a0=(-1,-1)*u;
z.a2=(1,-1)*u;

z.b0=(-1,1)*u;
z.b2=(1,1)*u;

z.shift=(4.5,0)*u;

drawarrow z.a0..origin{right}..z.a2 withcolor .5;
drawarrow z.b0..origin{right}..z.b2;

drawarrow (z.a2..origin{left}..z.a0) shifted z.shift withcolor .5;
drawarrow (z.b0..origin{right}..z.b2) shifted z.shift;

dOt origin, z.shift;

label.bot(btex cooriented etex, (0,-1)*u);
label.bot(btex controriented etex, z.shift+(0,-1)*u);

label.ulft(btex {\color{darkgray}$\gamma_1$} etex, z.a0);
label.llft(btex $\gamma_2$ etex, z.b0);

label.urt(btex {\color{darkgray}$\gamma_1$} etex, z.shift+z.a2);
label.lrt(btex $\gamma_2$ etex, z.shift+z.b2);

label.bot(btex $p$ etex, origin);
label.bot(btex $p$ etex, z.shift);
endfig;

beginfig(86);
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(1,1)*u;
z.a2=(2,.5)*u;
z.a3=(3,1)*u;
z.a4=(4,0)*u;
z.a5=(2.7,.6)*u;

z.b0=(0,1)*u;
z.b1=(1,.5)*u;
z.b2=z.a2;
z.b3=(3,0)*u;
z.b4=(4,.3)*u;


save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3..z.a4..z.a5;
p1=z.b0..z.b1..z.b2{direction 2 of p0}..z.b3..z.b4;
p2=z.b3..z.a2+(0,2)*u..z.b1;


draw p0 dashed evenly withcolor .5;
drawarrow subpath (1.3,2.7) of p0 pensemibold withcolor .5;
draw p1 dashed evenly;
drawarrow subpath (1,3) of p1 pensemibold;
draw p2 penhair;

dOt point 2 of p0;

hatchfill (subpath (1,3) of p1)--p2--cycle  withcolor (67, 1.5mm, -.5bp);

label.bot(btex $p$ etex, z.a2);
label.top(btex {\color{darkgray}$\gamma_2$} etex,  point .7 of p0);
label.bot(btex $\gamma_1$ etex, point .7 of p1);
whitelabel(btex $R$ etex, z.a2+(0,1)*u);
endfig;

beginfig(87)
save u, k;
u:=.6cm;
k:=4;

save p; path p[];
p0= ellipse_canonical(3*u, u);
p1=p0 shifted (0,1.5*u);

z.A=point 2.8 of p0;
z.B=point 3.3 of p1;
z.BB=point 3.3 of p0;
z.C=point 3.8 of p0;
z.O=origin;
z.K=(z.O--z.BB) intersectionpoint (z.A--z.C);

z.r0=point 0 of p0;
z.r1=point 0 of p1;
z.l0=point 2 of p0;
z.l1=point 2 of p1;

draw subpath (0,2) of p0 dashed evenly;
draw subpath (2,4) of p0;
draw p1;

draw z.A--z.B--z.C--z.BB--cycle;
draw z.A--z.C;
draw z.B--z.BB;
draw z.K--z.BB;
draw z.B--z.K;
draw z.r0--z.r1;
draw z.l0--z.l1;

dOt z.A,z.B,z.BB,z.C,z.K;

label.llft(btex $a$ etex, z.A);
whitelabel.top(btex $b$ etex, z.B);
label.bot(btex $b^{*}$ etex, z.BB);
label.lrt(btex $c$ etex, z.C);
label.ulft(btex $p$ etex, z.K);
endfig;

beginfig(110) 
save u,p;
path p[];
u:=.45cm;

p0=(1,0)*u{up}..(3,0)*u{down}..(2,0)*u{up}..(5,0)*u{down}..(4,0)*u{up}..(7,0)*u{down}..(6,0)*u{up}..(8,0)*u{down}..tension 2..cycle;

draw subpath (0,7.4) of p0 pensemibold;
draw subpath (7.7,8) of p0 pensemibold;

label.bot(btex curve etex, (0,-2)+point 7.5 of p0);

endfig;

beginfig(115) 
save u,p;
path p[];
u:=.45cm;

p0=(1,0)*u{up}..(3,0)*u{down}..(2,0)*u{up}..(5,0)*u{down}..(4,0)*u{up}..(7,0)*u{down}..(6,0)*u{up}..(8,0)*u{down}..tension 2..cycle;

draw p0 pensemibold;

label.bot(btex closed curve etex, (0,-2)+point 7.5 of p0);

endfig;

beginfig(120) 
save u,p;
path p[];
u:=.45cm;

p0=(1,0)*u{-1,1}..tension 1.4..(4,0)*u{1,-1}..tension 1.4..(3,0)*u{-1,1}..tension 1.4..(2,0)*u{1,-1}..tension 1.4..(5,0)*u{-1,1}..tension 1.4..(8,0)*u{1,-1}..tension 1.4..(7,0)*u{-1,1}..tension 1.4..(6,0)*u{1,-1}..tension 1.4..cycle;

draw subpath (0,7.4) of p0 pensemibold;


label.bot(btex simple curve etex, (4.5,-2)*u);
endfig;

beginfig(125) 
save u,p;
path p[];
u:=.45cm;

p0=(1,0)*u{-1,1}..tension 1.4..(4,0)*u{1,-1}..tension 1.4..(3,0)*u{-1,1}..tension 1.4..(2,0)*u{1,-1}..tension 1.4..(5,0)*u{-1,1}..tension 1.4..(8,0)*u{1,-1}..tension 1.4..(7,0)*u{-1,1}..tension 1.4..(6,0)*u{1,-1}..tension 1.4..cycle;

draw  p0 pensemibold;

label.bot(btex simple closed curve etex, (4.5,-2)*u);
endfig;

beginfig(130) 
save u,p;
path p[];
u:=1cm;

p0=origin{(1,1)}..(1,1)*u{.4,1}..{down}origin;

drawarrow subpath (0,1) of p0;
draw subpath (1,2) of p0;
dOt origin;

label.bot(btex $p$ etex, origin);
label.rt(btex $\gamma$ etex, (1,1)*u);
endfig;

beginfig(140) 
save u,p;
path p[];
u:=1cm;

p0=(1,0)*u--(0,0)*u--(0,1)*u;

draw p0;
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(220);
save u,a,n;
u:=.7cm;
a:=60;
n:=0;



z0=origin;
z1=(1,0)*u;
z2=z1+(z1 rotated a);
z3=z2+(z1 rotated -a);
z4=z3+z1;
z.b=z4 rotated -60;
x.r=abs(z1)/abs(z4);

setbounds currentpicture to (x0-1,y2+1)--(x4+1,y2+1)--(x4+1,y.b-1)--(x0-1,y.b-1)--cycle;

save p;
path p[];

p0=z0--z3;

for i = 1 upto n : 
p[i]=(p[i-1] scaled x.r)--(p[i-1] scaled x.r rotated a shifted z1)--(p[i-1] scaled x.r  rotated -a shifted z2)--(p[i-1] scaled x.r  shifted z3); 
endfor

fill p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle withcolor .7;
draw p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle penhair;
endfig;

beginfig(221);
save u,a,n;
u:=.7cm;
a:=60;
n:=1;

z0=origin;
z1=(1,0)*u;
z2=z1+(z1 rotated a);
z3=z2+(z1 rotated -a);
z4=z3+z1;
z.b=z4 rotated -60;
x.r=abs(z1)/abs(z4);

setbounds currentpicture to (x0-1,y2+1)--(x4+1,y2+1)--(x4+1,y.b-1)--(x0-1,y.b-1)--cycle;

save p;
path p[];

p0=z0--z3;

for i = 1 upto n : 
p[i]=(p[i-1] scaled x.r)--(p[i-1] scaled x.r rotated a shifted z1)--(p[i-1] scaled x.r  rotated -a shifted z2)--(p[i-1] scaled x.r  shifted z3); 
endfor

fill p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle withcolor .7;
draw p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle penhair;
endfig;

beginfig(222);
save u,a,n;
u:=.7cm;
a:=60;
n:=2;

z0=origin;
z1=(1,0)*u;
z2=z1+(z1 rotated a);
z3=z2+(z1 rotated -a);
z4=z3+z1;
z.b=z4 rotated -60;
x.r=abs(z1)/abs(z4);

setbounds currentpicture to (x0-1,y2+1)--(x4+1,y2+1)--(x4+1,y.b-1)--(x0-1,y.b-1)--cycle;

save p;
path p[];

p0=z0--z3;

for i = 1 upto n : 
p[i]=(p[i-1] scaled x.r)--(p[i-1] scaled x.r rotated a shifted z1)--(p[i-1] scaled x.r  rotated -a shifted z2)--(p[i-1] scaled x.r  shifted z3); 
endfor

fill p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle withcolor .7;
draw p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle penhair;
endfig;

beginfig(224);
save u,p;
u:=.7cm;
path p[];

z.p0=(0,0)*u;
z.p1=(1,1)*u;
z.p2=(2,.2)*u;
z.p3=(3,1)*u;

p0=z.p0..tension 1.2..z.p1..z.p2..z.p3;

z.q1=point .7 of p0;
z.q2=point 1.9 of p0;

draw p0 pensemibold;
draw z.p0--z.q1--z.q2--z.p3;
dOt z.p0,z.q1,z.q2,z.p3;

label.lft(btex $p_0$ etex, z.p0);
label.top(btex $p_1$ etex, z.q1);
label.bot(btex $\dots$ etex rotated -20, z.q2);
label.rt(btex $p_k$ etex, z.p3);
label.bot(btex $\gamma$ etex, point 2.5 of p0);
endfig;

beginfig(225);
save u,a,n;
u:=.7cm;
a:=60;
n:=5;

z0=origin;
z1=(1,0)*u;
z2=z1+(z1 rotated a);
z3=z2+(z1 rotated -a);
z4=z3+z1;
z.b=z4 rotated -60;
x.r=abs(z1)/abs(z4);

z.shift=(3.4,0)*u;
z.extra=(1,0)*u;

setbounds currentpicture to (x0-1,y2+1)--(x4+1,y2+1)--(x4+1,y.b-1)--(x0-1,y.b-1)--cycle;

save p;
path p[];

p0=z0--z3;

for i = 1 upto n : 
p[i]=(p[i-1] scaled x.r)--(p[i-1] scaled x.r rotated a shifted z1)--(p[i-1] scaled x.r  rotated -a shifted z2)--(p[i-1] scaled x.r  shifted z3); 
endfor

hatchfill   
p[0]--(p[0] rotated -120 shifted z4)--(p[0] rotated 120 shifted z.b)--cycle withcolor (87, 1.5mm, -.5bp);

draw p[0]--(p[0] rotated -120 shifted z4)--(p[0] rotated 120 shifted z.b)--cycle ;

hatchfill (p[1]--(p[1] rotated -120 shifted z4)--(p[1] rotated 120 shifted z.b)--cycle) shifted z.shift withcolor (87, 1.5mm, -.5bp);

draw (p[1]--(p[1] rotated -120 shifted z4)--(p[1] rotated 120 shifted z.b)--cycle) shifted z.shift ;

hatchfill (p[2]--(p[2] rotated -120 shifted z4)--(p[2] rotated 120 shifted z.b)--cycle) shifted (2*z.shift) withcolor (87, 1.5mm, -.5bp);
draw (p[2]--(p[2] rotated -120 shifted z4)--(p[2] rotated 120 shifted z.b)--cycle) shifted (2*z.shift);

hatchfill (p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle) shifted (3*z.shift+z.extra) withcolor (87, 1.5mm, -.5bp);
draw (p[n]--(p[n] rotated -120 shifted z4)--(p[n] rotated 120 shifted z.b)--cycle) shifted (3*z.shift+z.extra) penhair;

label(btex $\dots$ etex, .5[z4+.5*(z2 rotated -120)+2*z.shift,3*z.shift+z.extra+.5*(z2 rotated -120)]);


endfig;

beginfig(230) 
save u;
u:=1cm;

z.pp=(2,0)*u;
z.qq=(-2,0)*u;
z.s=(.5,1.5)*u;

save p; path p[];
p0=(ddline(z.pp,z.qq)(0.1, 0.1)) shifted (0,y.s);
draw p0;

z.p=.2[z.pp,z.qq];
z.q=.8[z.pp,z.qq];
z.sq=(0,.7)*u;

p1=z.p{dir 170}..z.s{left}..z.sq..{dir -120}z.q;
draw p1;

draw ddline(z.pp,z.qq)(0.1, 0.1);

%drawarrow subpath (0,1.4) of p0;
drawarrow subpath (0,2) of p1;

dOt z.p, z.q, z.s;

label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.top(btex $w$ etex, z.s);
label.lrt(btex $\gamma$ etex, z.sq);
endfig;

beginfig(240)
save u,p;
path p[];
u:=1.4cm;

z.a=(0,0)*u;
z.b=(1,0)*u;

p0=z.a{.7,1}..z.b{.6,-1}..cycle;

draw p0;
draw subpath(0,1) of p0 reflectedabout (z.a,z.b) dashed evenly;
draw ddline(z.a,z.b)(.4,.4);

label.top (btex $\Delta$ etex, point .5 of p0);
label.top (btex $\Sigma$ etex, point 1.5 of p0);
label.ulft (btex $\Pi$ etex, 1.4[z.a,z.b]);

endfig;

beginfig(250)
save u,p;
path p[];
u:=2.8cm;

z.a=(0,0)*u;
z.b=(1,0)*u;

z.p=(.05,-.05)*u;
z.q=(.8,.1)*u;
z.pq=(.6,.15)*u;
z.v=unitvector(-1,.1);

p0=z.a{.7,1}..z.b{.6,-1}..cycle;
p1=z.q..z.pq{z.v}..z.p;

z.pp=z.pq+(arclength subpath (1,2) of p1)*z.v;

draw p0;
draw p1;
draw z.pq--z.pp dashed evenly;

rimmark(z.pq--z.pp, subpath (1,2) of p1);

dOt z.p,z.q,z.pq,z.pp;

label.top (btex {\Large $\Sigma$} etex, (0,10)+point 1.5 of p0);
label.bot (btex $p$ etex, z.p);
label.bot (btex $q$ etex, z.q);
label.bot (btex $\gamma(s)$ etex, z.pq);
label.top (btex $p^s$ etex, z.pp);
endfig;



beginfig(260)
save u,p;
path p[];
u:=.6cm;

p8=(-1,0)*u{up}..origin..(1,0)*u{up}..origin..cycle;
drawarrow subpath (0,2) of p8;
drawarrow subpath (2,4) of p8;
endfig;

beginfig(261)
save u,p;
path p[];
u:=.2cm;

z1=(1,0)*u;
z2=(2,0)*u;
z3=(3,0)*u;
z4=(4,0)*u;
z5=(5,0)*u;

p5=z1{up}..(-z1){down}..z2{up}..(-z2){down}..z3{up}..-z3{down}..z4{up}..(-z4){down}..z5{up}..(-z5){down}..cycle;
draw p5;

drawarrow subpath (0,2) of p5;
drawarrow subpath (2,4) of p5;
drawarrow subpath (4,6) of p5;
drawarrow subpath (6,8) of p5;
drawarrow subpath (8,10) of p5;

endfig;

beginfig(262)
save u,p;
path p[];
u:=.35cm;
z1=(1,0)*u;
z2=(2,0)*u;
z3=(3,0)*u;
z4=(4,0)*u;


p4=z1{up}..z4{down}..z3{up}..z2{down}..cycle;
drawarrow subpath (0,.5) of p4;
drawarrow subpath (.5,2.5) of p4;
draw subpath (2.5,4) of p4;

dOt z2,z3;
endfig;

beginfig(290);
save u,p;
path p[];
u:=1cm;

z.a0=(0,.5)*u;
z.a1=(2,0)*u;
z.a2=-z.a0;

draw z.a0{1,-1}..z.a1{up}..{-1,-1}z.a2;

endfig;

beginfig(295);
save u,p;
path p[];
u:=1cm;

z[0]=(0,1)*u;
z.k=(1-.01,.04);

for i=1 step 1 until 1000:
z[i]=z[i-1] zscaled z.k;
endfor

draw
for i=0 step 1 until 1000:
z[i]..
endfor
origin;

endfig;

beginfig(296);
save u,p,t;
path p[];
u:=1cm;

z[0]=(0,1)*u;
z.k=(1-.01,.07);

for i=1 step 1 until 301:
z[i]=z[i-1] zscaled z.k;
endfor

p0=
for i=0 step 1 until 301:
z[i]..
endfor
origin;

draw subpath (0,90) of p0;
draw subpath (90,120) of p0 dashed evenly;
draw subpath (120,300) of p0;

endfig;

beginfig(300);
save u,p;
path p[];
u:=.05cm;

p0=
for i=-4 step 1/256 until 4:
(.5*(mexp(256*i)+mexp(-256*i)),i)*u..tension 4..
endfor

for i=-4 step 1/256 until 4:
(-.5*(mexp(256*i)+mexp(-256*i)),-i)*u..tension 4..
endfor
cycle;

z.x0= point -.15 of p0;
z.v0=direction -.15 of p0;
p1= z.x0{z.v0}..z.x0 yscaled -1{-z.v0 yscaled -1};

hatchfill p0  withcolor (87, 1.5mm, -.5bp);
draw p0;
draw p1 dashed evenly;
draw p1 xscaled -1 dashed evenly;

draw (0,-2)*10*u--(0,2)*10*u dashed linedot;

endfig;

beginfig(320);
save u,p,r;
path p[];
u:=.7cm;
r:=3;

draw (-r,0)*u--(0,0)*u--(r,r)*u
penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.bot (btex $y=h(x)$ etex, (.4*r,r)*u);
endfig;

beginfig(321);
save u,p,r;
path p[];
u:=.7cm;
r:=3;

draw (-r,0)*u--(0,0)*u
for i=.1 step .1 until r:
..(i,i/(2**(1/i)))*u
endfor
penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.bot (btex $y=f(x)$ etex, (.4*r,r)*u);
endfig;

beginfig(325);
save u,p,r,eps;
path p[];
u:=.7cm;
r:=3;
eps:=.5;

p0=(-r,0)*u--(-eps,0)*u{right}..tension 3..(0,5*eps)*u{right}..tension 3..(eps,0)*u{right}--(r,0)*u;
draw p0 penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.urt (btex $y=b_\epsilon(x)$ etex, point 2.4 of p0);
endfig;

beginfig(326);
save u,p,r,eps;
path p[];
u:=.7cm;
r:=3;
eps:=.5;

p0=(-r,0)*u--(-eps,0)*u{right}..tension 1.4..(eps,1)*u{right}--(r,1)*u;
draw p0 penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.top (btex $y=\sigma_\epsilon(x)$ etex, point 2.4 of p0);
endfig;


beginfig(354) 
save u;
u:=1cm;

z.a=(1,.7)*u;
z.a1=(2,1)*u;
z.a2=(2,.2)*u;
z.b=(1.5,0)*u;
z.b1=(1.6,-.3)*u;
z.b2=(1.5,-1)*u;
z.c=(1,-1)*u;

save p; path p[];
p0=z.b{0,-1}..z.b2..z.c..z.a..{-1,-.5}z.b;

z.aa=.7*u*unitvector(direction 5 of p0);
z.bb=.7*u*unitvector(direction 0 of p0);

labelarcsprof(z.b+z.aa, z.b, z.b+z.bb, 10,7, btex $\theta$ etex);

drawarrow z.b--z.b+z.aa penhair;
drawarrow z.b--z.b+z.bb penhair;
draw p0;

dOt z.b;

whitelabel.lft (btex $\gamma'(b)$ etex, z.b+z.aa);
whitelabel.lrt (btex $\gamma'(a)$ etex, z.b+z.bb+(-8,2));
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(713) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a3=(3,0)*u;

save p; path p[];


p0=z.a0{1,1}..{1,-2}z.a3;
hatchfill p0--cycle  withcolor (87, 1.5mm, -.5bp);

draw p0;
draw z.a0--z.a3;

dOt z.a0,z.a3;


label.top(btex $\gamma$ etex, point .5 of p0);
label.lft(btex $q$ etex, z.a0+(0,2));
label.rt(btex $p$ etex, z.a3+(0,2));
%label.lft(btex $\gamma'(a)$ etex, z.b0);
%label.rt(btex $\gamma'(b)$ etex, z.b3);
%label.top(btex $\alpha(b)-\alpha(a)$ etex, .5[z.a0,z.a3]);
endfig;

beginfig(725);
save u,p;
path p[];
u:=.9cm;

p0=(-1,-1)*u--(1,-1)*u--(1,1)*u--(-1,1)*u--cycle;
p1=(-.5,.9)*u{1,0}...(.95,.7)*u{0,-1}...(.7,-.85)*u{-1,0}...(-.7,-.7)*u{-1,1}..tension 1.6..cycle;

draw p0;
draw p0 zscaled (.5,.5) rotated 40 shifted ((.1,.05)*u);
draw p1 pensemibold;



endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(750);
save u,p;
path p[];
u:=.8cm;

z.o=(0,-1)*u;
p0=ddline((-1,0)*u,(1,0)*u)(.2,.5);
p1=circle(origin,1*u);
z.p=point .4 of p1;
z.q=whatever[z.o,z.p]=(whatever,0);

draw p1 pensemibold;
draw p0 pensemibold;
drawarrow p0 shifted z.o;
drawarrow ddline((0,-1)*u,(0,1)*u)(.2,.2);

draw ddline(z.o,z.p)(.2,.2);
dOt z.p,z.q, z.o;

label.lrt (btex $0$ etex, z.o);
whitelabel.lrt (btex $(u,v,1)$ etex, z.q);
label.rt (btex $s(u,v)$ etex, z.p);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(910) 
save u,p;
path p[];
u:=1cm;

z.o=origin;
z.a=(0,1)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;

z.ab=.5[z.a,z.b];
z.bc=.5[z.b,z.c];
z.ca=.5[z.c,z.a];

z.abc=z.ab rotatedabout(z.b,-30);
z.bca=z.bc rotatedabout(z.c,-30);
z.cab=z.ca rotatedabout(z.a,-30);

draw ddarc(z.ab,z.abc,z.bc)(30,30);
draw ddarc(z.bc,z.bca,z.ca)(30,30);
draw ddarc(z.ca,z.cab,z.ab)(30,30);

fill circle(z.o,z.abc) withcolor 0;

draw z.a--z.b--z.c--cycle;

dOt z.a,z.b,z.c;

rimmark(z.a--z.ab,z.b--z.ab,z.c--z.ca,z.a--z.ca,z.b--z.bc,z.c--z.bc);

%label.bot (btex $1$ etex, .5[z.b,z.bc]);
%label.bot (btex $1$ etex, .5[z.c,z.bc]);
%label.urt (btex $1$ etex, .5[z.a,z.ca]);
%label.urt (btex $1$ etex, .5[z.c,z.ca]);
%label.ulft (btex $1$ etex, .5[z.a,z.ab]);
%label.ulft (btex $1$ etex, .5[z.b,z.ab]);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(920) 
save u;
u:=.6cm;
path p[];

z.a=(1,0)*u rotated 45;
z.b=z.a rotated 90;
z.c=z.a rotated 180;
z.d=z.a rotated -90;
z.shift=(2.6,0)*u;
z.vshift=(0,-2.5)*u;

z.x=(.8,.3)*u;
z.y=z.x yscaled -1;


p1=z.a{-1,1}..z.b{-1,-1}..z.c{1,-1}..z.d{1,1}..cycle;
p2=z.x..tension 2..z.y..tension 2..cycle;

draw p1;
draw p2 rotated 140 dashed evenly;
fill p2 rotated 140 dashed evenly withcolor .5;
draw p2 rotated -140 dashed evenly;
fill p2 rotated -140 dashed evenly withcolor .5;
draw p1 shifted z.shift;
draw p2 rotated 0 shifted z.shift dashed evenly;
fill p2 rotated 0 shifted z.shift withcolor .5;
draw p1 shifted (2*z.shift);
draw p2 rotated 180 shifted (2*z.shift) dashed evenly;
fill p2 rotated 180 shifted (2*z.shift) withcolor .5;

z.l=(-2,0)*u;
z.p=(-1.6,.1)*u;
z.q=(-1,.1)*u;

p3=z.a{-1,1}..z.b{-1,-1}..z.l..z.c{1,-1}..z.d{1,1}..cycle;
p4=z.p{1,-2}..{1,2}z.q;
p5=p4 yscaled -1 cutafter ((-1.4,0)*u--(-.4,0)*u) cutbefore ((-1.4,0)*u--(-2,0)*u); 
p6=z.a{-1,1}..z.b{-1,-1}..z.c{1,-1}..z.d{1,1}..
tension .8
..z.c+z.shift{1,-1}..z.d+z.shift{1,1}..z.a+z.shift{-1,1}..z.b+z.shift{-1,-1}..
tension .8
..cycle;

draw p3 shifted z.vshift;
draw p4 shifted z.vshift;
draw p5 shifted z.vshift;
draw p2 rotated 0 shifted z.vshift dashed evenly;
fill p2 rotated 0 shifted z.vshift withcolor .5;
draw p6 shifted z.vshift shifted z.shift;
draw p2 rotated 180 shifted z.vshift shifted z.shift dashed evenly;
fill p2 rotated 180 shifted z.vshift shifted z.shift withcolor .5;
draw p2 rotated 40 shifted z.vshift shifted (2*z.shift) dashed evenly;
fill p2 rotated 40 shifted z.vshift shifted (2*z.shift) withcolor .5;
draw p2 rotated -40 shifted z.vshift shifted (2*z.shift) dashed evenly;
fill p2 rotated -40 shifted z.vshift shifted (2*z.shift) withcolor .5;

p11=z.a{-1,1}..z.b{-1,-1}..z.l..z.c{1,-1}..z.d{1,1}..
tension .8
..z.c+z.shift{1,-1}..z.d+z.shift{1,1}..
tension .8
..z.c+(2*z.shift){1,-1}..z.d+(2*z.shift){1,1}..
-z.l+(2*z.shift)..
z.a+(2*z.shift){-1,1}..z.b+(2*z.shift){-1,-1}..
tension .8
..
z.a+z.shift{-1,1}..z.b+z.shift{-1,-1}..
tension .8
..cycle;

draw p11 shifted (2*z.vshift);
draw p4 shifted (2*z.vshift);
draw p5 shifted (2*z.vshift);
draw p4 xscaled -1 shifted (2*z.vshift) shifted (2*z.shift);
draw p5 xscaled -1 shifted (2*z.vshift) shifted (2*z.shift);

label.lft (btex $\partial V_1$ etex, (-1,0)*u);
label.lft (btex $\partial V_2$ etex, z.l+z.vshift);
label.lft (btex $\partial V_3$ etex, z.l+2*z.vshift);
endfig;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1181);
save u;
u:=1cm;

z.a0=(-1,6)*u;
z.a1=(0,0)*u;
z.a2=(1,6)*u;

save p; path p[];
p0=z.a0{down}...z.a1{1,-.1}...z.a2{up};
z.dots=point 1.6 of p0;
z.q=point .7 of p0;
z.Sigma=point .3 of p0;

hatchfill p0--cycle  withcolor (57, 1.5mm, -.5bp);
draw p0 pensemibold;

draw z.a1--(x.a1,y.a0);
draw ddline(z.q,(x.q,y.a0))(.1,0);

dOt z.a1, z.q;

label.lft(btex $\Sigma$ etex, z.Sigma);
whitelabel.rt(btex $R$ etex, (x.a1,y.Sigma)+(5,0));
whitelabel.rt(btex $\ell$ etex, (x.a1,y.Sigma/2));
whitelabel.rt(btex $m$ etex, (x.q,y.Sigma/2));
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1182);
save u;
u:=1cm;

z.a0=(-1,6)*u;
z.a1=(0,0)*u;
z.a2=(1,6)*u;

save p; path p[];
p0=z.a0{down}...z.a1{1,-.1}...z.a2{up};
z.x1=point 1.3 of p0;
z.xn=point 1.9 of p0;
z.dots=point 1.6 of p0;
z.q=point .8 of p0;
z.Sigma=point .3 of p0;

draw p0 pensemibold;

draw z.a1--(x.a1,y.a0) dashed evenly;
draw z.a1--z.x1;
draw z.a1--z.xn;
draw z.q--(x.q,y.a0) dashed evenly;
drawarrow z.a1--(z.a1+(0,1)*u);

dOt z.a1, z.xn, z.q, z.x1;

label.bot(btex $p$ etex, z.a1);
label.llft(btex $q$ etex, z.q);
label.rt(btex $x_n$ etex, z.xn);
label.rt(btex $x_1$ etex, z.x1);
label.lft(btex $\Sigma$ etex, z.Sigma);
label.rt(btex $R$ etex, (x.a1,y.Sigma));
label.lft(btex $\vec u$ etex,z.a1+(0,1)*u);
label.rt(btex $\dots$ etex rotated angle(direction 1.6 of p0), z.dots);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1550)
save u,p;
path p[];
u:=1cm;

z.a=(0,1)*u;
z.b=(-1,0)*u;
z.c=(1,0)*u;
z.d=(-3,0)*u;
z.shift=(-4,0)*u;

p0=z.b{right}..z.a..z.b{1,-1}..z.c{1,1}..{-1,0}z.a;
p1=(subpath (0,2) of p0 ..tension 1.5 .. z.d..(point 1.6 of p0){1,0}) shifted z.shift;

hatchfill (subpath (0,2) of p0)--cycle  withcolor (87, 1.5mm, -.5bp);

draw subpath (0,2) of p0;
drawarrow subpath (2,4) of p0;

hatchfill (subpath (0,2) of p1)--cycle  withcolor (87, 1.5mm, -.5bp);
draw subpath (0,2) of p1;
drawarrow subpath (2,4) of p1;

whitelabel (btex $\Delta_1$ etex, .5[z.a,z.b]+(-2,2));
whitelabel (btex $\Delta_1$ etex, .5[z.a,z.b]+(-2,2) shifted z.shift);
label.top (btex $\gamma$ etex, point 2.5 of p0);
label.top (btex $\gamma$ etex, point 2.5 of p1);
endfig;

beginfig(1575) 
save u,p;
path p[];
u:=1cm;

p0=origin{.3,1}..tension .8..(1,1)*u{.1,-1}..tension .8..{-.3,-1}origin;

draw p0;
dOt origin;

label.rt(btex $\alpha$ etex, (1,1)*u);
endfig;

beginfig(1580) 
save u,p,t;
path p[];
u:=.5cm;
t:=.2;

z.a1=(-.5,0)*u;
z.a2=(1.5,0)*u;

p1=z.a1{up}..z.a2{down}..cycle;

z.b1=(-3,0)*u;
z.b2=(3,0)*u;

p2=z.b1{down}..z.b2{up}..cycle;

z.c0=point t of p2;
z.c2=point 2-t of p2;
z.c1=(-1.5,0)*u;

p3=z.c0..z.c1..z.c2;

fill p1--p2--cycle withcolor .5;

drawarrow subpath (0,1) of p1;
draw subpath (1,2) of p1;
drawarrow subpath (0,1) of p2;
draw subpath (1,2) of p2;
draw p3;
draw z.c1--z.a1;

Dot z.a1,z.c0,z.c1,z.c2;

label(btex $\Delta_1$ etex, (0,2)*u) withcolor 1;
label(btex $\Delta_2$ etex, (-2.25,0)*u) withcolor 1;
label.lft(btex $\gamma_1$ etex, z.a2);
label.rt(btex $\gamma_2$ etex, z.b2);
endfig;


beginfig(1585) 
save u,p;
path p[];
u:=1cm;

z.p=origin;
z1=(1,.2)*u;
z2=(0,1)*u;
z3=(-1,.3)*u;
z4=(-1,-.4)*u;
z5=(.1,-1)*u;

draw z.p--z1;
draw z.p--z2;
draw z.p--z3;
draw z.p--z4;
draw z.p--z5;

dOt z.p;

labelarcsprof(z1, z.p, z2, 12, 12, btex $\delta_1$ etex);
labelarcsprof(z3, z.p, z2, 13, 13, btex $\delta_2$ etex);
labelarcsprof(z3, z.p, z4, 14, 14, btex $\delta_3$ etex);
labelarcsprof(z5, z.p, z4, 12, 12, btex $\delta_4$ etex);
labelarcsprof(z5, z.p, z1, 13, 13, btex $\delta_5$ etex);
label.lrt(btex $p$ etex, z.p);
endfig;

beginfig(1590) 
save u,p;
path p[];
u:=1cm;

z.p=origin;
z1=(1,-.3)*u;
z2=(.1,-1)*u;
z3=(-.4,-1)*u;
z4=(-1,-.3)*u;


draw z.p--z1;
draw z.p--z2;
draw z.p--z3;
draw z.p--z4;
draw z.p-- -z1 dashed evenly;

dOt z.p;

labelarcsprof(z1, z.p, z2, 12, 12, btex $\delta_3$ etex);
labelarcsprof(z3, z.p, z2, 13, 13, btex $\delta_2$ etex);
labelarcsprof(z3, z.p, z4, 14, 14, btex $\delta_1$ etex);
labelarcsprof(-z1, z.p, z4, 12, 12, btex $\theta$ etex);
label.urt(btex $p$ etex, z.p);
endfig;

beginfig(1595) 
save u,n;
u:=.6cm;

z.shift=(6,0)*u;
z0=origin;
z1=(3,2)*u;
z11=(x1,-y1);


z.a=(2,.2)*u;
z.b=(4,.2)*u;

path p[];
p0=z.a{1,-1}..{1,1}z.b;
p1=z0..z1..z0+z.shift..z11..cycle;

draw p0;
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0));
draw p1;
endfig;

beginfig(1600) 
save u,n,a;
u:=.5cm;
a:=20;
path p[];


z.a=(-3,0)*u;
z.b=(3,0)*u;

z.l=(-1.4,-4)*u;
z.r=(1.4,-4)*u;

p0=z.a{up}..tension 4..{down}z.b..tension 4..cycle;
p1=z.l{up}..tension 4..{down}z.r..tension 4..cycle;
p2=p1 rotated (-a) shifted ((-1.6,0)*u);
p3=p1 rotated (a) shifted ((1.6,0)*u);

draw p0;
draw subpath (0,1) of p2 dashed evenly;
draw subpath (1,2) of p2;
draw subpath (0,1) of p3 dashed evenly;
draw subpath (1,2) of p3;
draw z.a{down}..{-(direction 0.01 of p2)}point 0.01 of p2;
draw z.b{down}..{(direction .99 of p3)}point .99 of p3;
draw point 1 of p2{-(direction 1 of p2)}..{-(direction 0 of p3)} point 0 of p3;
endfig;

beginfig(1605) 
save u,n;
u:=.6cm;
path p[];

z.a=(-3,0)*u;
z.b=(3,0)*u;
z.u=z.a+z.l +(1.5,-.7)*u;
z.v=z.u xscaled -1;
z.z=(0,-2.5)*u;
z.l=(-.3,-2.4)*u;
z.r=z.l xscaled -1;

p0=z.a{-z.l}..tension 4..z.b{z.r}..z.z..z.u{left}..z.a+z.l{-z.l}..tension 4..z.b+z.r{z.r}..z.v{left}..z.z..cycle;

draw subpath (0,4) of p0;
draw subpath (4,5) of p0 cutafter subpath (6,8) of p0 dashed evenly;
draw subpath (4,5) of p0 cutbefore subpath (6,8) of p0 cutafter subpath (1,2) of p0;
draw subpath (4,5) of p0 cutbefore subpath (1,2) of p0 dashed evenly;
draw subpath (5,6) of p0;
draw subpath (6,7) of p0 dashed evenly;
draw subpath (7,8) of p0;

draw z.u--z.v;
draw z.a--z.a+z.l;
draw z.b--z.b+z.r;
endfig;

beginfig(1610) 
save u,n;
u:=.4cm;
n:=1;

z.shift=(6,0)*u;
z0=origin;
z1=(3,2)*u;
z2=(6,.8)*u;
z11=(x1,-y1);
z22=(x2,-y2);

z.a=(2,.2)*u;
z.b=(4,.2)*u;


path p[];
p0=z.a{1,-1}..{1,1}z.b;


for i=0 step 1 until n:
draw p0 shifted (i*z.shift);
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0)) shifted (i*z.shift);
endfor

draw z0..z1..z2
for i=1 step 1 until n-1:
..z1+i*z.shift..z2+i*z.shift
endfor
..z1+n*z.shift..z0+(n+1)*z.shift..z11+n*z.shift
for i=n-1 step -1 until 0:
..z22+i*z.shift..z11+i*z.shift
endfor
..cycle
;

endfig;

beginfig(1700) 
save u,p;
path p[];
u:=1cm;

z.shift=(2,0)*u;

p0=(0,0)*u--(1,0)*u--(1,1)*u--(0,1)*u--cycle;

draw p0;

p1=(1/2,0)*u--(1/2,1)*u;

draw p0 shifted z.shift;
draw p1 shifted z.shift;

p2=(0,1/2)*u--(1,1/2)*u;

draw p0 shifted (2*z.shift);
draw p1 shifted (2*z.shift);
draw p2 shifted (2*z.shift);

p3=(1/4,0)*u--(1/4,1)*u;
p4=(3/4,0)*u--(3/4,1)*u;

draw p0 shifted (3*z.shift);
draw p1 shifted (3*z.shift);
draw p2 shifted (3*z.shift);
draw p3 shifted (3*z.shift);
draw p4 shifted (3*z.shift);

p5=(0,1/4)*u--(1,1/4)*u;
p6=(0,3/4)*u--(1,3/4)*u;

draw p0 shifted (4*z.shift);
draw p1 shifted (4*z.shift);
draw p2 shifted (4*z.shift);
draw p3 shifted (4*z.shift);
draw p4 shifted (4*z.shift);
draw p5 shifted (4*z.shift);
draw p6 shifted (4*z.shift);

label(btex {\LARGE $\dots$} etex, 5*z.shift+(0,1/2)*u);

endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1750) 
save u,p;
path p[];
u:=1.4cm;


z.p=(0,1)*u;
z.q=(0,-1)*u;

p0=z.p{.4,-1}..{0,-1}z.q;
p1=z.p{-1,.4}..{1,.1}z.q;
p2=z.p{1,.2}..{-1,-.3}z.q;

p11=circle(origin,8) rotated 90 shifted z.p cutafter p0 cutbefore p1;
p12=circle(origin,10) rotated 90 shifted z.p cutafter p2 cutbefore p0;
p21=circle(origin,8) rotated -90 shifted z.q cutafter p1 cutbefore p0;
p22=circle(origin,10) rotated -90 shifted z.q cutafter p0 cutbefore p2;

z.phi1= point arctime (.5*arclength p11) of p11 of p11;
z.psi1= point arctime (.5*arclength p21) of p21 of p21;
z.phi2= point arctime (.5*arclength p12) of p12 of p12;
z.psi2= point arctime (.5*arclength p22) of p22 of p22;

drawarrow subpath (0,.5) of p0;
draw subpath (.5,1) of p0;
drawarrow subpath (0,.5) of p1;
draw subpath (.5,1) of p1;
drawarrow subpath (0,.5) of p2;
draw subpath (.5,1) of p2;
draw p11;
draw p12;
draw p21;
draw p22;

label.llft(btex $\phi_1$ etex, z.phi1);
label.ulft(btex $\psi_1$ etex, z.psi1);
label.lrt(btex $\phi_2$ etex, z.phi2+(-1,0));
label.urt(btex $\psi_2$ etex, z.psi2+(-1,0));
label(btex $\Delta_1$ etex, 
.5[point .5 of p0,point .5 of p1]);
label(btex $\Delta_2$ etex, 
.5[point .5 of p0,point .5 of p2]);
label.lft(btex $\delta$ etex, 
point .5 of p0);
label.lft(btex $\gamma_1$ etex, 
point .5 of p1);
label.rt(btex $\gamma_2$ etex, 
point .5 of p2);
endfig;

beginfig(1775) 
save u,p,r;
path p[];
u:=1cm;
r:=10cm;

y.x=0*u;
y.y=.6*u;
y.z=1.4*u;

p0=(0,y.y)--(r,y.y);
p1=(0,y.x)--(r,y.x);
p2=(0,y.z)--(r,y.z);

z.x0=point .05 of p1;
z.z0=point .05 of p2;
z.x1=point .45 of p1;
z.z1=point .5 of p2;
z.y=point .92 of p0;
z.xx=z.x0+abs(z.x1-z.x0)*unitvector(z.y-z.x0);
z.zz=z.z0+abs(z.z1-z.z0)*unitvector(z.y-z.z0);

draw p0;
draw p1;
draw p2;

rimmark((-.03)[z.x0,z.x1]--z.x1, z.x0--z.xx);
rimmark2((-.03)[z.z0,z.z1]--z.z1, z.z0--z.zz);

draw z.x0--z.y;
draw z.z0--z.y;
draw z.x0--z.z0 dashed evenly;
draw z.xx--z.zz dashed evenly;

dOt z.x0,z.x1,z.z0,z.z1,z.y,z.xx,z.zz;

label.bot(btex $x_0$ etex, z.x0);
label.bot(btex $x_1$ etex, z.x1);
label.lrt(btex $\gamma(a)$ etex, z.y);
label.top(btex $z_0$ etex, z.z0);
label.top(btex $z_1$ etex, z.z1);

label(btex $\delta_a^{x_0}$ etex rotated angle(z.y-z.x0), .8[z.x0,z.y]+(0,-7));
label(btex $\delta_a^{z_0}$ etex rotated angle(z.y-z.z0), .8[z.z0,z.y]+(0,7));

label.lft(btex $\gamma$ etex, (0,y.y));
label.lft(btex $\xi$ etex, (0,y.x));
label.lft(btex $\zeta$ etex, (0,y.z));
endfig;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(2305) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.9[z.p,.4[z.x,z.y]];

draw z.x..z.z..z.y;
draw z.p{.1,1}..z.x;
draw z.p{1,.1}..z.y;
draw z.p{.5,.5}..z.z;

dOt z.x,z.y,z.z,z.p;

label.top(btex $x$ etex, z.x);
label.rt(btex $z$ etex, z.y);
label.urt(btex $y$ etex, z.z);
label.llft(btex $p$ etex, z.p);

endfig;

beginfig(2307) 
save u,p;
path p[];
u:=.7cm;

z.a=(0,1)*u;
z.b=(2,0)*u;
z.c=-z.b;

p1=z.a{1,1}..{1,-2}z.b;
p2=z.b{-1,-1}..{-1,1}z.c;
p3=z.c{1,2}..{1,-1}z.a;

p11=circle(z.a,8);
p12=circle(origin,10) rotated 90 shifted z.a;
p21=circle(z.b,10);
p31=circle(origin,10) rotated 180 shifted z.c;

draw p1;
draw p2;
draw p3;

draw p11 cutbefore p1 cutafter p3;
draw p12 cutbefore p3 cutafter p1;
draw p21 cutbefore p1 cutafter p2;
draw p31 cutbefore p2 cutafter p3;

dOt z.a,z.b,z.c;

label.top(btex $\alpha$ etex, z.a+(0,-11));
label.top(btex $\hat\alpha$ etex, z.a+(0,8));
label.lft(btex $\beta{=}\hat\beta$ etex, z.b+(-8,2));
label.rt(btex $\gamma{=}\hat\gamma$ etex, z.c+(8,2));
label.top(btex $\Delta$ etex, (0,3)+point .5 of p2);
endfig;

beginfig(2308) 
save u,p;
path p[];
u:=1cm;

z.A=origin;
z.B=(3,0)*u;
z.C=(1,2)*u;

draw z.A--z.B--z.C--cycle;

arcs(z.B, z.A, z.C, 12);

dOt z.A,z.B,z.C;


label.urt(btex $\measuredangle\hinge x p q$ etex rotated (.5*angle(z.C-z.A)), z.A +7*unitvector(unitvector(z.B-z.A)+unitvector(z.C-z.A)) rotated -25);
label(btex $\side\hinge x p q$ etex rotated angle(z.B-z.C), .5[z.B,z.C]+8*unitvector(z.B-z.C) zscaled (0,1));
label(btex $\dist{x}{p}{\Sigma}$ etex rotated angle(z.C-z.A), .5[z.A,z.C] + 7*unitvector(z.C-z.A) rotated 90 );
label.bot(btex $\dist{x}{q}{\Sigma}$ etex, .5[z.A,z.B]);
endfig;

beginfig(2310) 
save u,p;
path p[];
u:=.7cm;

z.x=(0,0)*u;
z.p=(2,-3)*u;
z.q=(2,4)*u;
z.xx=.4[z.x,z.q];

whitelabelarcsprof(z.p, z.x, z.q, 12, 25, btex $\le \measuredangle\hinge x p q$ etex);
labelarcsprof2(z.p, z.xx, z.q, 12, 26, btex $\ge \measuredangle\hinge{x'}p q$ etex);

draw z.q--z.x--z.p--z.xx;

dOt z.p,z.q,z.x,z.xx;


label.rt(btex $\tilde p$ etex, z.p);
label.rt(btex $\tilde q$ etex, z.q);
label.lft(btex $\tilde x$ etex, z.x);
label.ulft(btex $\tilde x'$ etex, z.xx);

endfig;

beginfig(2315) 
save u,p;
path p[];
u:=1cm;

z.p=(0,0)*u;
z.q=(6,0)*u;
z.x0=(-2,2)*u;
z.x1=.25[z.x0,z.q];
z.x2=.5[z.x0,z.q];
z.x3=.5[z.x2,z.p];
z.x4=.5[z.x3,z.q];
z.x5=.5[z.x4,z.p];

draw z.x0--z.p;
draw z.x0--z.q;
draw z.x1--z.p;
draw z.x2--z.p;
draw z.x3--z.q;
draw z.x4--z.p;
draw z.x5--z.q;

dOt z.p,z.q,z.x0,z.x1,z.x2,z.x3,z.x4,z.x5;

label.llft(btex $p$ etex, z.p);
label.lrt(btex $q$ etex, z.q);
label.top(btex $x_0$ etex, z.x0);
label.urt(btex $x_1$ etex, z.x1);
label.urt(btex $x_2$ etex, z.x2);
label.ulft(btex $x_3$ etex, z.x3);
whitelabel.urt(btex $x_4$ etex, z.x4);
label.bot(btex $x_5$ etex, z.x5);

endfig;

beginfig(2320) 
save u;
u:=1.4cm;

z.p=(0,0)*u;
z.x=(.2,1)*u;
z.y=(1.2,.1)*u;
z.z=.9[z.p,.4[z.x,z.y]];

draw z.x..z.z..z.y;
draw z.p{.1,1}..z.x;
draw z.p{1,.1}..z.y;
draw z.p{.5,.5}..z.z;

dOt z.x,z.y,z.z,z.p;

label.top(btex $x$ etex, z.x);
label.rt(btex $y$ etex, z.y);
label.urt(btex $z$ etex, z.z);
label.llft(btex $p$ etex, z.p);

endfig;


beginfig(2324) 
save u,p;
u:=1.7cm;
path p[];

z.x=(0,0)*u;
z.y=(2,0)*u;
z.z=.55[z.x,z.y];
z.zx=z.z rotatedabout(z.x,-25);
z.zxx=z.z rotatedabout(z.x,-15);
z.zy=z.z rotatedabout(z.y,30);
z.zyy=z.z rotatedabout(z.y,20);
z.p=z.zy+((z.zx-z.zy) zscaled (.5,3));
z.zxy=z.zx rotatedabout(z.p,-2);
z.shift=(3,0)*u;

z.pp=z.p shifted z.shift;
z.zz=(z.zx rotatedaround(z.p, -angle(z.zx-z.p)+90)) shifted z.shift;
z.xx=(z.x rotatedaround(z.p, -angle(z.zx-z.p)+90)) shifted z.shift;
z.yy=(z.y rotatedaround(z.p, -angle(z.zy-z.p)+90)) shifted z.shift;

p0=arc(z.z,z.zxx,z.zx)--arc(z.zx,z.zxy,z.zy)--(arc(z.zy,z.zyy,z.z))--cycle;

%fill p0 withcolor 0;

p1=arc(z.z,z.zxx,z.zx);

%for i=0 step 3 until abs(z.x-z.z):
%draw p1 shifted -z.x scaled ((abs(z.x-z.z)-i)/(abs(z.x-z.z))) shifted z.x;
%endfor

p2=arc(z.zy,z.zyy,z.z);

%for i=0 step 3 until abs(z.y-z.z):
%draw p2 shifted -z.y scaled ((abs(z.y-z.z)-i)/(abs(z.y-z.z))) shifted z.y;
%endfor

p3=arc(z.zx,z.zxy,z.zy);

%for i=0 step 3 until abs(z.p-z.zx):
%draw p3 shifted -z.p scaled ((abs(z.p-z.zx)-i)/(abs(z.p-z.zx))) shifted z.p;
%endfor

p4= z.x--z.y--z.p--cycle;
draw p4;
hatchfill p4  withcolor (67, 1.5mm, -.5bp);

p5= z.xx--z.zz--z.yy--z.pp--cycle;
draw p5;
hatchfill p5  withcolor (67, 1.5mm, -.5bp);

whiterimmark(z.x--z.z,z.xx--z.zz);
whiterimmark2(z.y--z.z,z.yy--z.zz);
whiterimmark3(z.x--z.p,z.xx--z.pp);
whiterimmark4(z.y--z.p,z.yy--z.pp);

dOt z.p,z.x,z.y,z.z,z.pp,z.xx,z.yy,z.zz;

label.lft(btex $\tilde x$ etex, z.x);
label.rt(btex $\tilde y$ etex, z.y);
label.top(btex $\tilde z$ etex, z.z);
label.bot(btex $\tilde p$ etex, z.p);

label.lft(btex $\dot x$ etex, z.xx);
label.rt(btex $\dot y$ etex, z.yy);
label.top(btex $\dot z$ etex, z.zz);
label.bot(btex $\dot p$ etex, z.pp);

endfig;



beginfig(2325) 
save u,p;
u:=1.7cm;
path p[];

z.x=(0,0)*u;
z.y=(2,0)*u;
z.z=.55[z.x,z.y];
z.zx=z.z rotatedabout(z.x,-25);
z.zxx=z.z rotatedabout(z.x,-15);
z.zy=z.z rotatedabout(z.y,30);
z.zyy=z.z rotatedabout(z.y,20);
z.p=z.zy+((z.zx-z.zy) zscaled (.5,3));
z.zxy=z.zx rotatedabout(z.p,-2);

p0=arc(z.z,z.zxx,z.zx)--arc(z.zx,z.zxy,z.zy)--(arc(z.zy,z.zyy,z.z))--cycle;

fill p0 withcolor 0;

p1=arc(z.z,z.zxx,z.zx);

for i=0 step 3 until abs(z.x-z.z):
draw p1 shifted -z.x scaled ((abs(z.x-z.z)-i)/(abs(z.x-z.z))) shifted z.x;
endfor

p2=arc(z.zy,z.zyy,z.z);

for i=0 step 3 until abs(z.y-z.z):
draw p2 shifted -z.y scaled ((abs(z.y-z.z)-i)/(abs(z.y-z.z))) shifted z.y;
endfor

p3=arc(z.zx,z.zxy,z.zy);

for i=0 step 3 until abs(z.p-z.zx):
draw p3 shifted -z.p scaled ((abs(z.p-z.zx)-i)/(abs(z.p-z.zx))) shifted z.p;
endfor

draw z.x--z.y--z.p--cycle;
draw z.x--z.zx--z.p--z.zy--z.y;


dOt z.p,z.x,z.y,z.z,z.zx,z.zy;

label.lft(btex $\tilde x$ etex, z.x);
label.rt(btex $\tilde y$ etex, z.y);
label.top(btex $\tilde z$ etex, z.z);
label.llft(btex $\tilde w$ etex, z.zx);
label.lrt(btex $\tilde v$ etex, z.zy);
label.bot(btex $\tilde p$ etex, z.p);

endfig;

beginfig(2330) 
save u,p;
path p[];
u:=1cm;

z.p1=(.1,-1)*u;
z.p2=(-.2,1)*u;
z.x1=(-1,.1)*u;
z.x2=(1,0)*u;
z.z=whatever[z.p1,z.p2]=whatever[z.x1,z.x2];

draw z.p1--z.p2--z.x1--z.p1--z.x2--z.p2;
draw z.x1--z.x2 dashed evenly;

dOt z.x1,z.x2,z.p1,z.p2,z.z;

label.bot(btex $\dot p$ etex, z.p1);
label.top(btex $\dot z$ etex, z.p2);
label.lft(btex $\dot x$ etex, z.x1);
label.rt(btex $\dot y$ etex, z.x2);
label.urt(btex $\dot w$ etex, z.z);
endfig;

beginfig(2335) 
save u,p,n;
path p[];
u:=1cm;
n=5;

z.p=origin;
z.x=(-3,-4)*u;
z.y=(3.5,-4)*u;

draw z.x--z.y;
draw z.p--z.x;
draw z.p--z.y;

z.x[0][n]=z.x;
z.x[n][n]=z.y;
for i=1 step 1 until n-1:
z.x[i][n]=(i/n+normaldeviate/(20*n))[z.x,z.y];
draw z.p--z.x[i][n];
endfor

for i=0 step 1 until n:
for j=1 step 1 until n-1:
z.x[i][j]=(j/n+normaldeviate/(20*n))[z.p,z.x[i][n]];
endfor
endfor

for i=1 step 1 until n:
for j=1 step 1 until n-1:
draw z.x[i-1][j+1]--z.x[i][j]--z.x[i-1][j];
endfor
endfor

for i=0 step 1 until n:
for j=1 step 1 until n:
dOt z.x[i][j];
endfor
endfor

dOt z.p;


label.urt(btex $p=x^{0,0}=\dots=x^{N,0}$ etex, z.p);
label.lrt(btex $y=x^{N,N}$ etex, z.y);
label.llft(btex $x^{0,N}=x$ etex, z.x);
label.ulft(btex $x^{0,1}$ etex, z.x[0][1]);
label.urt(btex $x^{N,1}$ etex, z.x[n][1]);
label.bot(btex $x^{1,N}$ etex, z.x[1][n]);
label.bot(btex $\dots$ etex, z.x[3][n]+(0,-2));
label(btex $\dots$ etex rotated angle(z.p-z.x), z.x[0][3]+(-3,3));
label(btex $\dots$ etex rotated angle(z.y-z.p), z.x[n][3]+(3,3));
endfig;

beginfig(3500) 
save u,p;
path p[];
u:=1cm;

z.p=(1,.5)*u;
z.p1=(2,1)*u;
z.p2=(1.3,3)*u;
z.p3=(.3,1.2)*u;
z.p4=z.p+(-.2,0)*u;

p0=z.p{1,0}..z.p1..z.p2..z.p3..{1,0}z.p4--cycle;

draw z.p+(-1,0)*u--z.p+(1.5,0)*u penhair withcolor .5;
hatchfill p0  withcolor (53, 1.5mm, -.5bp);
drawarrow subpath (0,1.6) of p0 pensemibold;
draw subpath (1.6,5) of p0 pensemibold;
drawarrow z.p--z.p+(1,0)*u;
drawarrow z.p--z.p+(0,1)*u;
dOt z.p;

label.bot(btex $p$ etex, z.p);
label.rt(btex $\ell$ etex, z.p+(1.5,0)*u) withcolor .5;
label.rt(btex $\gamma$ etex, point 1.6 of p0);
label.bot(btex $\vec u$ etex, z.p+(1,0)*u);
whitelabel.lft(btex $\vec v$ etex, z.p+(0,1)*u);
whitelabel(btex $F$ etex, point 1.3 of p0+(-.7,0)*u);
endfig;

beginfig(3502);
save u;
u:=1cm;

z.a0=(6,1)*u;
z.a1=(0,0)*u;
z.a2=(6,-1)*u;

save p; path p[];
p0=z.a0{left}...z.a1{.1,-1}...z.a2{right};
z.x1=point 1.2 of p0;
z.xn=point 1.9 of p0;
z.dots=point 1.6 of p0;
z.q=point .8 of p0;
z.Sigma=point .3 of p0;
z.vn=z.a1+unitvector(z.xn-z.a1)*u;

hatchfill p0--cycle  withcolor (53, 1.5mm, -.5bp);
drawarrow subpath (0,.3) of p0 pensemibold;
draw subpath (.3,3) of p0 pensemibold;

draw z.a1--(x.a0,-y.a1);
draw z.a1--z.xn;
drawarrow z.a1--(z.a1+(1,0)*u);
drawarrow z.a1--(z.a1+(0,1)*u);
drawarrow z.x1--(z.x1+unitvector(direction 1.2 of p0)*u);
drawarrow z.a1--z.vn;

dOt z.a1, z.xn, z.x1;

label.lft(btex $o$ etex, z.a1);
label.bot(btex $q_n$ etex, z.xn);
label.bot(btex $p$ etex, z.x1);
label.top(btex $\gamma$ etex, z.Sigma);
whitelabel.bot(btex $F$ etex, z.Sigma+(0,-5));
whitelabel.bot(btex $h$ etex, (x.Sigma,y.a1));
whitelabel.top(btex $\vec v$ etex,z.a1+(1,0)*u);
label.lft(btex $\vec w$ etex,z.a1+(0,1)*u);
whitelabel.bot(btex $\vec v_n$ etex,z.vn);
label.bot(btex $\vec u$ etex,(z.x1+unitvector(direction 1.2 of p0)*u));
%label.bot(btex $\dots$ etex rotated angle(direction 1.6 of p0), z.dots);
endfig;

beginfig(3510) 
save u,p;
path p[];
u:=1cm;

z.p0=(-1,1.4)*u;
z.p1=(-1.3,.9)*u;
z.p2=(-.7,.2)*u;
z.p3=(0,0)*u;
z.p4=(.8,.4)*u;
z.p5=(.6,1.4)*u;

z.q3=z.p3+(0,-2)*u;
z.q2=z.q3+(z.p2-z.p3) rotated 5;
z.q1=z.q2+(z.p1-z.p2) rotated 10;
z.q0=z.q1+(z.p0-z.p1) rotated 15;
z.q4=z.q3+(z.p4-z.p3) rotated -5;
z.q5=z.q4+(z.p5-z.p4) rotated -10;

rimmark(z.p0--z.p1);
rimmark2(z.p1--z.p2);
rimmark3(z.p2--z.p3);
rimmark4(z.p3--z.p4);
rimmark5(z.p4--z.p5);

rimmark(z.q0--z.q1);
rimmark2(z.q1--z.q2);
rimmark3(z.q2--z.q3);
rimmark4(z.q3--z.q4);
rimmark5(z.q4--z.q5);

draw z.p0--z.p1--z.p2--z.p3--z.p4--z.p5;
draw z.q0--z.q1--z.q2--z.q3--z.q4--z.q5;
draw z.p0--z.p5 dashed evenly;
draw z.q0--z.q5 dashed evenly;

dOt z.p0,z.p1,z.p2,z.p3,z.p4,z.p5,z.q0,z.q1,z.q2,z.q3,z.q4,z.q5;

label.ulft(btex $p_0$ etex, z.p0);
label.lft(btex $p_1$ etex, z.p1);
label(btex $\dots$ etex rotated angle(z.p3-z.p2), .5[z.p2,z.p3]+(-2,-6));
label.rt(btex $p_{n-1}$ etex, z.p4);
label.urt(btex $p_n$ etex, z.p5);

label.ulft(btex $q_0$ etex, z.q0);
label.lft(btex $q_1$ etex, z.q1);
label(btex $\dots$ etex rotated angle(z.q3-z.q2), .5[z.q2,z.q3]+(-2,-6));
label.rt(btex $q_{n-1}$ etex, z.q4);
label.urt(btex $q_n$ etex, z.q5);
endfig;

beginfig(3540) 
save u,p;
path p[];
u:=1cm;

z.p0=(1.5,.5)*u;
z.p1=(3.5,1.7)*u;
z.p2=(1.3,3)*u;
z.p3=(.3,1.2)*u;
z.p4=z.p+(-.2,0)*u;

z.p=z.p1+(1.5,0)*u;

p0=z.p0{1,0}..z.p1--z.p1..z.p2..z.p3..cycle;

hatchfill p0  withcolor (53, 1.5mm, -.5bp);
draw  p0 pensemibold;
draw ((x.p1+2*x.p)/3,y.p0)--((x.p1+2*x.p)/3,y.p2);
dOt z.p;

label.rt(btex $p$ etex, z.p);
label(btex separating plane etex rotated 90, ((x.p1+2*x.p)/3,(y.p0+y.p2)/2)+(-7,0));
whitelabel(btex $K$ etex, .5[z.p1,z.p3]);

endfig;

beginfig(3542) 
save u,p;
path p[];
u:=1cm;

z.p0=(1.5,.5)*u;
z.p1=(3.5,1.7)*u;
z.p2=(1.3,3)*u;
z.p3=(.3,1.2)*u;
z.p4=z.p+(-.2,0)*u;

p0=z.p0{1,0}..z.p1--z.p1..z.p2..z.p3..cycle;

hatchfill p0  withcolor (53, 1.5mm, -.5bp);
draw  p0 pensemibold;
draw (x.p1,y.p0)--(x.p1,y.p2);
dOt z.p1;

whitelabel.lft(btex $p$ etex, z.p1);
whitelabel(btex $K$ etex, .5[z.p1,z.p3]);
label(btex supporting plane etex rotated 90, (x.p1,(y.p0+y.p2)/2)+(7,0));

endfig;

end
