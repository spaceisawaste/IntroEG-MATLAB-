%Plots theoretical and actual data on same plot
%Conor Nailos
%1/19/16

clear
clc
%% Varaibles
L=5;
x=linspace(0,6, 100);
y=cos((2*pi*x)/L);

xexp=[1 2 3 4 5];
Trial1=[.38,-.82,-.79,.28,.93];
Trial2=[.36,-.8,-.88,.45,1.1];
Trial3=[.22,-.67,-.94,.27,.98];
%% Output

plot(x,y, 'm', xexp, Trial1,'bx',xexp, Trial2, 'ro', xexp, Trial3, 'kd');
title('Theoretical and Experimental Data');
xlabel('X-Axis');
ylabel('Y-Axis');
legend('cos(2pix/L)','Trial1','Trial2', 'Trial3');