clc;
clear all;
a = input('enter the amplitude\n');
t3 = 0.01;
t1 = 0;
t2 = 2*pi;
t4 = input('enter the phase\n');
f = input('enter the frequency\n');
 t = t1:t3:t2;
y = a*sin(t*f+t4);
plot(t,y);
