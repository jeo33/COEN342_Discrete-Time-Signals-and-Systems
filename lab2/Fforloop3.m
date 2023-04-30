%Name:Junpeng Gai
%SID:40009896

%loop example 3
clear;
x = [ 1 : 5 ]; % intialize the x array
y = x .^2 ; % compute the squares of the elements in the
 % x array
sum = 0;
for index = y % loop through every element in the y array
 sum = sum + index; % and add each element to sum
end
disp('The sum is')
disp(sum)