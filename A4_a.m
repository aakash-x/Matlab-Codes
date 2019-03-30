clc;
close all;
clear all;
n=input('Enter the no. of element in sequence\n');
disp('Enter the sequence n: ');

for c=1:n
xn(c) = input(''); 
end
ln = length(xn); 
xk = zeros(1,ln); 
ixk = zeros(1,ln); 

%DFT 
for k=0:ln-1 
for n=0:ln-1 
xk(k+1)=xk(k+1) + (xn(n+1)*exp((-1i)*2*pi*k*n/ln)); 
end 
end 

t = 0:ln-1; 
subplot(2,2,1) 
stem(t,xn) 
title('Input sequence') 
ylabel('Amplitude') 
xlabel('Time index'); 

magnitude = abs(xk); 
phase = unwrap(angle(xk)); 
f = (0:ln-1)*100/ln; % Frequency vector 
subplot(2,2,2) 
stem(t,magnitude) 
title('Magnitude') 
xlabel('x(k)') 
ylabel('Magnitude(DFT)'); 

subplot(2,2,3) 
plot(f,phase*180/pi) 
title('Phase') 
xlabel('Frequency') 
ylabel('Phase(DFT)'); 

%IDFT 
for n=0:ln-1 
for k=0:ln-1 
ixk(n+1)=ixk(n+1) + (xk(k+1)*exp((1i)*2*pi*k*n/ln)); 
end
end
ixk