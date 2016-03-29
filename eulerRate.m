%Conor Nailos
%3/24/16
%Uses the Euler Method to find the approximate solution for the
%equation:  dy/dx = 3x^2 - 20x + 10  with y(0) = 0

clear;clc
%% Set Parameters
xmin = 0;
xmax = 10;
Nx = 100;
%% Initialize Vectors
x = linspace(xmin,xmax,Nx);
dx = x(2) - x(1);
y = zeros(1,Nx);
y(1) = 0;
%% Euler Method
for iy = 1:Nx-1;
    y(iy+1) = y(iy) + dx*(3*(x(iy)).^2 - 20*x(iy) + 10);
end
%% Plot
y_real = x.^3 - 10*x.^2 + 10*x;
plot(x,y,'r--',...
    x,y_real,'b')
axis([xmin xmax 1.5*min(y_real) 1.5*max(y_real)])
xlabel('x')
ylabel('y')
title('Plot of dy/dx = 3x^2 - 20x + 10')
legend('Euler Method','Exact','Location','SouthEast')
grid on
