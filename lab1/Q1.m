radius=[1:10];
VolumeSphere=(4/3)*pi*(radius).^3;
SurfaceSphere=4*pi*(radius).^2;

radius=[1:10];
VolumeSquare=(radius).^3;
SurfaceSquare=6*(radius).^2;

subplot(1,2,1);
title('Volume and surface area of a sphere')
xlabel('radius')
ylabel('Volume/Area')
hold on;
plot(radius,VolumeSphere,'red')
plot(radius,SurfaceSphere,'blue')
hold off;
subplot(1,2,2); 
hold on;
title('Volume and surface area of a Square')
xlabel('radius')
ylabel('Volume/Area')

plot(radius,VolumeSphere,'red')
plot(radius,SurfaceSphere,'blue')
hold off;