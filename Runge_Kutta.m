f= @(x,y) x+y;
t0=0;
tend=1;
h=0.1;
y0=1;
n=(tend-t0)/h;
T=[t0:h:tend]
Y=zeros(n+1,1);
Y(1)=y0;
for i=1:n
  k1=f(T(i),Y(i))*h;
  k2=f(T(i)+h,Y(i)+k1)*h
  Y(i+1)=Y(i)+0.5*(k1+k2);
  
endfor
Y
plot(T,Y)