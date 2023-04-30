%Name:Junpeng Gai
%SID:40009896

n=-5:5;

x1=(-1).^(n-1); % define x[n] for -5:5

x2=(-1).^(-n-1);  % define x[-n] for -5:5



x3=(x1+x2)/2; %get even component from above
x4=(x1-x2)/2 ;  %get even component from above 
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

