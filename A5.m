clc;
close all;
clear all;

x = [1,1,1,2,1,1];
h = [1,1,2,1];
n= max(length(x),length(h));
x = [x zeros(1,n-length(x)) ];
h = [h zeros(1,n-length(h))];

y=zeros(1,n);
for i=0:n-1
  for j = 0:n-1
      if(i<n-1)
      k = mod((i-j),n);
      y(i+1) = y(i+1) + x(j+1)*h(k+1);
      end
  end
end
display(y);

x = [1,1,1,2,1,1];
h = [1,1,2,1];
xpad = [x zeros(1,length(h)-1) ];
hpad = [h zeros(1,length(x)-1)];
c=cconv(xpad,hpad);
  
display(c);


x = [1,1,1,2,1,1];
h = [1,1,2,1];
xpad = [x zeros(1,length(h)-1) ];
hpad = [h zeros(1,length(x)-1)];
c=conv(xpad,hpad);
  
display(c);


