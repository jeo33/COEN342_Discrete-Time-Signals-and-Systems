%Name:Junpeng Gai
%SID:40009896

n=(0:10);%defin the domain
Y=2*X;    %defin system
X1=sin( (2*pi /10 ) * n ); %defin X1
X2=cos( (2*pi /10 ) * n ); %defin X2
X3=X1+X2;                  %defin X3 is the linear combination fo X1 and X2
Y1=2*X1;                   %defin OUTPUT for X1
Y2=2*X2;                   %defin OUTPUT for X2
Y3=2*X3;                    %defin OUTPUT for X3
Y4=Y1+Y2;                   %defin linear combination of Y1 and Y2

if ( Y4 == Y3 )   %condition,if success display it's a lineat sys
disp( 'Outputs are consistent with a linear system')
else              %else it isn't.
disp( 'System is not linear')
end

subplot(4,2,1);  
hold on
title('X1')   %set the tittle
xlabel('n')     %set label for x
ylabel('X1')  %set label for y
stem(n,X1);     %plot input X1
hold off
subplot(4,2,2);
hold on
title('Y1=2*X1')   %set the tittle
xlabel('n')     %set label for x
ylabel('Y1')  %set label for y
stem(n,Y1);     %plot output Y1
hold off
subplot(4,2,3);
hold on
title('X2')   %set the tittle
xlabel('n')     %set label for x
ylabel('X2')  %set label for y
stem(n,X2);     %plot input X2
hold off
subplot(4,2,4);
hold on
title('Y2=2*X2')   %set the tittle
xlabel('n')     %set label for x
ylabel('Y2')  %set label for y
stem(n,Y2);     %plot output Y2
hold off
subplot(4,2,5);
hold on
title('X3')   %set the tittle
xlabel('n')     %set label for x
ylabel('X3')  %set label for y
stem(n,X3);     %plot input X3
hold off
subplot(4,2,6);
hold on
title('Y3=2*X3')   %set the tittle
xlabel('n')     %set label for x
ylabel('Y3')  %set label for y
stem(n,Y3);     %plot output Y3
hold off
subplot(4,2,7);
hold on
title('Y4=Y1+Y2')   %set the tittle
xlabel('n')     %set label for x
ylabel('Y4')  %set label for y
stem(n,Y4);     %plot output Y4,which is the left hand side
hold off
subplot(4,2,8);
hold on
title('Y3=2*X3')   %set the tittle
xlabel('n')     %set label for x
ylabel('Y3')  %set label for y
stem(n,Y3);     %plot output Y3,which is the right hand side
hold off

