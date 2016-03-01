%Conor Nailos
%2/18/26
%Plots a line using info from lineVals
clear;clc;clf
%% Parameters
x1=11;
x2=2;
y1=11;
y2=4;
[slope,yint]=lineVals(x1,x2,y1,y2);
if x1<x2
    x=linspace(x1-1,x2+1,100);
else
    x=linspace(x1+1,x2-1,100);
end
y=yint+slope.*x;
%% Plots it
plot (x1,y1,'ko',x2,y2,'ko',x,y);