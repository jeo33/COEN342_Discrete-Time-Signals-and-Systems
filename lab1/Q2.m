Y1=zeros(1,10)
Y1(3)=1;
Y1(8)=1;


Y2=zeros(1,10)
Y2(3)=1;
Y2(8)=1;

Y3=zeros(1,10)
Y3(3:10)=1;


Y4=zeros(1,10)
Y4(4:10)=1;

x1=[0:9];
x2=[-5:4]
subplot(2,2,1);
stem(x2,Y1);
subplot(2,2,2);
stem(x1,Y2);
subplot(2,2,3);
stem(x2,Y3);
subplot(2,2,4);
stem(x1,Y4);
