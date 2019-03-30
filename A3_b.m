clc;
clear all;
f = [1 1 1 2 1 1]; 
g = [1 1 2 1]; 
clin = conv(f,g);
stem(clin)
%ylim([0 11])
title('Linear Convolution of x and y')
clin