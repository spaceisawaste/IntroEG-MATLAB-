%Conor Nailos
%1/27/16
%Plots a logistic funtcion
clear;clc
%% Parameters
yinit=1;
a=4;
y=linspace(0,100,100);
x=-((y-yinit)/a);

%% Function
p=1./(1+exp(x));

%% Plot
plot(p,y);
title('Plot of P(y)');
xlabel('P(y)');
ylabel('y');