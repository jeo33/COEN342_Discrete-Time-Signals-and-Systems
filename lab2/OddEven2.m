%Name:Junpeng Gai
%SID:40009896
% T. Obuchowicz
% determines if a signal x[n] = function(n)
% is even or odd
% Tue Apr 24 14:14:13 EDT 2012
% x[n] is EVEN is x[-n] = x[n]
% x[n] is ODD if x[-n] = -x[n]
% define n over the interval -4 to +4
n = [-4 : 4 ]
% define x1[n]
x1 = ones(1,9)
x1(1:4) = 0

% define x2[n] = x1[-n]
x2 = zeros(1,9)
% manually assign the values since
% MATLAB does not allow for negative array indices
% what we want to do is:
% x2[n] = x1[-n] for n in -4, -3, -2, -1, 0, 1 ,2 3, 4
% x2[-4] = x2[4]
% x2[-3] = x1[3]
% x2[-2] = x1[2]
% etc
% x2[1] = x1[-1]
% x2[2] = x1[-2]
% x2[3] = x1[-3]
% x2[4] = x1[-4]
% but MATLAB does not allow for negative array indices so we
% do the following instead:
 for index = 1 : 9
 x2(index) = x1(10 -index);
 end

% plot the two signals
figure(1)
subplot(2,1,1)
stem(n,x1)
ylabel(' x[n] ' )
xlabel(' n ' )
subplot(2,1,2)
stem(n,x2)
ylabel(' x[-n] ')
xlabel(' n ' )
print -dpdf even_odd_components1.ps
% check for even/odd
% since working with integers values, we can compare for direct
%equality

if ( x2 == x1 )
 disp('EVEN')
elseif ( x2 == (-x1) )
 disp('ODD')
else
 disp('NEITHER EVEN NOR ODD')
end

% decompose the signal into its
% even and odd components
% using the definitions
% even component = (1/2) * ( x[n] + x[-n])
% odd component = (1/2) * ( x[n] - x[-n])
even_comp = (1/2) * ( x1 + x2 );
odd_comp = (1/2) * ( x1 - x2 );
% plot the even and odd components as a
% visual verification that the even component is indeed even
% and the odd component is indeed odd
figure(2)
subplot(2,1,1)
stem(n, even_comp)
xlabel(' n ' )
ylabel(' Even component of x[n] ')
subplot(2,1,2)
stem(n, odd_comp)
xlabel(' n ' )
ylabel(' Odd component of x[n] ')
print -dpdf even_odd_components2.ps