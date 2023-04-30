%Name:Junpeng Gai
%SID:40009896

n=(0:9);%defin the domain
X=n;    %defin x[n]
Y=X.^2; %defin y[n]
Energy_x=0; %initialize the energy for x
Energy_y=0; %initialize the energy for y
for index = X % loop in X array
 Energy_x = Energy_x + index.^2; % sum to Energy_x
end

disp('The Energy of x[n] is')
disp(Energy_x)  %calculate the total energy

for index = Y % % loop in Y array
 Energy_y = Energy_y + index.^2; % sum to Energy_y
end

disp('The Energy of y[n] is')
disp(Energy_y)  %calculate the total energy

subplot(2,1,1) %first graph
hold on
title('x[n]')   %set the tittle
xlabel('n')     %set label for x
ylabel('x[n]')  %set label for y
stem(n,X);
hold off
subplot(2,1,2)  %second graph
hold on
title('y[n]')   %set the tittle
xlabel('n')     %set label for x
ylabel('y=x[n]^2')%set label for y
stem(n,Y);
hold off