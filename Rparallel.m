%Calculates resistance for a circuit
%Conor Nailos
%1/15/16
clear;
clc;
%% Variables
r1a=100; %killo-ohm
r2a=100; %killo-ohm
r1b=100; %killo-ohm
r2b=.001; %killo-ohm
r3a=100; %killo-ohm
r3b=10000; %killo-ohm
%% Calculations
calcA=1/((1/r1a)+(1/r1b));
calcB=1/((1/r2a)+(1/r2b));
calcC=1/((1/r3a)+(1/r3b));

%% Outputs
disp(['A. ', num2str(calcA), ' Kilo Ohms']);
disp(['B. ', num2str(calcB), ' Kilo Ohms']);
disp(['C. ', num2str(calcC), ' Kilo Ohms']);