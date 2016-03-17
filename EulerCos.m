%Conor Nailos
%3/14/16
clear;clc;clf
%% Parameters
points=50;
x0=0;
xf=5*pi;
x=linspace(x0,xf,points);
euler(1)=0;
y=sin(x);
dx=(xf-x0)/points;
%% Calculations and Plot
for i=2:points
    euler(i)=euler(i-1)+cos(x(i-1))*dx;
end

hold on
plot(x,euler,'r');
plot(x,y,'b--');
axis square
hold off