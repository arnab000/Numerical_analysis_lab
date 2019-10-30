a=[4,1,2,-1;
   3,6,-1,2;
   2,-1,5,-3;
   4,1,-3,-8];
 b=[2;-1;3;2];
 n=length(b);
 x=zeros(n,1);
 xnew=zeros(n,1);
 x(:)=0;
 iterlimit=100;
 tol=0.0000001;
 for k=1:iterlimit
   con=true;
   for i=1:n
     sum=0;
     for j=1:n
     if j~=i
       sum= sum+a(i,j)*x(j);
       
     endif
     
   endfor
   xnew(i)=(-1/a(i,i))*(sum-b(i));
   if abs( xnew(i)-x(i) )>tol
     con=false;
   endif
   
     
   endfor
   if con
     break;
   endif
   x=xnew;
 endfor
 disp("iter")
 k
 disp("sol")
 xnew
