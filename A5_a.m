clc;
close all;
clear all;
x = [1,1,1,2,1,1];
h = [1,1,2,1];
n= max(length(x),length(h));
x = [x zeros(1,n-length(x)) ];
h = [h zeros(1,n-length(h))];

y=zeros(1,n);
for i =0:n-1
  for j = 0:n-1
      k = mod((i-j),n);
      if(i<n-1)
      y(i+1) = y(i+1) + x(j+1)*h((k+1));
      end
  end
end
t=1:length(y);
stem(t,y);
y




