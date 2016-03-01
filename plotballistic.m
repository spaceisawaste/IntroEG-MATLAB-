%Conor Nailos
%1/27/16
%Plots a ballistic funtcion
clear;clc
%% Paramters
xmin=0;
xmax=10;
nX=100;

g=9.8; %m/s^2 acceleration of gravity
x=11; %initial position
v=23; %initial velocity
t=linspace(xmin,xmax,nX);

%% Function
y=x+v.*t-(0.5*g*(t.^2));

%% Plot

plot(t,y);
title(['h(t)=',num2str(x),'+',num2str(v),'t-.5gt^2']);
xlabel('t');
ylabel('h(t)');