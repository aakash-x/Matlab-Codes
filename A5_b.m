clc;
close all;
clear all;
x = [1,1,1,2,1,1];
h = [1,1,2,1];
xpad = [x zeros(1,length(h)-1) ];
hpad = [h zeros(1,length(x)-1)];
c=cconv(xpad,hpad);
stem(1:length(c),c);
title('Linear convolution using Circular conv');
  
display(c);

