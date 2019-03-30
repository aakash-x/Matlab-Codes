clc;
close all;
clear all;

k=1;
for n=-10:1:10
    if -3<=n && n<=3
        x(k)=2*n;
        
    else
       x(k)=0;
    end
    k=k+1;
end
n=-10:10;
stem(n,x)