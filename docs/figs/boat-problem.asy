/*
  A picture of a labeled triangle for Problem 7 of section 7.7.
*/

unitsize(2cm);

label("A",(0,1),align=N);
draw((0,1)--(0,0),L=Label("$a$"));
label("B",(0,0),align=SW);
draw((0,0)--(2,0),L=Label("$b$",align=SE));
label("$x$",midpoint((0,0)--midpoint((0,0)--(2,0))),align=S);
label("C",(2,0),SE);
draw((1,0)--(0,1),L=Label("$\sqrt{a^2+x^2}$",align=E));
