%Name:Junpeng Gai
%SID:40009896
n=0:9;
x=[0 1 1 1 0 0 0 0 0 0 ];
y=[0 0 0 0 0 0 0 0 0 0 ];
H=[1 0.25 0.25^2 0.25^3 0.25^4 0.25^5 0.25^6 0.25^7 0.25^8 0.25^9 ];
y(1)=x(1);
for i =2:9
   y(i)=x(i)+0.25*((y(i-1))); 
end
subplot(2,1,1)
stem(0:length(y)-1,y);
c = conv(x, H);
C=[0 0 0 0 0 0 0 0 0 0 ];
for i =1:10
   C(i)=c(i); 
end
subplot(2,1,2)
stem(0:length(C)-1,C);
