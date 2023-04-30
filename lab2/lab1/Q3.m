% name:junpeng gai
% sid :40009896
% section:ELEC342-XL
% date:2023/01/30
format long %long format
N = 1024;   %given in question
n = (0 : 4095 ) ;%required 4 periods so it's 4*1024
x = cos( (2*pi)/N * n );%Build the expression
stem(n,x);%plot the graph
s1=x(1)-x(1+1024);%calculate the difference between x[1] - x[1+1024] 
x = cos( (2*3.14)/N * n );%rewrite the function and change the pi to 3.14
s2=x(1)-x(1+1024);%calculate the difference between x[1] - x[1+1024] 

%Following part is for the question(iii)
n = ( 0 : 31) ;
x1 = cos(pi/4* n + pi/3);
hold on 
subplot(2,2,1)
stem(n,x1)%plot the x1 = cos(pi/4* n + pi/3) over 4 periods
title('plot for x1 = cos(pi/4* n + pi/3) over 4 periods')
x2 = cos(9*pi/4.*n + pi/3);
subplot(2,2,2)
stem(n,x2)%plot for x2 = cos(9*pi/4.*n + pi/3) over 4 periods
title('plot for x2 = cos(9*pi/4.*n + pi/3) over 4 periods')
subplot(2,2,3)%plot above 2 in the same figure
stem(n,x1)
stem(n,x2)
title('plot above 2 in the same figure ,so they are perfectly overlaped')
hold off


disp('The result when pi is constant, pi  is:')
disp(s1)%display the result for (1) x[1] - x[1+1024] 
disp('The result when pi is 3.14 is:')
disp(s2)%display the result for (2) x[1] - x[1+1024] when pi=3.14

