f= @(x) x^3-7*x^2+10;
F= @(x) 3*x^2-14*x;

Xpast = 1;
Ea= 1;
Es = 0.00100;
while Es<Ea
  Xnext = Xpast-(f(Xpast)/F(Xpast));
  Ea=(Xnext-Xpast)/Xnext;
  Xpast=Xnext;
endwhile
printf("The appox root is %f\n",Xnext);
