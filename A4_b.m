clc;
close all;
clear all;
t = 0:1/100:10-1/100;                     % Time vector
x = [1 0 -1 0];                           % Signal
y = fft(x);                               % Compute DFT of x
m = abs(y);                               % Magnitude
p = unwrap(angle(y));                     % Phase
f = (0:length(y)-1)*100/length(y);        % Frequency vector

subplot(4,1,1)
plot(f,m)
title('Magnitude')


subplot(4,1,2)
plot(f,p*180/pi)
title('Phase')


r=ifft(y);
t = unwrap(angle(r));                     % Phase
u = (0:length(r)-1)*100/length(r);        % Frequency vector
subplot(4,1,3)
plot(f,r)

rphase=unwrap(angle(r));
subplot(4,1,4)
plot(f,rphase*180/pi);
