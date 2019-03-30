clear all;
close all;
clc;
t=-4:0.001:4;
ut=t>=0;
subplot(3,1,1);
plot(t,ut);
title("UNIT STEP");
ylim([-2 2])
grid on;

i=(t==0);
subplot(3,1,2);
plot(t,i);
title("UNIT IMPULSE");
ylim([-2 2])
grid on;

y = sign(t);
subplot(3,1,3);
plot(t,y)
title("SIGNUM FUNCTION");
ylim([-2 2])
grid on