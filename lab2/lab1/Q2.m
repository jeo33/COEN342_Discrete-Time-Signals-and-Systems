% name:junpeng gai
% sid :40009896
% section:ELEC342-XL
% date:2023/01/30       

Y1=zeros(1,10);%first set all to 0
Y1(3)=1;%first select the 3rd position
Y1(8)=1;%second select the 8th position

Y2=zeros(1,10); % I chose the first 3 are 1,which means n=3
Y2(4:10)=1;% the positions after n=3 are 0;

x1=(0:9); %range from 0 to 9
x2=(-5:4);%range from -5 to 4
subplot(2,2,1);%place plot at 1st position
stem(x2,Y1);%plot 2impulse in domain x2
title('2 ones x varies from -5 to 4');
subplot(2,2,2);%place plot at 2ed position
stem(x1,Y1);%plot 2impulse in domain x1
title('2 ones x varies from -5 to 4');
subplot(2,2,3);%place plot at 3rd position
stem(x2,Y2);%plot first in domain x2
title('First 3 are 0 when x varies from 0 to 9');
subplot(2,2,4);%place plot at 4th position
stem(x1,Y2);%plot 2impulse in domain x1
title('First 3 are 0 when x varies from 0 to 9');
