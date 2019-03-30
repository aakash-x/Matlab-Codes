clc;
close all;
clear all;
k=1;
j=1;
for n=-50:1:50
    x(k)=(0.8).^n;
    y(j)=(0.8).^(-n);
    k=k+1;
    j=j+1;
end
n=-50:50;
subplot(2,2,1)
stem(n,x);
subplot(2,2,2)
stem(n,y);

even=(1/2)*(x+y);
subplot(2,2,3)
stem(n,even);

odd=(1/2)*(x-y);
subplot(2,2,4)
stem(n,odd);