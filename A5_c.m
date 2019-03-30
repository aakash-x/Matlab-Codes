x = [1,1,1,2,1,1];
h = [1,1,2,1];
xpad = [x zeros(1,length(h)-1) ];
hpad = [h zeros(1,length(x)-1)];
c=cconv(xpad,hpad);
  
display(c);
stem(1:length(c),c);
title('Circular convolution  Linear using  conv');