%Conor Nailos
%2.2.16
%Plot an lisasajous curve or something
clear;clc;clf
%% Paramters
nT=300; %# of time points
tSec=10; %time elapsed in seconds
T=1; %period of circular motion
R=3; %radius in meters(m)
omega=2*pi/T;
phi=4; %idk what this is
a=2; %yes
b=5; %also yes
%animateOn=true; %controls animation
%% Calculate
t=linspace(0,tSec,nT);
for i=1:nT
    x(i)=R*cos(a*omega*t(i));
    y(i)=R*sin(b*omega*t(i)+phi);
end

%% Animate
answer=input('Would you like to animate this graph? y/n ','s');

if(answer=='y')
    for c=1:1:nT %it goes slow if you increment by 1
     plot(x(1:c),y(1:c),'b',...
        x(c),y(c),'ro')
     axis(1.2*[-R R -R R ])
     axis square
     drawnow
    end
else
     for c=1:1:nT
     plot(x(1:c),y(1:c),'b',...
        x(c),y(c),'ro')
     axis(1.2*[-R R -R R])
     axis square
     end
end