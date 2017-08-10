function x = infitewell(L,n)



x= 0:0.001:L;
y1=zeros(size(x));
A=sqrt(2/L);
for i = 1:1:length(x)
    if x(i) <=L 
      y2=(5*A)*sin(n*(3.14159*x)/L)+10;
        y1(i) =2   ;   
    end 
end 
plot(x,y1,x,y2);
ylim([2 20]);
line([0 0], ylim);
line([L L], ylim);

grid off;

s= sprintf('particle is a box where n=%d',n);
sprintf('the wave function is phi = %d *sin(%e*pi*x)/%f',A,n,L)
title(s)
axis off;

