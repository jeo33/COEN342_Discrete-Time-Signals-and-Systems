format long
N = 1024
n = [ 0 : 4095 ] 
x = cos( (2*pi)/1024 * n )
stem(n,x)

s1=x(1)-x(1+1024)

N = 1024
n = [ 0 : 4095 ] 
x = cos( (2*3.14)/1024 * n )

s2=x(1)-x(1+1024)


n = [ 0 : 31 ] 
x1 = cos(pi/4* n + pi/3)
subplot(1,2,1)
stem(n,x1)
x2 = cos(9*pi/4.*n + pi/3)
subplot(1,2,2)
stem(n,x2)

hold on 
disp('The result when pi is constant, pi  is:')
disp(s1)
disp('The result when pi is 3.14 is:')
disp(s2)
hold off
