x=zeros([1 21]);
x(9)=1;
x(10)=1;
x(11)=1;
x(12)=1;
x(13)=1;
n=-10:10;
stem(n,x);
w=-pi:0.1:pi;
length_w=length(w);

length_n=length(n);
sum=zeros([1 length_w]);
subplot(1,2,1)
hold on
stem(n,x)
title('Input signal')
xlabel('n/time')
ylabel('x[n]')
hold off
for frequency = 1:length_w
    
     for index = 1:length_n
     
     sum(frequency) = sum(frequency) + (x(index) * exp((-j*w(frequency)*n(index ))));
     
     end 
end

subplot(1,2,2)
hold on
title('DTFT')
xlabel('w/frequency')
ylabel('X(w)')
sum=abs(sum);
plot(w,sum)
hold off




