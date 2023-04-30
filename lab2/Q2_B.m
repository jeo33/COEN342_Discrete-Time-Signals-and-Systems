%Name:Junpeng Gai
%SID:40009896


delay = 1; %delay


x= [0:1];                           %define input region[0:1]
y=x.^2;                             %define output
xa=3*x;                             %define input xa
ya=xa.^2;                           %define output ya
xb=3*x;                             %define input xb
yb=xb.^2;                           %define output yb
Yab=ya+yb;                          %define output yab=ya+yb
xab=xa+xb;                          %define input xab=xa+xb
yab=xab.^2;                         %define output yab=T(xab)

subplot(4,1,1)  %origional plot
hold on
title('y with out delay ,x= [0:1]') %set the tittle
xlabel('n')                         %set label for x
ylabel('y without delay')           %set label for y
stem(1:length(x),y)
hold off

subplot(4,1,2)
hold on
title('delay input(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay input(delay=1)')      %set label for y
x1=[zeros(1:delay) x];              %delay =1 for input
y1=x1.^2;
stem(1:length(x)+delay,y1)
hold off

subplot(4,1,3)
hold on
title('delay ouput(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay output(delay=1)')     %set label for y
y2=[0 x.^2];                        %delay output by 1
stem(1:length(x)+delay,y2)
hold off


subplot(4,1,4)                      %origional plot
hold on
title('output when Yab=ya+yb / yab=t(xab)=xa+xb')   %set the tittle
xlabel('n')                         %set label for x
ylabel('Yab')                       %set label for y
p1=stem(1:length(x),Yab);            %plot output Yab when Yab=ya+yb 
p2=stem(1:length(x),yab);            %plot output yab when yab=t(xab)=xa+xb 
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



figure %repeat the steps for x=[1:10];
x= [0:10];                           %define input region[0:10]
y=x.^2;                             %define output
xa=3*x;                             %define input xa
ya=xa.^2;                           %define output ya
xb=3*x;                             %define input xb
yb=xb.^2;                           %define output yb
Yab=ya+yb;                          %define output yab=ya+yb
xab=xa+xb;                          %define input xab=xa+xb
yab=xab.^2;                         %define output yab=T(xab)

subplot(4,1,1)  %origional plot
hold on
title('y with out delay ,x= [0:10]') %set the tittle
xlabel('n')                         %set label for x
ylabel('y without delay')           %set label for y
stem(1:length(x),y)
hold off

subplot(4,1,2)
hold on
title('delay input(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay input(delay=1)')      %set label for y
x1=[zeros(1:delay) x];              %delay =1 for input
y1=x1.^2;
stem(1:length(x)+delay,y1)
hold off

subplot(4,1,3)
hold on
title('delay ouput(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay output(delay=1)')     %set label for y
y2=[0 x.^2];                        %delay output by 1
stem(1:length(x)+delay,y2)
hold off


subplot(4,1,4)                      %origional plot
hold on
title('output when Yab=ya+yb / yab=t(xab)=xa+xb')   %set the tittle
xlabel('n')                         %set label for x
ylabel('Yab')                       %set label for y
p1=stem(1:length(x),Yab)  ;          %plot output Yab when Yab=ya+yb 
p2=stem(1:length(x),yab)  ;          %plot output yab when yab=t(xab)=xa+xb 
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
figure %repeat the steps for x==[1:100]
x= [0:100];                           %define input region[0:100]
y=x.^2;                             %define output
xa=3*x;                             %define input xa
ya=xa.^2;                           %define output ya
xb=3*x;                             %define input xb
yb=xb.^2;                           %define output yb
Yab=ya+yb;                          %define output yab=ya+yb
xab=xa+xb;                          %define input xab=xa+xb
yab=xab.^2;                         %define output yab=T(xab)

subplot(4,1,1)  %origional plot
hold on
title('y with out delay ,x= [0:100]') %set the tittle
xlabel('n')                         %set label for x
ylabel('y without delay')           %set label for y
stem(1:length(x),y)
hold off

subplot(4,1,2)
hold on
title('delay input(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay input(delay=1)')      %set label for y
x1=[zeros(1:delay) x];              %delay =1 for input
y1=x1.^2;
stem(1:length(x)+delay,y1)
hold off

subplot(4,1,3)
hold on
title('delay ouput(delay=1)')       %set the tittle
xlabel('n')                         %set label for x
ylabel('delay output(delay=1)')     %set label for y
y2=[0 x.^2];                        %delay output by 1
stem(1:length(x)+delay,y2)
hold off


subplot(4,1,4)                      %origional plot
hold on
title('output when Yab=ya+yb / yab=t(xab)=xa+xb')   %set the tittle
xlabel('n')                         %set label for x
ylabel('Yab')                       %set label for y
p1=stem(1:length(x),Yab) ;           %stem output Yab when Yab=ya+yb 
p2=stem(1:length(x),yab)  ;          %plot output yab when yab=t(xab)=xa+xb 
legend([p1 p2],' Yab=ya+yb','yab=t(xab)=xa+xb')
hold off



if(y1==y2)                          %compare the output for time invariant
    disp('with x= [0:100],time invariant ')
else
    
    disp('with x= [0:100],not time invariant ')
end


if(yab==Yab)                          %compare the output for linearty
    disp('Outputs are consistent with a linear system')
else
    
    disp('System is not linear ')
end
