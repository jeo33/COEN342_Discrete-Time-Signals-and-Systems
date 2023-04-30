%Name:Junpeng gai
%SID:40009896
mycomplex = [ 3 + i*3 2 + i*0.4 1 + i*0.4 ];
w=[0 1 3*pi];
subplot(2,1,1)
hold on
title('without calculating Magnitude')
xlabel('frequency')
ylabel('X[w]')
plot(w,mycomplex);
hold off
mag_of_mycomplex=abs(mycomplex)
subplot(2,1,2)
hold on
title('Magnitude')
xlabel('frequency')
ylabel('|X[w]|')
plot(w,mag_of_mycomplex);
hold off


