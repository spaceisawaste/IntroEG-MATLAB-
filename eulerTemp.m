%Conor Nailos
%3/24/16
%Uses improved Euler method to approximate dy/dt=k(y-T)
clear;clc

%% Set Parameters
k = -0.028;
T = 60;
tmin = 0;
tmax = 180;
Nt = 100;

%% Initialize Vectors
t = linspace(tmin,tmax,Nt);
dt = t(2) - t(1);
y = zeros(1,Nt);
y(1) = 100;

%% Euler Method

for iy = 1:Nt-1;
    y(iy+1) = (2*y(iy) + y(iy)*dt*k - 2*k*T*dt)/(2-k*dt);
end

%% Plot
plot(t,y,'r')
xlabel('Time (minutes)')
ylabel('Temperature (Fahrenheit)')
title('Plot of dy/dt = k(y-T)')
grid on
