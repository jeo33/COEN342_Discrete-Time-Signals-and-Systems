% name:junpeng gai
% sid :40009896
% section:ELEC342-XL
% date:2023/01/30
radius=(1:10);
%set the variable for spheres and square,
%because they have the same range
VolumeSphere=(4/3)*pi*(radius).^3;
SurfaceSphere=4*pi*(radius).^2;
%plug the variable to the sphere equations
VolumeSquare=(radius).^3;
SurfaceSquare=6*(radius).^2;
%plug the variable to the square equations
subplot(1,2,1);%place it in the first location of 2*2 grid
title('Volume and surface area of a sphere')%set the tittle
xlabel('radius')%set label for x
ylabel('Sphere Volume/Area')%set label for y
hold on; %hold on so we can plot all the plots in the same window
plot(radius,VolumeSphere,'red')%plot and set color to red.
plot(radius,SurfaceSphere,'blue')%plot and set color to blue.
hold off;
subplot(1,2,2); 
hold on;%hold on for next plot
title('Volume and surface area of a Square')
xlabel('length')%set label for x
ylabel('Square Volume/Area')%set label for y
plot(radius,VolumeSphere,'red')%plot and set color to red.
plot(radius,SurfaceSphere,'blue')%plot and set color to blue.
hold off; %all plots are done.