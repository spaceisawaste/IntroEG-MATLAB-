%Conor Nailos
%2.2.16
%Plot a decaying circle or something
clear;clc;clf
%% Paramters
nT=500; %# of time points
tSec=10; %time elapsed in seconds
T=1; %period of circular motion
R=1; %radius in meters(m)
tau=5; %decay time in seconds
omega=2*pi/T; %angular velovity radians/sec
vz=-0.2; %z velocity

%% Calculate
t=linspace(0,tSec,nT);
for i=1:nT
    rt=R*exp(-t(i)/tau);
    x(i)=rt*cos(omega*t(i));
    y(i)=rt*sin(omega*t(i));
    z(i)=vz*t(i);
    %disp([num2str(x(i)),' ',num2str(y(i))]);
end
zmin=min(z);
zmax=max(z);
%% Animate
for i=1:1:nT
    plot3(x(1:i),y(1:i),z(1:i),'b',...
        x(i),y(i),z(i),'ro')
    axis([-R R -R R zmin zmax])
    axis square
    %pause
    drawnow
end