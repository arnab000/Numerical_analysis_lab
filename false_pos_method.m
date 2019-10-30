f= @(x) x^3-2*x^2-4;
a=2;
b=3;
Eps=1e-6;
if f(a)*f(b)>=0
  printf("Single root doesn't exist between %f and %f.\n",a,b);
  exit(1);
endif
sol=a;
while abs(b-a)>=Eps
  sol=(a*f(b)-b*f(a))/(f(b)-f(a));
  if f(sol)==0
    break;
  elseif (f(sol)*f(a))<0
    b=sol;
  else
    a=sol;
  end
  
endwhile
printf("The appox root is %f\n",sol); 
