%Conor Nailos
%3/14/16
clear;clc;clf
%% Parameters
points=100;
pmax=10000;
t=0;
tf=20;
x=linspace(t,tf,points);
euler(1)=800;
G=.00005;
dx=(tf-t)/points;
%% Calculations and Plot
for i=2:points
    euler(i)=euler(i-1)+G*(pmax-euler(i-1))*euler(i-1)*dx;
end

plot(x,euler,'r');
axis([0,20,0,11000]);