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
  
  Y(i+1)=Y(i)+f(T(i),Y(i))*h;
  
endfor
Y(n);
plot(T,Y);