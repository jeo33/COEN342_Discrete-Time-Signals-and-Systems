%Name:Junpeng Gai
%SID:40009896


delay = 1; %delay
n= [0:1];
impulse = n==0;
                          %define input region[0:1]
x=n;
y=2.*x+5.*impulse;  

xa=3*x;                             %define input xa
ya=2.*xa+5.*impulse;;                           %define output ya
xb=2*x;                             %define input xb
yb=2.*xb+5.*impulse;                          %define output yb
Yab=ya+yb;                          %define output yab=ya+yb
xab=xa+xb;                          %define input xab=xa+xb
yab=2.*xab+5.*impulse;                         %define output yab=T(xab)

subplot(4,1,1)  %origional plot
hold on
title('y with out delay ,x= [0:1]') %set the tittle
xlabel('n')                         %set label for x
ylabel('y without delay')           %set label for y
stem(0:length(n)-1,y)
hold off


subplot(4,1,2)
hold on
title('delay input(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay input(delay=1)')      %set label for y
n1=[zeros(1:delay) n];              %delay =1 for input
x1=n1;
impulse1=[impulse 0];
y1=2.*x1+5.*impulse1;
stem(0:length(x)-1+delay,y1)
hold off



subplot(4,1,3)
hold on
title('delay input(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay input(delay=1)')      %set label for y
y2=[zeros(1,delay) y]
stem(0:length(x)-1+delay,y2)
hold off


subplot(4,1,4)                      %origional plot
hold on
title('output when Yab=ya+yb / yab=t(xab)=xa+xb')   %set the tittle
xlabel('n')                         %set label for x
ylabel('Yab')                       %set label for y
p1=stem(0:length(x)-1,Yab);            %plot output Yab when Yab=ya+yb 
p2=stem(0:length(x)-1,yab);            %plot output yab when yab=t(xab)=xa+xb 
legend([p1 p2],' Yab=ya+yb','yab=t(xab)=xa+xb')
hold off

if(y1==y2)                          %compare the output for time invariant
    disp('with x= [0:1],time invariant ')
else
    
    disp('with x= [0:1],not time invariant ')
end


if(yab==Yab)                          %compare the output for linearty
    disp('Outputs are consistent with a linear system')
else
    
    disp('System is not linear ')
end


figure 
n= [0:10];
impulse = n==0;
                          %define input region[0:1]
x=n;
y=2.*x+5.*impulse;  

xa=3*x;                             %define input xa
ya=2.*xa+5.*impulse;;                           %define output ya
xb=2*x;                             %define input xb
yb=2.*xb+5.*impulse;                          %define output yb
Yab=ya+yb;                          %define output yab=ya+yb
xab=xa+xb;                          %define input xab=xa+xb
yab=2.*xab+5.*impulse;                         %define output yab=T(xab)

subplot(4,1,1)  %origional plot
hold on
title('y with out delay ,x= [0:10]') %set the tittle
xlabel('n')                         %set label for x
ylabel('y without delay')           %set label for y
stem(0:length(n)-1,y)
hold off


subplot(4,1,2)
hold on
title('delay input(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay input(delay=1)')      %set label for y
n1=[zeros(1:delay) n];              %delay =1 for input
x1=n1;
impulse1=[impulse 0];
y1=2.*x1+5.*impulse1;
stem(0:length(x)-1+delay,y1)
hold off



subplot(4,1,3)
hold on
title('delay input(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay input(delay=1)')      %set label for y
y2=[zeros(1,delay) y]
stem(0:length(x)-1+delay,y2)
hold off


subplot(4,1,4)                      %origional plot
hold on
title('output when Yab=ya+yb / yab=t(xab)=xa+xb')   %set the tittle
xlabel('n')                         %set label for x
ylabel('Yab')                       %set label for y
p1=stem(0:length(x)-1,Yab);            %plot output Yab when Yab=ya+yb 
p2=stem(0:length(x)-1,yab);            %plot output yab when yab=t(xab)=xa+xb 
legend([p1 p2],' Yab=ya+yb','yab=t(xab)=xa+xb')
hold off

if(y1==y2)                          %compare the output for time invariant
    disp('with x= [0:10],time invariant ')
else
    
    disp('with x= [0:10],not time invariant ')
end


if(yab==Yab)                          %compare the output for linearty
    disp('Outputs are consistent with a linear system')
else
    
    disp('System is not linear ')
end




