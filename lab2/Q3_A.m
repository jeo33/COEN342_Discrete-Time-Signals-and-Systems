%Name:Junpeng Gai
%SID:40009896

n=-10:10;
% initialize all elements to zero.
x1=zeros(1,21); % define length of x1 -10:10 all together are 21

x2=zeros(1,21);  % define length of x2 -10:10 all together are 21

for i=0:10
    x1(i+11)=exp(-2.*abs(i)).*sin( (2*pi/36).*i);
    %for 0:10 which are the 11th to 21st element in this array;
    x2(11-i)=exp(-2.*abs(-i)).*sin( (2*pi/36).*(-i));
    %for -10:0 which are the 1st to 11th element in this array;
end 

x3=(x1+x2)/2; %get even component from above array=(1:21) correspoending to n=-10:10
x4=(x1-x2)/2 ;  %get even component from above array=(1:21) correspoending to n=-10:10
subplot(4,1,1)   %plot the x[n]
hold on
title('x[n]')   %set the tittle
xlabel('n')     %set label for x
ylabel('x[n]')  %set label for y
stem(n,x1)
hold off
subplot(4,1,2)  %plot the x[-n]
hold on
title('x[-n]')   %set the tittle
xlabel('n')     %set label for x
ylabel('x[-n]')  %set label for y
stem(n,x2)
hold off
subplot(4,1,3)  %plot the x[n](even)
hold on
title('x[n](even)')   %set the tittle
xlabel('n')     %set label for x
ylabel('x[n](even)')  %set label for y
stem(n,x3)
hold off
subplot(4,1,4)  %plot the x[n](odd)
hold on
title('x[n](odd)')   %set the tittle
xlabel('n')     %set label for x
ylabel('x[n](odd)')  %set label for y
stem(n,x4)
hold off

