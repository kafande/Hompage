//================ Format =================
settings.outformat = "pdf";
settings.prc = false;  
settings.render = 0;   
import three;
import bsp;
size(5cm, 0);
currentprojection=orthographic((5,4,3));
//================ Drawing ===================
path3 pl =plane((0,-2,0),(-2,0,0),(0,1,0));
path3 pl1=rotate(-28,X)*pl;
path3 pl2=rotate(-56,X)*pl;
path3 pl3=shift(-0.3*normal(pl1))*pl1;

triple[] asd=intersectionpoints(pl2,pl3);
triple A=asd[1];
triple B=asd[0];


triple[] asf=intersectionpoints(pl,pl2);
triple C=asf[1];
triple D=asf[0];


triple[] asg=intersectionpoints(pl,pl3);
triple E=asg[1];
triple F=asg[0];


face[] faces;

filldraw(faces.push(pl),project(pl),  white+opacity(0.6));
filldraw(faces.push(pl1),project(pl1),white+opacity(0.6));
filldraw(faces.push(pl2),project(pl2),white+opacity(0.6));
filldraw(faces.push(pl3),project(pl3),white+opacity(0.6));
add(faces);


draw(B--A);
draw(C--D);
draw(E--F);

dot(A,red); 
dot(B,red); 
dot(C,red); 
dot(D,red); 
dot(E,red); 
dot(F,red); 
