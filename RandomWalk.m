%Conor Nailos
%2/9/16
%Random walk
clear;clc;clf
rng('shuffle')
%% Parameters
step=500;
x(1)=0;
y(1)=0;
animateOn=true;
r=1;
%% Plot
for(j=2:step)
    theta=rand()*2*pi;
    x(j)=x(j-1)+r*cos(theta);
    y(j)=y(j-1)+r*sin(theta);
end

for(j=1:step)
    plot(x(1:j),y(1:j),...
        x(j),y(j),'or',x(1),y(1),'black x')
    axis ([min(x) max(x) min(y) max(y)])
    axis square
    if animateOn
        drawnow
    end
end