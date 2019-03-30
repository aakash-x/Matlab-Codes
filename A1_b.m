clc;

close all;
clear all;
k=1;
for n=0:1:32
    if n<=32
   
        x(k)=exp(i*(3.14/8)*n);
 
    end
    k=k+1;
end
n=0:32;
subplot(6,2,1);
stem(n,x)
Zimage=imag(x);
subplot(6,2,2);
stem(n,Zimage)
Zreal=real(x);
subplot(6,2,3);
stem(n,Zreal)
subplot(6,2,4);
plot(n,Zreal,n,Zimage)

absolute = abs(x);
subplot(6,2,5);
stem(n,absolute)
theta =  angle(x);
subplot(6,2,6);
stem(n,theta)