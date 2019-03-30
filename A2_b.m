clc;
close all;
clear all;

t = -1:0.001:1;
y1  = square(2*pi*50*t,25);
y2  = square(2*pi*50*t,50);
y3  = square(2*pi*50*t,75);

subplot(3,2,1)
plot(t,y1);
ylim([-1 1]);
subplot(3,2,2)
stem(t,y1);
subplot(3,2,3)
plot(t,y2);
subplot(3,2,4)
stem(t,y2);
subplot(3,2,5)
plot(t,y3);
subplot(3,2,6)
stem(t,y3);

grid on